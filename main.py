import os

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

import models
from database import SessionLocal, create_database_tables
from routes import router as students_router
from seed import seed_students

configured_frontend_origin = os.getenv("FRONTEND_ORIGIN", "http://localhost:5173")
allowed_frontend_origins = sorted(
    {
        configured_frontend_origin,
        "http://localhost:5173",
        "http://127.0.0.1:5173",
    }
)

app = FastAPI(
    title="Student Management System API",
    description="Backend API for managing student records.",
    version="0.1.0",
)

app.add_middleware(
    CORSMiddleware,
    allow_origins=allowed_frontend_origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

app.include_router(students_router)


@app.on_event("startup")
def on_startup():
    _ = models.Student
    create_database_tables()
    db = SessionLocal()
    try:
        seed_students(db)
    finally:
        db.close()


@app.get("/")
def read_root():
    return {
        "message": "Student Management System API",
        "status": "running",
    }
