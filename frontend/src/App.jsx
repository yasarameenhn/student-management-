import { useEffect, useState } from "react";

import {
  createStudent,
  deleteStudent,
  getStudents,
  updateStudent,
} from "./api/studentsApi.js";
import StudentForm, {
  initialFormData,
} from "./components/StudentForm.jsx";
import StudentList from "./components/StudentList.jsx";

function App() {
  const [students, setStudents] = useState([]);
  const [formData, setFormData] = useState(initialFormData);
  const [editingStudentId, setEditingStudentId] = useState(null);
  const [isLoading, setIsLoading] = useState(true);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [listError, setListError] = useState("");
  const [formMessage, setFormMessage] = useState("");

  async function loadStudents() {
    try {
      setIsLoading(true);
      setListError("");
      const data = await getStudents();
      setStudents(data);
    } catch (error) {
      setListError(error.message);
    } finally {
      setIsLoading(false);
    }
  }

  useEffect(() => {
    loadStudents();
  }, []);

  function handleInputChange(event) {
    const { name, value } = event.target;
    setFormData((currentData) => ({
      ...currentData,
      [name]: value,
    }));
  }

  function resetForm() {
    setFormData(initialFormData);
    setEditingStudentId(null);
    setFormMessage("");
  }

  function handleEditStudent(student) {
    setEditingStudentId(student.id);
    setFormData({
      first_name: student.first_name,
      last_name: student.last_name,
      email: student.email,
      phone: student.phone,
      date_of_birth: student.date_of_birth,
      gender: student.gender,
      course: student.course,
      enrollment_date: student.enrollment_date,
      status: student.status,
    });
    setFormMessage("");
    window.scrollTo({ top: 0, behavior: "smooth" });
  }

  async function handleDeleteStudent(student) {
    const shouldDelete = window.confirm(
      `Delete ${student.first_name} ${student.last_name}?`,
    );

    if (!shouldDelete) {
      return;
    }

    try {
      setFormMessage("");
      await deleteStudent(student.id);
      setStudents((currentStudents) =>
        currentStudents.filter((item) => item.id !== student.id),
      );

      if (editingStudentId === student.id) {
        resetForm();
      }

      setFormMessage("Student deleted successfully.");
    } catch (error) {
      setFormMessage(error.message);
    }
  }

  async function handleSubmitStudent(event) {
    event.preventDefault();

    try {
      setIsSubmitting(true);
      setFormMessage("");

      if (editingStudentId) {
        const updatedStudent = await updateStudent(editingStudentId, formData);
        setStudents((currentStudents) =>
          currentStudents.map((student) =>
            student.id === editingStudentId ? updatedStudent : student,
          ),
        );
        setEditingStudentId(null);
        setFormData(initialFormData);
        setFormMessage("Student updated successfully.");
      } else {
        const createdStudent = await createStudent(formData);
        setStudents((currentStudents) => [...currentStudents, createdStudent]);
        setFormData(initialFormData);
        setFormMessage("Student added successfully.");
      }
    } catch (error) {
      setFormMessage(error.message);
    } finally {
      setIsSubmitting(false);
    }
  }

  return (
    <main className="app-shell">
      <section className="app-header">
        <p className="eyebrow">Student dashboard</p>
        <h1>Student Management System</h1>
      </section>

      <div className="content-grid">
        <StudentForm
          formData={formData}
          isEditing={editingStudentId !== null}
          isSubmitting={isSubmitting}
          onChange={handleInputChange}
          onSubmit={handleSubmitStudent}
          onReset={resetForm}
        />

        {formMessage && (
          <div
            className={`state-box ${
              formMessage.includes("successfully") ? "success" : "error"
            }`}
          >
            {formMessage}
          </div>
        )}

        <StudentList
          students={students}
          isLoading={isLoading}
          error={listError}
          onEdit={handleEditStudent}
          onDelete={handleDeleteStudent}
        />
      </div>
    </main>
  );
}

export default App;
