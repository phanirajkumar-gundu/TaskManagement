<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login</title>

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

        .login-wrapper {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 30px 15px;
        }

        .login-card {
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

        .form-control {
            height: 50px;
            border-radius: 10px;
        }

        .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
        }

        .btn-login {
            height: 50px;
            border-radius: 10px;
            font-weight: 600;
            font-size: 16px;
        }

        .register-link {
            text-decoration: none;
            font-weight: 600;
        }
    </style>
</head>

<body>

<div class="login-wrapper">

    <div class="login-card">

        <!-- Logo -->
        <div class="logo">
            <i class="bi bi-box-arrow-in-right"></i>
        </div>

        <!-- Heading -->
        <div class="text-center mb-4">
            <h2 class="fw-bold mb-1">Welcome Back</h2>
            <p class="text-muted mb-0">
                Login to your account
            </p>
        </div>

        <!-- Login Form -->
        <form action="Login" method="post">

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
            <div class="mb-4">
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

            <!-- Remember Me -->
            <div class="d-flex justify-content-between align-items-center mb-4">

                <div class="form-check">
                    <input class="form-check-input"
                           type="checkbox"
                           id="remember">

                    <label class="form-check-label text-muted"
                           for="remember">
                        Remember me
                    </label>
                </div>

                <a href="#" class="text-primary text-decoration-none">
                    Forgot Password?
                </a>

            </div>

            <!-- Login Button -->
            <button type="submit"
                    class="btn btn-primary w-100 btn-login">

                <i class="bi bi-box-arrow-in-right me-2"></i>
                Login

            </button>

        </form>

        <!-- Register Link -->
        <div class="text-center mt-4">

            <span class="text-muted">
                Don't have an account?
            </span>

            <a href="register.jsp"
               class="register-link text-primary ms-1">
                Create Account
            </a>

        </div>

    </div>

</div>

<!-- Bootstrap 5 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>