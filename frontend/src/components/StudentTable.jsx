function formatDate(value) {
  return new Intl.DateTimeFormat("en", {
    year: "numeric",
    month: "short",
    day: "2-digit",
  }).format(new Date(`${value}T00:00:00`));
}

function StudentTable({ students, onEdit, onDelete }) {
  return (
    <div className="table-wrap">
      <table>
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Date of Birth</th>
            <th>Gender</th>
            <th>Course</th>
            <th>Enrollment</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          {students.map((student) => (
            <tr key={student.id}>
              <td>{student.id}</td>
              <td>
                <strong>
                  {student.first_name} {student.last_name}
                </strong>
              </td>
              <td>{student.email}</td>
              <td>{student.phone}</td>
              <td>{formatDate(student.date_of_birth)}</td>
              <td>{student.gender}</td>
              <td>{student.course}</td>
              <td>{formatDate(student.enrollment_date)}</td>
              <td>
                <span className={`status-pill ${student.status.toLowerCase()}`}>
                  {student.status}
                </span>
              </td>
              <td>
                <div className="row-actions">
                  <button
                    className="table-button"
                    type="button"
                    onClick={() => onEdit(student)}
                  >
                    Edit
                  </button>
                  <button
                    className="table-button danger"
                    type="button"
                    onClick={() => onDelete(student)}
                  >
                    Delete
                  </button>
                </div>
              </td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
}

export default StudentTable;
