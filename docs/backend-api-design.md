# Backend API Design

## Purpose

This document defines the planned REST API design for the Student Management System backend.

The API will be built with FastAPI and will provide CRUD endpoints for student records.

## Base URL

Planned local backend URL:

```text
http://localhost:8000
```

## API Documentation URL

FastAPI will provide automatic Swagger documentation at:

```text
http://localhost:8000/docs
```

## Resource

Main API resource:

```text
students
```

## Endpoint Summary

| Method | Endpoint | Purpose |
| --- | --- | --- |
| `GET` | `/students` | Get all students |
| `GET` | `/students/{student_id}` | Get one student |
| `POST` | `/students` | Create a student |
| `PUT` | `/students/{student_id}` | Update a student |
| `DELETE` | `/students/{student_id}` | Delete a student |

## Student Response Shape

```json
{
  "id": 1,
  "first_name": "Aarav",
  "last_name": "Sharma",
  "email": "aarav.sharma@example.com",
  "phone": "9876543210",
  "date_of_birth": "2003-04-15",
  "gender": "Male",
  "course": "Computer Science",
  "enrollment_date": "2023-07-01",
  "status": "Active"
}
```

## Get All Students

### Request

```text
GET /students
```

### Success Response

Status code:

```text
200 OK
```

Response body:

```json
[
  {
    "id": 1,
    "first_name": "Aarav",
    "last_name": "Sharma",
    "email": "aarav.sharma@example.com",
    "phone": "9876543210",
    "date_of_birth": "2003-04-15",
    "gender": "Male",
    "course": "Computer Science",
    "enrollment_date": "2023-07-01",
    "status": "Active"
  }
]
```

## Get One Student

### Request

```text
GET /students/{student_id}
```

### Success Response

Status code:

```text
200 OK
```

Response body:

```json
{
  "id": 1,
  "first_name": "Aarav",
  "last_name": "Sharma",
  "email": "aarav.sharma@example.com",
  "phone": "9876543210",
  "date_of_birth": "2003-04-15",
  "gender": "Male",
  "course": "Computer Science",
  "enrollment_date": "2023-07-01",
  "status": "Active"
}
```

### Error Response

Status code:

```text
404 Not Found
```

Response body:

```json
{
  "detail": "Student not found"
}
```

## Create Student

### Request

```text
POST /students
```

Request body:

```json
{
  "first_name": "Aarav",
  "last_name": "Sharma",
  "email": "aarav.sharma@example.com",
  "phone": "9876543210",
  "date_of_birth": "2003-04-15",
  "gender": "Male",
  "course": "Computer Science",
  "enrollment_date": "2023-07-01",
  "status": "Active"
}
```

### Success Response

Status code:

```text
201 Created
```

Response body:

```json
{
  "id": 1,
  "first_name": "Aarav",
  "last_name": "Sharma",
  "email": "aarav.sharma@example.com",
  "phone": "9876543210",
  "date_of_birth": "2003-04-15",
  "gender": "Male",
  "course": "Computer Science",
  "enrollment_date": "2023-07-01",
  "status": "Active"
}
```

## Update Student

### Request

```text
PUT /students/{student_id}
```

Request body:

```json
{
  "first_name": "Aarav",
  "last_name": "Sharma",
  "email": "aarav.sharma@example.com",
  "phone": "9876543210",
  "date_of_birth": "2003-04-15",
  "gender": "Male",
  "course": "Computer Science",
  "enrollment_date": "2023-07-01",
  "status": "Active"
}
```

### Success Response

Status code:

```text
200 OK
```

Response body:

```json
{
  "id": 1,
  "first_name": "Aarav",
  "last_name": "Sharma",
  "email": "aarav.sharma@example.com",
  "phone": "9876543210",
  "date_of_birth": "2003-04-15",
  "gender": "Male",
  "course": "Computer Science",
  "enrollment_date": "2023-07-01",
  "status": "Active"
}
```

### Error Response

Status code:

```text
404 Not Found
```

Response body:

```json
{
  "detail": "Student not found"
}
```

## Delete Student

### Request

```text
DELETE /students/{student_id}
```

### Success Response

Status code:

```text
204 No Content
```

Response body:

```text
No response body
```

### Error Response

Status code:

```text
404 Not Found
```

Response body:

```json
{
  "detail": "Student not found"
}
```

## Validation Rules

The API should validate:

- Required fields
- Email format
- Unique email address
- Date format as `YYYY-MM-DD`
- Valid student status

## Common Error Codes

| Status Code | Meaning |
| --- | --- |
| `400 Bad Request` | Invalid request or duplicate email |
| `404 Not Found` | Student record does not exist |
| `422 Unprocessable Entity` | Request validation failed |
| `500 Internal Server Error` | Unexpected backend error |

## CORS Requirement

The backend should allow requests from the React development server:

```text
http://localhost:5173
```

