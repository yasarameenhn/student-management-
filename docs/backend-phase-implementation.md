# Backend Phase Implementation Plan

## Backend Overview

The backend will be built with FastAPI and will manage all student CRUD operations.

It will be responsible for:

- Connecting to the SQLite database
- Managing the `students` table through SQLAlchemy
- Providing REST API endpoints for the React frontend
- Validating request and response data
- Seeding the database with 10 initial student records

## Backend Technology Stack

- Python
- FastAPI
- SQLAlchemy
- SQLite
- Pydantic
- Uvicorn

## Backend Folder Plan

Planned backend folder structure:

```text
backend/
  app/
    main.py
    database.py
    models.py
    schemas.py
    crud.py
    seed.py
  requirements.txt
```

## Student Data Model

The backend will manage student records with the following fields:

- `id`
- `first_name`
- `last_name`
- `email`
- `phone`
- `date_of_birth`
- `gender`
- `course`
- `enrollment_date`
- `status`

## Phase 1 - Backend Setup

### Goal
bd
Prepare the backend project structure and required Python dependencies.

### Tasks

- Create the `backend/` folder
- Create the `app/` folder inside `backend/`
- Create required backend files
- Add FastAPI dependencies
- Add SQLAlchemy dependencies
- Add Uvicorn for running the development server

### Output

- Backend folder structure ready
- Python dependencies listed

## Phase 2 - Database Configuration

### Goal

Configure SQLite database connection using SQLAlchemy.

### Tasksltw1
- Create database engine
- Create database session
- Configure SQLite database URL
- Create reusable database dependency for FastAPI routes
mc
### Planned Databasemc
mc
```textmc
sqlite:///./students.db
```

### Output

- SQLite connection ready
- SQLAlchemy session management ready

## Phase 3 - SQLAlchemy Student Model

### Goal

Create the database model for the `students` table.

### Tasks

- Define `Student` SQLAlchemy model
- Define table name as `students`
- Abdd columns for all student fieldsbd
kfq- Set `id` as primary key
- Add uniqueness rule for `email`
- Add required fields where needed

### Output

- Student database model ready

## Phase 4 - Pydantic Schemas

### Goal

Define request and response validation models.

### Tasks

- Create schema for creating a student
- Create schema for updating a student
- Create schema for returning student data
- Add basic validation for required fields

### Planned Schemas

- `StudentCreate`
- `StudentUpdate`
- `StudentResponse`

### Output

- API request and response validation ready

## Phase 5 - CRUD Logic

### Goal

Create reusable database functions for student operations.

### Tasks

- Get all students
- Get student by ID
- Create a new student
- Update an existing student
- Delete a student
- Handle missing student records

### Output

- Backend CRUD logic ready

## Phase 6 - API Routes

### Goal

Expose student CRUD operations through FastAPI endpoints.

### Planned Endpoints

| Method | Endpoint | Purpose |
| --- | --- | --- |
| `GET` | `/students` | Get all students |
| `GET` | `/students/{student_id}` | Get one student by ID |
| `POST` | `/students` | Add a new student |
| `PUT` | `/students/{student_id}` | Update an existing student |
| `DELETE` | `/students/{student_id}` | Delete a student |

### Tasks

- Create route for listing students
- Create route for reading one student
- Create route for adding a student
- Create route for updating a student
- Create route for deleting a student
- Return clear success and error responses

### Output

- Student CRUD API ready

## Phase 7 - Seed Data

### Goal

Add 10 initial student records to the SQLite database.

### Tasks

- Create seed function
- Add 10 sample student records
- Prevent duplicate seed records
- Run seed logic when needed

### Output

- Database contains 10 starter student records

## Phase 8 - CORS Configuration

### Goal

Allow the React frontend to communicate with the FastAPI backend.

### Tasks

- Add CORS middleware
- Allow frontend development URL
- Allow CRUD methods
- Allow JSON request headers

### Planned Frontend URL

```text
http://localhost:5173
```

### Output

- Frontend can call backend APIs

## Phase 9 - Backend Testing

### Goal

Verify that every backend endpoint works correctly.

### Tasks

- Test `GET /students`
- Test `GET /students/{student_id}`
- Test `POST /students`
- Test `PUT /students/{student_id}`
- Test `DELETE /students/{student_id}`
- Test invalid student ID behavior
- Test duplicate email behavior

### Output

- Backend API verified
- CRUD behavior confirmed

## Phase 10 - Backend Run Instructions

### Goal

Document how to start and test the backend server.

### Planned Command

```text
uvicorn app.main:app --reload
```

### Planned Backend URL

```text
http://localhost:8000
```

### Planned API Docs URL

```text
http://localhost:8000/docs
```

### Output

- Backend can be started locally
- API can be tested through FastAPI Swagger UI

## Backend Completion Checklist

- Backend project structure created
- SQLite database configured
- SQLAlchemy model created
- Pydantic schemas created
- CRUD logic created
- API routes created
- CORS configured
- 10 seed records added
- Backend endpoints tested
- Backend run instructions documented

