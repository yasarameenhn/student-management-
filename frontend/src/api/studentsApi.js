const API_BASE_URL =
  import.meta.env.VITE_API_BASE_URL || "http://127.0.0.1:8000";

function formatValidationLocation(location = []) {
  return location.filter((part) => part !== "body").join(".");
}

function getErrorMessage(data) {
  if (typeof data.detail === "string") {
    return data.detail;
  }

  if (Array.isArray(data.detail)) {
    return data.detail
      .map((error) => {
        const field = formatValidationLocation(error.loc);
        return field ? `${field}: ${error.msg}` : error.msg;
      })
      .join(" ");
  }

  return "API request failed";
}

async function request(endpoint, options = {}) {
  const response = await fetch(`${API_BASE_URL}${endpoint}`, {
    headers: {
      "Content-Type": "application/json",
      ...options.headers,
    },
    ...options,
  });

  if (response.status === 204) {
    return null;
  }

  const data = await response.json();

  if (!response.ok) {
    throw new Error(getErrorMessage(data));
  }

  return data;
}

export function getStudents() {
  return request("/students");
}

export function getStudent(studentId) {
  return request(`/students/${studentId}`);
}

export function createStudent(studentData) {
  return request("/students", {
    method: "POST",
    body: JSON.stringify(studentData),
  });
}

export function updateStudent(studentId, studentData) {
  return request(`/students/${studentId}`, {
    method: "PUT",
    body: JSON.stringify(studentData),
  });
}

export function deleteStudent(studentId) {
  return request(`/students/${studentId}`, {
    method: "DELETE",
  });
}
