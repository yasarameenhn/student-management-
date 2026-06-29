const initialFormData = {
  first_name: "",
  last_name: "",
  email: "",
  phone: "",
  date_of_birth: "",
  gender: "",
  course: "",
  enrollment_date: "",
  status: "Active",
};

function StudentForm({
  formData,
  isEditing,
  isSubmitting,
  onChange,
  onSubmit,
  onReset,
}) {
  return (
    <form className="student-form" onSubmit={onSubmit}>
      <div className="section-heading">
        <div>
          <p className="eyebrow">{isEditing ? "Edit record" : "Add record"}</p>
          <h2>{isEditing ? "Update Student" : "New Student"}</h2>
        </div>
        <button
          className="secondary-button"
          type="button"
          onClick={onReset}
          disabled={isSubmitting}
        >
          {isEditing ? "Cancel" : "Clear"}
        </button>
      </div>

      <div className="form-grid">
        <label>
          First name
          <input
            name="first_name"
            value={formData.first_name}
            onChange={onChange}
            required
            maxLength="50"
          />
        </label>

        <label>
          Last name
          <input
            name="last_name"
            value={formData.last_name}
            onChange={onChange}
            required
            maxLength="50"
          />
        </label>

        <label>
          Email
          <input
            name="email"
            type="email"
            value={formData.email}
            onChange={onChange}
            required
          />
        </label>

        <label>
          Phone
          <input
            name="phone"
            value={formData.phone}
            onChange={onChange}
            required
            minLength="7"
            maxLength="20"
          />
        </label>

        <label>
          Date of birth
          <input
            name="date_of_birth"
            type="date"
            value={formData.date_of_birth}
            onChange={onChange}
            required
          />
        </label>

        <label>
          Gender
          <select
            name="gender"
            value={formData.gender}
            onChange={onChange}
            required
          >
            <option value="">Select gender</option>
            <option value="Female">Female</option>
            <option value="Male">Male</option>
            <option value="Other">Other</option>
          </select>
        </label>

        <label>
          Course
          <input
            name="course"
            value={formData.course}
            onChange={onChange}
            required
            maxLength="100"
          />
        </label>

        <label>
          Enrollment date
          <input
            name="enrollment_date"
            type="date"
            value={formData.enrollment_date}
            onChange={onChange}
            required
          />
        </label>

        <label>
          Status
          <select
            name="status"
            value={formData.status}
            onChange={onChange}
            required
          >
            <option value="Active">Active</option>
            <option value="Inactive">Inactive</option>
            <option value="Graduated">Graduated</option>
          </select>
        </label>
      </div>

      <div className="form-actions">
        <button className="primary-button" type="submit" disabled={isSubmitting}>
          {isSubmitting
            ? "Saving..."
            : isEditing
              ? "Update Student"
              : "Add Student"}
        </button>
      </div>
    </form>
  );
}

export { initialFormData };
export default StudentForm;
