from datetime import date

from sqlalchemy.orm import Session

from crud import get_student_by_email
from models import Student

SEED_STUDENTS = [
    {
        "first_name": "Aarav",
        "last_name": "Sharma",
        "email": "aarav.sharma@example.com",
        "phone": "9876543210",
        "date_of_birth": date(2003, 4, 15),
        "gender": "Male",
        "course": "Computer Science",
        "enrollment_date": date(2023, 7, 1),
        "status": "Active",
    },
    {
        "first_name": "Priya",
        "last_name": "Nair",
        "email": "priya.nair@example.com",
        "phone": "9876543211",
        "date_of_birth": date(2002, 9, 22),
        "gender": "Female",
        "course": "Information Technology",
        "enrollment_date": date(2022, 7, 10),
        "status": "Active",
    },
    {
        "first_name": "Rahul",
        "last_name": "Verma",
        "email": "rahul.verma@example.com",
        "phone": "9876543212",
        "date_of_birth": date(2001, 12, 5),
        "gender": "Male",
        "course": "Mechanical Engineering",
        "enrollment_date": date(2021, 8, 2),
        "status": "Active",
    },
    {
        "first_name": "Sneha",
        "last_name": "Iyer",
        "email": "sneha.iyer@example.com",
        "phone": "9876543213",
        "date_of_birth": date(2003, 2, 18),
        "gender": "Female",
        "course": "Electronics",
        "enrollment_date": date(2023, 7, 3),
        "status": "Active",
    },
    {
        "first_name": "Arjun",
        "last_name": "Patel",
        "email": "arjun.patel@example.com",
        "phone": "9876543214",
        "date_of_birth": date(2002, 6, 30),
        "gender": "Male",
        "course": "Civil Engineering",
        "enrollment_date": date(2022, 8, 1),
        "status": "Inactive",
    },
    {
        "first_name": "Meera",
        "last_name": "Rao",
        "email": "meera.rao@example.com",
        "phone": "9876543215",
        "date_of_birth": date(2004, 1, 9),
        "gender": "Female",
        "course": "Computer Science",
        "enrollment_date": date(2024, 7, 1),
        "status": "Active",
    },
    {
        "first_name": "Kiran",
        "last_name": "Das",
        "email": "kiran.das@example.com",
        "phone": "9876543216",
        "date_of_birth": date(2003, 11, 14),
        "gender": "Male",
        "course": "Data Science",
        "enrollment_date": date(2023, 7, 15),
        "status": "Active",
    },
    {
        "first_name": "Ananya",
        "last_name": "Menon",
        "email": "ananya.menon@example.com",
        "phone": "9876543217",
        "date_of_birth": date(2000, 5, 25),
        "gender": "Female",
        "course": "Information Technology",
        "enrollment_date": date(2020, 8, 5),
        "status": "Graduated",
    },
    {
        "first_name": "Vikram",
        "last_name": "Singh",
        "email": "vikram.singh@example.com",
        "phone": "9876543218",
        "date_of_birth": date(2002, 3, 11),
        "gender": "Male",
        "course": "Electronics",
        "enrollment_date": date(2022, 7, 12),
        "status": "Active",
    },
    {
        "first_name": "Fatima",
        "last_name": "Khan",
        "email": "fatima.khan@example.com",
        "phone": "9876543219",
        "date_of_birth": date(2003, 8, 19),
        "gender": "Female",
        "course": "Data Science",
        "enrollment_date": date(2023, 8, 1),
        "status": "Active",
    },
]


def seed_students(db: Session) -> int:
    created_count = 0

    for student_data in SEED_STUDENTS:
        existing_student = get_student_by_email(db, student_data["email"])
        if existing_student is not None:
            continue

        db.add(Student(**student_data))
        created_count += 1

    if created_count:
        db.commit()

    return created_count

