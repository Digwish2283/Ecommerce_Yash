<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - ECommerce Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            min-height: 100vh;
            font-family: Arial, sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .login-card {
            background: #fff;
            border-radius: 18px;
            padding: 2rem;
            max-width: 400px;
            width: 100%;
            box-shadow: 0 8px 24px rgba(238,105,131,0.12);
            border: 1.5px solid #FEC8D8;
        }
        .login-card h2 {
            color: #EE6983;
        }
        .form-label {
            color: #4B3145;
        }
        .form-control:focus {
            border-color: #EE6983;
            box-shadow: 0 0 0 0.2rem rgba(238,105,131,0.15);
        }
        .btn-primary {
            background: linear-gradient(90deg, #EE6983 70%, #FEC8D8 100%);
            border: none;
            color: #FFF5F7;
            font-weight: 600;
            letter-spacing: 0.5px;
            transition: background 0.2s, color 0.2s;
        }
        .btn-primary:hover, .btn-primary:focus {
            background: #4B3145;
            color: #FEC8D8;
        }
        .password-toggle {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            border: none;
            background: none;
            cursor: pointer;
            color: #B5838D;
        }
        .form-check-label {
            color: #4B3145;
        }
        a {
            color: #EE6983;
            text-decoration: none;
            transition: color 0.2s;
        }
        a:hover {
            color: #4B3145;
            text-decoration: underline;
        }
        .alert-danger, .alert-success {
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <div class="login-card">
        <h2 class="mb-4 text-center">Sign In</h2>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>
        <c:if test="${not empty success}">
            <div class="alert alert-success">${success}</div>
        </c:if>

        <form action="login" method="post" novalidate>
            <div class="mb-3 position-relative">
                <label for="email" class="form-label">Email Address</label>
             <input type="email" id="email" name="useremail" class="form-control" required value="">
            </div>

            <div class="mb-3 position-relative">
                <label for="password" class="form-label">Password</label>
                <input type="password" id="password" name="userpassword" class="form-control" required>
                <button type="button" class="password-toggle" onclick="togglePassword()">
                    <i class="fas fa-eye" id="toggleIcon"></i>
                </button>
            </div>

            <div class="mb-3 d-flex justify-content-between align-items-center">
                <div class="form-check">
                    <input type="checkbox" id="rememberMe" name="rememberMe" class="form-check-input">
                    <label for="rememberMe" class="form-check-label">Remember me</label>
                </div>
                <a href="#">Forgot Password?</a>
            </div>

            <button type="submit" class="btn btn-primary w-100">Sign In</button>
        </form>

        <p class="text-center mt-4">
            Don't have an account? <a href="register.jsp">Create one here</a>
        </p>
    </div>

    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script>
        function togglePassword() {
            const pwd = document.getElementById('password');
            const icon = document.getElementById('toggleIcon');
            if (pwd.type === 'password') {
                pwd.type = 'text';
                icon.classList.replace('fa-eye', 'fa-eye-slash');
            } else {
                pwd.type = 'password';
                icon.classList.replace('fa-eye-slash', 'fa-eye');
            }
        }
    </script>
</body>
</html>