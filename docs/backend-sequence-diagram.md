# Backend Sequence Diagram

## Purpose

This document shows the backend request flow for student CRUD operations.

The sequence diagrams explain how the React frontend communicates with the FastAPI backend, how the backend validates data, and how SQLAlchemy interacts with the SQLite database.

## View All Students

```mermaid
sequenceDiagram
    participant User
    participant Frontend as React Frontend
    participant API as FastAPI Route
    participant CRUD as CRUD Logic
    participant ORM as SQLAlchemy
    participant DB as SQLite Database

    User->>Frontend: Opens student list
    Frontend->>API: GET /students
    API->>CRUD: get_all_students()
    CRUD->>ORM: Query Student table
    ORM->>DB: SELECT all students
    DB-->>ORM: Student rows
    ORM-->>CRUD: Student models
    CRUD-->>API: Student list
    API-->>Frontend: 200 OK with JSON list
    Frontend-->>User: Displays students
```

## View Student Details

```mermaid
sequenceDiagram
    participant User
    participant Frontend as React Frontend
    participant API as FastAPI Route
    participant CRUD as CRUD Logic
    participant ORM as SQLAlchemy
    participant DB as SQLite Database

    User->>Frontend: Selects one student
    Frontend->>API: GET /students/{student_id}
    API->>CRUD: get_student_by_id(student_id)
    CRUD->>ORM: Query Student by ID
    ORM->>DB: SELECT student WHERE id = student_id
    DB-->>ORM: Student row or empty result
    ORM-->>CRUD: Student model or null
    CRUD-->>API: Student result
    API-->>Frontend: 200 OK or 404 Not Found
    Frontend-->>User: Displays student details or error
```

## Add Student

```mermaid
sequenceDiagram
    participant User
    participant Frontend as React Frontend
    participant API as FastAPI Route
    participant Schema as Pydantic Schema
    participant CRUD as CRUD Logic
    participant ORM as SQLAlchemy
    participant DB as SQLite Database

    User->>Frontend: Submits add student form
    Frontend->>API: POST /students
    API->>Schema: Validate request body
    Schema-->>API: Valid student data
    API->>CRUD: create_student(student_data)
    CRUD->>ORM: Create Student model
    ORM->>DB: INSERT student record
    DB-->>ORM: Saved record
    ORM-->>CRUD: Created student
    CRUD-->>API: Created student result
    API-->>Frontend: 201 Created with JSON
    Frontend-->>User: Shows new student in list
```

## Update Student

```mermaid
sequenceDiagram
    participant User
    participant Frontend as React Frontend
    participant API as FastAPI Route
    participant Schema as Pydantic Schema
    participant CRUD as CRUD Logic
    participant ORM as SQLAlchemy
    participant DB as SQLite Database

    User->>Frontend: Submits update student form
    Frontend->>API: PUT /students/{student_id}
    API->>Schema: Validate request body
    Schema-->>API: Valid updated data
    API->>CRUD: update_student(student_id, student_data)
    CRUD->>ORM: Find Student by ID
    ORM->>DB: SELECT student WHERE id = student_id
    DB-->>ORM: Student row or empty result
    ORM-->>CRUD: Student model or null
    CRUD->>ORM: Apply updates when student exists
    ORM->>DB: UPDATE student record
    DB-->>ORM: Updated record
    ORM-->>CRUD: Updated student
    CRUD-->>API: Updated student result
    API-->>Frontend: 200 OK or 404 Not Found
    Frontend-->>User: Shows updated student data or error
```

## Delete Student

```mermaid
sequenceDiagram
    participant User
    participant Frontend as React Frontend
    participant API as FastAPI Route
    participant CRUD as CRUD Logic
    participant ORM as SQLAlchemy
    participant DB as SQLite Database

    User->>Frontend: Confirms delete action
    Frontend->>API: DELETE /students/{student_id}
    API->>CRUD: delete_student(student_id)
    CRUD->>ORM: Find Student by ID
    ORM->>DB: SELECT student WHERE id = student_id
    DB-->>ORM: Student row or empty result
    ORM-->>CRUD: Student model or null
    CRUD->>ORM: Delete when student exists
    ORM->>DB: DELETE student record
    DB-->>ORM: Delete confirmation
    ORM-->>CRUD: Delete result
    CRUD-->>API: Success or not found
    API-->>Frontend: 204 No Content or 404 Not Found
    Frontend-->>User: Removes student from list or shows error
```

## Error Handling Flow

```mermaid
sequenceDiagram
    participant Frontend as React Frontend
    participant API as FastAPI Route
    participant Schema as Pydantic Schema
    participant CRUD as CRUD Logic

    Frontend->>API: Sends invalid request
    API->>Schema: Validate request body
    Schema-->>API: Validation error
    API-->>Frontend: 422 Unprocessable Entity

    Frontend->>API: Requests missing student
    API->>CRUD: Search by student ID
    CRUD-->>API: Student not found
    API-->>Frontend: 404 Not Found
```

