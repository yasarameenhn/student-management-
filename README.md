# Student Management System API

Backend API for a Student Management System built with FastAPI, SQLAlchemy, and SQLite.

## Current Phase

Backend implementation complete.

The backend includes SQLite database setup, SQLAlchemy model, Pydantic schemas, CRUD routes, CORS, and 10 seeded student records.

## Tech Stack

- Python
- FastAPI
- SQLAlchemy
- SQLite
- Pydantic
- Uv

## Project Structure

```text
.
├── .env
├── .env_example
├── .gitignore
├── LICENSE
├── README.md
├── crud.py
├── database.py
├── main.py
├── models.py
├── requirement.txt
├── requirement.prod.txt
├── routes.py
├── schemas.py
└── seed.py
```

## Setup

Create and activate a virtual environment:

```bash
python -m venv env
```

Install development dependencies:

```bash
env\Scripts\python -m pip install -r requirement.txt
```

Run the backend:

```bash
uvicorn main:app --reload
```

Open the API docs:

```text
http://localhost:8000/docs
```

## API Status

The backend includes the following endpoints:

- `GET /`
- `GET /students`
- `GET /students/{student_id}`
- `POST /students`
- `PUT /students/{student_id}`
- `DELETE /students/{student_id}`

## Seed Data

The database is seeded with 10 student records when the application starts.

The seed process is idempotent, so the same seed students are not inserted again if they already exist.

## Frontend CORS

The backend allows requests from:

```text
http://localhost:5173
```
