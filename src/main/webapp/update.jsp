<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.model.Tasks" %>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Update Task</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>

        body {
            min-height: 100vh;
            background: linear-gradient(135deg, #0d6efd, #6610f2);
            font-family: Arial, sans-serif;
        }

        .task-wrapper {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 30px 15px;
        }

        .task-card {
            width: 100%;
            max-width: 650px;
            background: #ffffff;
            border-radius: 20px;
            padding: 35px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.20);
        }

        .logo {
            width: 65px;
            height: 65px;
            background: #0d6efd;
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 15px;
            font-size: 28px;
        }

        .form-control,
        .form-select {
            min-height: 50px;
            border-radius: 10px;
        }

        textarea.form-control {
            min-height: 120px;
            resize: vertical;
        }

        .form-control:focus,
        .form-select:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }

        .btn-create {
            height: 50px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 16px;
        }

        .input-group-text {
            border-radius: 10px 0 0 10px;
        }

    </style>

</head>

<body>

<div class="task-wrapper">

    <div class="task-card">

        <!-- Logo -->
        <div class="logo">
            <i class="bi bi-clipboard-plus-fill"></i>
        </div>

        <!-- Heading -->
        <div class="text-center mb-4">

            <h2 class="fw-bold mb-1">
                Update Task
            </h2>

            <p class="text-muted mb-0">
				Update task to the project
            </p>

        </div>
        <% Tasks task = (Tasks) request.getAttribute("task"); %>

        <!-- Create Task Form -->
        <form action="updateTask" method="post">
            
            <!-- Task Name -->
            <div class="mb-3">

                <label for="taskId"
                       class="form-label fw-semibold">

                    taskId

                </label>

                <div class="input-group">

                    <span class="input-group-text bg-white">
                        <i class="bi bi-card-text"></i>
                    </span>

                    <input type="text"
                           class="form-control"
                           id="taskId"
                           name="taskId"
                           value = "<%= task.getTaskId() %>"
                           required>

                </div>

            </div>
            <!-- Task Name -->
            <div class="mb-3">

                <label for="taskName"
                       class="form-label fw-semibold">

                    Task Name

                </label>

                <div class="input-group">

                    <span class="input-group-text bg-white">
                        <i class="bi bi-card-text"></i>
                    </span>

                    <input type="text"
                           class="form-control"
                           id="taskName"
                           name="taskName"
                           value = "<%= task.getTaskName() %>"
                           required>

                </div>

            </div>


            <!-- Task Description -->
            <div class="mb-3">

                <label for="taskDescription"
                       class="form-label fw-semibold">

                    Task Description

                </label>

                <textarea class="form-control"
                          id="taskDescription"
                          name="taskDescription"
                          placeholder="Enter task description"><%= task.getTaskDescription() %></textarea>

            </div>


            <!-- Story Points -->
            <div class="mb-3">

                <label for="storyPoints"
                       class="form-label fw-semibold">

                    Story Points

                </label>

                <div class="input-group">

                    <span class="input-group-text bg-white">
                        <i class="bi bi-bar-chart"></i>
                    </span>

                    <input type="number"
                           class="form-control"
                           id="storyPoints"
                           name="storyPoints"
                           min="0"
                          value = "<%= task.getStoryPoints() %>"
                           value="0"
                           required>

                </div>

            </div>


            <!-- Assigned To -->
            <div class="mb-3">

                <label for="assignedTo"
                       class="form-label fw-semibold">

                    Assigned To

                </label>

                <div class="input-group">

                    <span class="input-group-text bg-white">
                        <i class="bi bi-person"></i>
                    </span>

                    <input type="text"
                           class="form-control"
                           id="assignedTo"
                           name="assignedTo"
                           value = "<%= task.getAssignedTo() %>"
                           >
                </div>

            </div>


            <!-- Task Status -->
            <div class="mb-4">

                <label for="taskStatus"
                       class="form-label fw-semibold">

                    Task Status

                </label>

                <div class="input-group">

                    <span class="input-group-text bg-white">
                        <i class="bi bi-activity"></i>
                    </span>

                    <select class="form-select"
                            id="taskStatus"
                            name="taskStatus"
                            required>

                        <option value="" selected disabled>
                            Select task status
                        </option>

                        <option value="Pending">
                            Pending
                        </option>

                        <option value="In Progress">
                            In Progress
                        </option>

                        <option value="Completed">
                            Completed
                        </option>

                    </select>

                </div>

            </div>


            <!-- Create Button -->
            <button type="submit"
                    class="btn btn-primary w-100 btn-create">

                <i class="bi bi-plus-circle me-2"></i>

                Update Task

            </button>

        </form>

    </div>

</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>