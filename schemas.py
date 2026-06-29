from datetime import date
from typing import Literal

from pydantic import BaseModel, ConfigDict, EmailStr, Field

StudentStatus = Literal["Active", "Inactive", "Graduated"]


class StudentBase(BaseModel):
    first_name: str = Field(..., min_length=1, max_length=50)
    last_name: str = Field(..., min_length=1, max_length=50)
    email: EmailStr
    phone: str = Field(..., min_length=7, max_length=20)
    date_of_birth: date
    gender: str = Field(..., min_length=1, max_length=20)
    course: str = Field(..., min_length=1, max_length=100)
    enrollment_date: date
    status: StudentStatus


class StudentCreate(StudentBase):
    pass


class StudentUpdate(BaseModel):
    first_name: str | None = Field(default=None, min_length=1, max_length=50)
    last_name: str | None = Field(default=None, min_length=1, max_length=50)
    email: EmailStr | None = None
    phone: str | None = Field(default=None, min_length=7, max_length=20)
    date_of_birth: date | None = None
    gender: str | None = Field(default=None, min_length=1, max_length=20)
    course: str | None = Field(default=None, min_length=1, max_length=100)
    enrollment_date: date | None = None
    status: StudentStatus | None = None


class StudentResponse(StudentBase):
    id: int

    model_config = ConfigDict(from_attributes=True)

