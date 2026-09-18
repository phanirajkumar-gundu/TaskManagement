<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.model.Tasks" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Task Management</title>

    <!-- Bootstrap 5 -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
        rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
        rel="stylesheet">

    <style>

        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background: linear-gradient(135deg, #0d6efd, #6f42c1);
        }

        /* NAVBAR */

        .navbar {
            background: rgba(255, 255, 255, 0.97);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: 700;
            color: #4b2aad !important;
        }

        .logo-icon {
            color: #0d6efd;
            margin-right: 8px;
        }

        /* MAIN */

        .main-content {
            flex: 1;
            padding: 40px 15px;
        }

        .container-box {
            max-width: 1200px;
            margin: auto;
        }

        /* WELCOME */

        .welcome-card {
            background: #ffffff;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.18);
            margin-bottom: 25px;
        }

        .welcome-icon {
            width: 65px;
            height: 65px;
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            background: linear-gradient(135deg, #0d6efd, #6f42c1);
            color: white;
            font-size: 30px;
        }

        .welcome-card h1 {
            font-weight: 700;
            color: #212529;
        }

        .welcome-card p {
            color: #6c757d;
            margin-bottom: 0;
        }

        /* CREATE BUTTON */

        .create-btn {
            padding: 12px 22px;
            font-size: 16px;
            font-weight: 600;
            border-radius: 10px;
            background: linear-gradient(135deg, #0d6efd, #6f42c1);
            border: none;
            color: white;
        }

        .create-btn:hover {
            opacity: 0.9;
            color: white;
        }

        /* TASK CARD */

        .task-card {
            background: #ffffff;
            border-radius: 20px;
            padding: 25px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.18);
        }

        .task-card-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .task-card-header h4 {
            font-weight: 700;
            margin: 0;
        }

        .task-count {
            background: #eef3ff;
            color: #0d6efd;
            padding: 7px 15px;
            border-radius: 20px;
            font-weight: 600;
        }

        /* TABLE */

        .table-container {
            overflow-x: auto;
        }

        .table {
            margin-bottom: 0;
            vertical-align: middle;
        }

        .table thead {
            background: #f5f7fb;
        }

        .table thead th {
            color: #495057;
            font-size: 14px;
            font-weight: 700;
            white-space: nowrap;
        }

        .table tbody td {
            padding: 15px 10px;
        }

        .table tbody tr:hover {
            background-color: #f8f9ff;
        }

        /* STATUS */

        .status-badge {
            padding: 7px 12px;
            border-radius: 20px;
            font-size: 13px;
            font-weight: 600;
        }

        .status-pending {
            background: #fff3cd;
            color: #856404;
        }

        .status-progress {
            background: #cfe2ff;
            color: #084298;
        }

        .status-completed {
            background: #d1e7dd;
            color: #0f5132;
        }

        /* ACTION BUTTONS */

        .action-btn {
            width: 38px;
            height: 38px;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 8px;
        }

        /* EMPTY */

        .empty-task {
            text-align: center;
            padding: 50px 20px;
        }

        .empty-task i {
            font-size: 60px;
            color: #6f42c1;
        }

        .empty-task h5 {
            margin-top: 15px;
            font-weight: 700;
        }

        .empty-task p {
            color: #6c757d;
        }

        /* FOOTER */

        footer {
            background: rgba(255, 255, 255, 0.97);
            text-align: center;
            padding: 18px;
            color: #6c757d;
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }

        footer strong {
            color: #4b2aad;
        }

        /* MOBILE */

        @media (max-width: 768px) {

            .welcome-card {
                padding: 25px 20px;
            }

            .welcome-card .row {
                text-align: center;
            }

            .welcome-icon {
                margin: auto;
            }

            .create-btn {
                margin-top: 20px;
                width: 100%;
            }

            .task-card {
                padding: 18px;
            }

            .task-card-header {
                flex-direction: column;
                gap: 10px;
                align-items: flex-start;
            }
        }

    </style>

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav class="navbar navbar-expand-lg">

    <div class="container">

        <a class="navbar-brand" href="TaskHomeServlet">

            <i class="bi bi-kanban-fill logo-icon"></i>

            TaskManagement

        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarContent">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse"
             id="navbarContent">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">

                    <a class="nav-link active"
                       href="TaskHomeServlet">

                        <i class="bi bi-house-door me-1"></i>

                        Home

                    </a>

                </li>

            </ul>

        </div>

    </div>

</nav>


<!-- ================= MAIN ================= -->

<main class="main-content">

    <div class="container-box">


        <!-- ================= WELCOME CARD ================= -->

        <div class="welcome-card">

            <div class="row align-items-center">

                <div class="col-md-8">

                    <div class="d-flex align-items-center gap-3">

                        <div class="welcome-icon">

                            <i class="bi bi-clipboard-check"></i>

                        </div>

                        <div>

                            <h1 class="mb-1">
                                Task Management
                            </h1>

                            <p>
                                Create, manage and track your tasks
                                efficiently in one place.
                            </p>

                        </div>

                    </div>

                </div>


                <div class="col-md-4 text-md-end">

                    <a href="createTask.jsp"
                       class="btn create-btn">

                        <i class="bi bi-plus-circle me-2"></i>

                        Create New Task

                    </a>

                </div>

            </div>

        </div>


        <!-- ================= GET TASKS ================= -->

        <%

            List<Tasks> allTasks =
                (List<Tasks>) request.getAttribute("allTasks");

            int taskCount = 0;

            if (allTasks != null) {
                taskCount = allTasks.size();
            }

        %>


        <!-- ================= TASK LIST ================= -->

        <div class="task-card">

            <div class="task-card-header">

                <h4>

                    <i class="bi bi-list-task me-2"></i>

                    All Tasks

                </h4>

                <span class="task-count">

                    <%= taskCount %> Tasks

                </span>

            </div>


            <%

                if (allTasks == null || allTasks.isEmpty()) {

            %>


                <!-- EMPTY TASK -->

                <div class="empty-task">

                    <i class="bi bi-clipboard-x"></i>

                    <h5>
                        No Tasks Available
                    </h5>

                    <p>
                        You haven't created any tasks yet.
                        Create your first task to get started.
                    </p>

                    <a href="createTask.jsp"
                       class="btn create-btn">

                        <i class="bi bi-plus-circle me-2"></i>

                        Create Your First Task

                    </a>

                </div>


            <%

                } else {

            %>


                <!-- ================= TASK TABLE ================= -->

                <div class="table-container">

                    <table class="table table-hover">

                        <thead>

                            <tr>

                                <th>ID</th>

                                <th>Task Name</th>

                                <th>Description</th>

                                <th>Story Points</th>

                                <th>Assigned To</th>

                                <th>Status</th>

                                <th class="text-center">
                                    Actions
                                </th>

                            </tr>

                        </thead>


                        <tbody>

                        <%

                            for (Tasks task : allTasks) {

                        %>

                            <tr>

                                <!-- ID -->

                                <td>

                                    <strong>
                                        <%= task.getTaskId() %>
                                    </strong>

                                </td>


                                <!-- TASK NAME -->

                                <td>

                                    <strong>
                                        <%= task.getTaskName() %>
                                    </strong>

                                </td>


                                <!-- DESCRIPTION -->

                                <td>

                                    <%

                                        String description =
                                            task.getTaskDescription();

                                        if (description == null ||
                                            description.trim().isEmpty()) {

                                    %>

                                        <span class="text-muted">
                                            No description
                                        </span>

                                    <%

                                        } else {

                                    %>

                                        <%= description %>

                                    <%

                                        }

                                    %>

                                </td>


                                <!-- STORY POINTS -->

                                <td>

                                    <span class="badge text-bg-light">

                                        <i class="bi bi-star me-1"></i>

                                        <%= task.getStoryPoints() %>

                                    </span>

                                </td>


                                <!-- ASSIGNED TO -->

                                <td>

                                    <i class="bi bi-person-circle me-1"></i>

                                    <%= task.getAssignedTo() %>

                                </td>


                                <!-- STATUS -->

                                <td>

                                    <%

                                        String status =
                                            task.getTaskStatus();

                                        if ("Completed"
                                            .equalsIgnoreCase(status)) {

                                    %>

                                        <span class="status-badge status-completed">

                                            <i class="bi bi-check-circle me-1"></i>

                                            Completed

                                        </span>

                                    <%

                                        } else if ("In Progress"
                                                   .equalsIgnoreCase(status)) {

                                    %>

                                        <span class="status-badge status-progress">

                                            <i class="bi bi-hourglass-split me-1"></i>

                                            In Progress

                                        </span>

                                    <%

                                        } else {

                                    %>

                                        <span class="status-badge status-pending">

                                            <i class="bi bi-clock me-1"></i>

                                            Pending

                                        </span>

                                    <%

                                        }

                                    %>

                                </td>


                                <!-- ACTIONS -->

                                <td class="text-center">

                                    <!-- UPDATE -->

                                    <a href="updateTask?taskId=<%= task.getTaskId() %>"
                                       class="btn btn-outline-primary action-btn me-1"
                                       title="Update Task">

                                        <i class="bi bi-pencil-square"></i>

                                    </a>


                                    <!-- DELETE -->

                                    <a href="deleteTask?taskId=<%= task.getTaskId() %>"
                                       class="btn btn-outline-danger action-btn"
                                       title="Delete Task"
                                       onclick="return confirm('Are you sure you want to delete this task?');">

                                        <i class="bi bi-trash"></i>

                                    </a>

                                </td>

                            </tr>


                        <%

                            }

                        %>

                        </tbody>

                    </table>

                </div>


            <%

                }

            %>

        </div>

    </div>

</main>


<!-- ================= FOOTER ================= -->

<footer>

    © 2026

    <strong>
        TaskManagement
    </strong>

    . All Rights Reserved.

</footer>


<!-- ================= BOOTSTRAP JS ================= -->

<script
    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>
