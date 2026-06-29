# Frontend Phase Implementation Plan

## Frontend Overview

The frontend will be built with React and plain CSS.

It will provide a simple user interface for managing student records through the FastAPI backend.

The frontend will support:

- Viewing all students
- Adding a new student
- Updating an existing student
- Deleting a student
- Displaying loading states
- Displaying validation and API errors

Authentication and login are not included in this version.

## Frontend Technology Stack

- React
- Plain CSS
- Fetch API or Axios for API requests
- Vite for local development

## Backend API Dependency

The frontend will communicate with the backend API running at:

```text
http://127.0.0.1:8000
```

Planned backend endpoints:

| Method | Endpoint | Purpose |
| --- | --- | --- |
| `GET` | `/students` | Get all students |
| `GET` | `/students/{student_id}` | Get one student |
| `POST` | `/students` | Create a student |
| `PUT` | `/students/{student_id}` | Update a student |
| `DELETE` | `/students/{student_id}` | Delete a student |

## Planned Frontend Folder Structure

Planned folder structure:

```text
frontend/
  index.html
  package.json
  vite.config.js
  src/
    main.jsx
    App.jsx
    api/
      studentsApi.js
    components/
      StudentForm.jsx
      StudentList.jsx
      StudentTable.jsx
      StudentActions.jsx
    styles/
      main.css
```

## Student Fields

The frontend forms and table will use these fields:

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

## Phase 1 - Frontend Setup

### Goal

Create the React project structure using Vite.

### Tasks

- Create `frontend/` folder
- Initialize Vite React project
- Install dependencies
- Create base app files
- Create plain CSS structure
- Confirm frontend runs locally

### Output

- React frontend project ready
- Local frontend server running

## Phase 2 - API Service Layer

### Goal

Create reusable functions for communicating with the FastAPI backend.

### Tasks

- Create API base URL configuration
- Create function to get all students
- Create function to get one student
- Create function to add a student
- Create function to update a student
- Create function to delete a student
- Add basic API error handling

### Output

- Reusable student API service ready

## Phase 3 - Student List View

### Goal

Display all student records from the backend.

### Tasks

- Fetch student records from `GET /students`
- Display records in a table
- Show loading state while fetching
- Show empty state if no students exist
- Show error state if backend request fails

### Output

- Student list displayed in the frontend

## Phase 4 - Add Student Form

### Goal

Allow users to add new student records.

### Tasks

- Create student form fields
- Add client-side required field checks
- Submit form data to `POST /students`
- Refresh student list after successful create
- Display backend validation errors
- Clear form after successful submission

### Output

- Users can add student records from the frontend

## Phase 5 - Update Student Flow

### Goal

Allow users to edit existing student records.

### Tasks

- Add edit action for each student
- Load selected student data into the form
- Submit updated data to `PUT /students/{student_id}`
- Refresh student list after successful update
- Allow cancelling edit mode
- Display update errors clearly

### Output

- Users can update student records from the frontend

## Phase 6 - Delete Student Flow

### Goal

Allow users to delete student records.

### Tasks

- Add delete action for each student
- Show confirmation before deleting
- Send request to `DELETE /students/{student_id}`
- Remove deleted student from the UI
- Display delete errors clearly

### Output

- Users can delete student records from the frontend

## Phase 7 - UI Styling With Plain CSS

### Goal

Create a clean and usable interface with plain CSS.

### Tasks

- Style page layout
- Style student table
- Style forms and inputs
- Style buttons
- Style loading, empty, and error states
- Make layout responsive for smaller screens

### Output

- Frontend has a polished plain CSS interface

## Phase 8 - Frontend Integration Testing

### Goal

Verify that frontend and backend work together correctly.

### Tasks

- Test loading seeded students
- Test adding a student
- Test updating a student
- Test deleting a student
- Test duplicate email error
- Test invalid form data
- Test backend unavailable state

### Output

- Frontend CRUD workflow verified

## Phase 9 - Final Frontend Review

### Goal

Review the completed frontend for usability and consistency.

### Tasks

- Confirm all CRUD flows work
- Confirm UI is responsive
- Confirm API errors are readable
- Confirm no authentication screens exist
- Confirm frontend matches project scope

### Output

- Completed React frontend ready for use

## Frontend Completion Checklist

- React project created
- API service layer created
- Student list view created
- Add student form created
- Update student flow created
- Delete student flow created
- Plain CSS styling completed
- Frontend connected to backend
- CRUD workflow tested

