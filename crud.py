from sqlalchemy import select
from sqlalchemy.orm import Session

from models import Student
from schemas import StudentCreate, StudentUpdate


def get_all_students(db: Session) -> list[Student]:
    return list(db.scalars(select(Student).order_by(Student.id)).all())


def get_student_by_id(db: Session, student_id: int) -> Student | None:
    return db.get(Student, student_id)


def get_student_by_email(db: Session, email: str) -> Student | None:
    return db.scalar(select(Student).where(Student.email == email))


def create_student(db: Session, student_data: StudentCreate) -> Student:
    student = Student(**student_data.model_dump())
    db.add(student)
    db.commit()
    db.refresh(student)
    return student


def update_student(
    db: Session,
    student: Student,
    student_data: StudentUpdate,
) -> Student:
    update_data = student_data.model_dump(exclude_unset=True)

    for field, value in update_data.items():
        setattr(student, field, value)

    db.commit()
    db.refresh(student)
    return student


def delete_student(db: Session, student: Student) -> None:
    db.delete(student)
    db.commit()

