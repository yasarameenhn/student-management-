from typing import Annotated

from fastapi import APIRouter, Depends, HTTPException, Response, status
from sqlalchemy.orm import Session

import crud
from database import get_db
from schemas import StudentCreate, StudentResponse, StudentUpdate

router = APIRouter(prefix="/students", tags=["Students"])

DbSession = Annotated[Session, Depends(get_db)]


@router.get("", response_model=list[StudentResponse])
def list_students(db: DbSession):
    return crud.get_all_students(db)


@router.get("/{student_id}", response_model=StudentResponse)
def read_student(student_id: int, db: DbSession):
    student = crud.get_student_by_id(db, student_id)
    if student is None:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Student not found",
        )

    return student


@router.post("", response_model=StudentResponse, status_code=status.HTTP_201_CREATED)
def add_student(student_data: StudentCreate, db: DbSession):
    existing_student = crud.get_student_by_email(db, str(student_data.email))
    if existing_student is not None:
        raise HTTPException(
            status_code=status.HTTP_400_BAD_REQUEST,
            detail="Student email already exists",
        )

    return crud.create_student(db, student_data)


@router.put("/{student_id}", response_model=StudentResponse)
def edit_student(student_id: int, student_data: StudentUpdate, db: DbSession):
    student = crud.get_student_by_id(db, student_id)
    if student is None:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Student not found",
        )

    if student_data.email is not None:
        existing_student = crud.get_student_by_email(db, str(student_data.email))
        if existing_student is not None and existing_student.id != student_id:
            raise HTTPException(
                status_code=status.HTTP_400_BAD_REQUEST,
                detail="Student email already exists",
            )

    return crud.update_student(db, student, student_data)


@router.delete("/{student_id}", status_code=status.HTTP_204_NO_CONTENT)
def remove_student(student_id: int, db: DbSession):
    student = crud.get_student_by_id(db, student_id)
    if student is None:
        raise HTTPException(
            status_code=status.HTTP_404_NOT_FOUND,
            detail="Student not found",
        )

    crud.delete_student(db, student)
    return Response(status_code=status.HTTP_204_NO_CONTENT)

