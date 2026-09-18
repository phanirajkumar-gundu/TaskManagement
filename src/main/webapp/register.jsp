<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>User Registration</title>

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

        .register-wrapper {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 30px 15px;
        }

        .register-card {
            width: 100%;
            max-width: 500px;
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
            height: 50px;
            border-radius: 10px;
        }

        .form-control:focus,
        .form-select:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }

        .btn-register {
            height: 50px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 16px;
        }

        .login-link {
            text-decoration: none;
            font-weight: 600;
        }
    </style>
</head>

<body>

<div class="register-wrapper">

    <div class="register-card">

        <!-- Logo -->
        <div class="logo">
            <i class="bi bi-person-plus-fill"></i>
        </div>

        <!-- Heading -->
        <div class="text-center mb-4">
            <h2 class="fw-bold mb-1">Create Account</h2>
            <p class="text-muted mb-0">
                Register your account to get started
            </p>
        </div>

        <!-- Registration Form -->
        <form action="Register" method="post">

            <!-- Name -->
            <div class="mb-3">
                <label for="name" class="form-label fw-semibold">
                    Full Name
                </label>

                <div class="input-group">
                    <span class="input-group-text bg-white">
                        <i class="bi bi-person"></i>
                    </span>

                    <input type="text"
                           class="form-control"
                           id="name"
                           name="name"
                           placeholder="Enter your full name"
                           required>
                </div>
            </div>

            <!-- Email -->
            <div class="mb-3">
                <label for="email" class="form-label fw-semibold">
                    Email Address
                </label>

                <div class="input-group">
                    <span class="input-group-text bg-white">
                        <i class="bi bi-envelope"></i>
                    </span>

                    <input type="email"
                           class="form-control"
                           id="email"
                           name="email"
                           placeholder="Enter your email"
                           required>
                </div>
            </div>

            <!-- Password -->
            <div class="mb-3">
                <label for="password" class="form-label fw-semibold">
                    Password
                </label>

                <div class="input-group">
                    <span class="input-group-text bg-white">
                        <i class="bi bi-lock"></i>
                    </span>

                    <input type="password"
                           class="form-control"
                           id="password"
                           name="password"
                           placeholder="Enter your password"
                           required>
                </div>
            </div>

            <!-- Role -->
            <div class="mb-4">
                <label for="role" class="form-label fw-semibold">
                    Select Role
                </label>

                <div class="input-group">
                    <span class="input-group-text bg-white">
                        <i class="bi bi-person-badge"></i>
                    </span>

                    <select class="form-select"
                            id="role"
                            name="role"
                            required>

                        <option value="" selected disabled>
                            Choose your role
                        </option>

                        <option value="User">User</option>
                        <option value="Admin">Admin</option>

                    </select>
                </div>
            </div>

            <!-- Terms -->
            <div class="form-check mb-4">
                <input class="form-check-input"
                       type="checkbox"
                       id="terms"
                       required>

                <label class="form-check-label text-muted"
                       for="terms">
                    I agree to the terms and conditions
                </label>
            </div>

            <!-- Register Button -->
            <button type="submit"
                    class="btn btn-primary w-100 btn-register">

                <i class="bi bi-person-plus me-2"></i>
                Create Account

            </button>

        </form>

        <!-- Login Link -->
        <div class="text-center mt-4">

            <span class="text-muted">
                Already have an account?
            </span>

            <a href="login.jsp"
               class="login-link text-primary ms-1">
                Login
            </a>

        </div>

    </div>

</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>