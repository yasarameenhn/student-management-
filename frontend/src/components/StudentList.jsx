import StudentTable from "./StudentTable.jsx";

function StudentList({ students, isLoading, error, onEdit, onDelete }) {
  return (
    <section className="student-list">
      <div className="section-heading">
        <div>
          <p className="eyebrow">Student records</p>
          <h2>All Students</h2>
        </div>
        <span className="record-count">{students.length} records</span>
      </div>

      {isLoading && <div className="state-box">Loading students...</div>}

      {!isLoading && error && <div className="state-box error">{error}</div>}

      {!isLoading && !error && students.length === 0 && (
        <div className="state-box">No student records found.</div>
      )}

      {!isLoading && !error && students.length > 0 && (
        <StudentTable
          students={students}
          onEdit={onEdit}
          onDelete={onDelete}
        />
      )}
    </section>
  );
}

export default StudentList;
