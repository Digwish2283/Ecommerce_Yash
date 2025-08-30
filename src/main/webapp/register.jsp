<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register - ECommerce Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
      body {

          min-height: 100vh;
          font-family: 'Poppins', Arial, Helvetica, sans-serif;
          color: #4B3145;
      }
      .register-card {
          background: #FFF5F7;
          border-radius: 16px;
          padding: 2rem 1.5rem 1.7rem 1.5rem;
          max-width: 420px;
          margin: 4.5rem auto;
          border: 1px solid black;
          position: relative;
      }
      .register-card h2 {
          font-size: 2rem;
          font-weight: 700;
          color: #EE6983;
          margin-bottom: 1.4rem;
          text-align: center;
          letter-spacing: 1px;
      }
      .register-card .form-label {
          font-weight: 600;
          color: #4B3145;
          font-size: 1rem;
      }
      .register-card .form-control {
          background: #fff;
          border-radius: 10px;
          border: 1.5px solid #FEC8D8;
          font-size: 1.05rem;
          padding: 0.7rem 1rem;
          color: #4B3145;
          font-family: 'Poppins', Arial, Helvetica, sans-serif;
          transition: border 0.2s, box-shadow 0.2s;
      }
      .register-card .form-control:focus {
          border-color: #EE6983;
          box-shadow: 0 0 0 2px #FEC8D8;
          background: #FFF5F7;
          color: #4B3145;
      }
      .register-card .form-check-input:checked {
          background-color: #EE6983;
          border-color: #EE6983;
      }
      .register-card .form-check-label a {
          color: #EE6983;
          text-decoration: underline;
      }
      .register-card .btn-primary {
          background: linear-gradient(90deg, #EE6983 60%, #FEC8D8 100%);
          border: none;
          color: #FFF5F7;
          padding: 0.7rem 0;
          font-weight: 600;
          font-size: 1.13rem;
          border-radius: 10px;
          margin-top: 0.6rem;
          margin-bottom: 0.2rem;
          box-shadow: 0 2px 10px rgba(238,105,131,0.09);
          transition: background 0.2s, color 0.2s, box-shadow 0.2s;
      }
      .register-card .btn-primary:hover,
      .register-card .btn-primary:focus {
          background: #EE6983;
          color: #FFF5F7;
          box-shadow: 0 4px 24px rgba(238,105,131,0.14);
      }
      .register-card .alert {
          border-radius: 8px;
          font-size: 1rem;
          padding: 0.6rem 1rem;
          margin-bottom: 1.1rem;
      }
      .register-card .password-toggle {
          position: absolute;
          right: 18px;
          top: 50%;
          transform: translateY(-50%);
          background: none;
          border: none;
          cursor: pointer;
          color: #EE6983;
          z-index: 10;
          font-size: 1.13rem;
          padding: 0;
      }
      .register-card .password-strength-bar {
          height: 5px;
          border-radius: 3px;
          background: #e9ecef;
          margin-top: 0.5rem;
          overflow: hidden;
      }
      .register-card .password-strength-fill {
          height: 100%;
          transition: width 0.3s ease;
          border-radius: 3px;
      }
      .strength-weak { background: #dc3545; width: 25%; }
      .strength-fair { background: #ffc107; width: 50%; }
      .strength-good { background: #fd7e14; width: 75%; }
      .strength-strong { background: #28a745; width: 100%; }

      .register-card .form-check-label {
          font-size: 0.98rem;
      }
      .register-card .invalid-feedback, .register-card .valid-feedback {
          font-size: 0.93rem;
          margin-top: 0.12rem;
      }
      .register-card .auth-link {
          text-align: center;
          margin-top: 1.3rem;
          font-size: 0.97rem;
          color: #4B3145;
      }
      .register-card .auth-link a {
          color: #EE6983;
          font-weight: 600;
          text-decoration: underline;
      }

      @media (max-width: 500px) {
          .register-card {
              padding: 1rem 0.3rem 0.7rem 0.3rem;
              max-width: 98vw;
          }
          .register-card h2 {
              font-size: 1.3rem;
          }
      }
    </style>
</head>
<body>
    <div class="register-card">
        <h2 class="text-center mb-4">Create Account</h2>

        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>
        <c:if test="${not empty success}">
            <div class="alert alert-success">${success}</div>
        </c:if>

        <form action="register" method="post" id="registerForm" novalidate>
            <div class="mb-3 position-relative">
                <label for="username" class="form-label">Username</label>
                <input type="text" class="form-control" id="username" name="name" required minlength="3" maxlength="20" pattern="^[a-zA-Z0-9_]+$" >
                <div class="invalid-feedback">Username must be 3-20 characters, letters, numbers, or underscores only.</div>
            </div>

            <div class="mb-3 position-relative">
                <label for="email" class="form-label">Email Address</label>
                <input type="email" class="form-control" id="email" name="email" required >
                <div class="invalid-feedback">Provide a valid email address.</div>
            </div>

            <div class="mb-3 position-relative">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" name="password" required minlength="8" placeholder="At least 8 chars, 1 uppercase, 1 lowercase, 1 number">
                <button type="button" class="password-toggle" onclick="togglePassword('password', 'toggleIcon1')">
                    <i class="fas fa-eye" id="toggleIcon1"></i>
                </button>
                <div class="invalid-feedback">Password must meet requirements.</div>
                <div class="password-strength-bar mt-1">
                    <div id="passwordStrengthFill" class="password-strength-fill"></div>
                </div>
            </div>

            <div class="mb-3 position-relative">
                <label for="confirmPassword" class="form-label">Confirm Password</label>
                <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                <button type="button" class="password-toggle" onclick="togglePassword('confirmPassword', 'toggleIcon2')">
                    <i class="fas fa-eye" id="toggleIcon2"></i>
                </button>
                <div class="invalid-feedback" id="confirmPasswordFeedback">Passwords must match.</div>
            </div>

            <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" id="agreeTerms" name="agreeTerms" required>
                <label class="form-check-label" for="agreeTerms">
                    I agree to the <a href="#" style="color:#667eea;">Terms of Service</a> and <a href="#" style="color:#667eea;">Privacy Policy</a>
                </label>
                <div class="invalid-feedback">You must agree to terms.</div>
            </div>

            <button type="submit" class="btn btn-primary w-100">Create Account</button>
        </form>

        <p class="text-center mt-3">
            Already have an account? <a href="login.jsp" style="color:#667eea;">Sign in here</a>
        </p>
    </div>

    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        function togglePassword(fieldId, iconId) {
            const field = document.getElementById(fieldId);
            const icon = document.getElementById(iconId);
            if (field.type === 'password') {
                field.type = 'text';
                icon.classList.replace('fa-eye', 'fa-eye-slash');
            } else {
                field.type = 'password';
                icon.classList.replace('fa-eye-slash', 'fa-eye');
            }
        }

        const password = document.getElementById('password');
        const confirmPassword = document.getElementById('confirmPassword');
        const confirmFeedback = document.getElementById('confirmPasswordFeedback');
        const passwordStrengthFill = document.getElementById('passwordStrengthFill');
        const registerForm = document.getElementById('registerForm');

        password.addEventListener('input', () => {
            const val = password.value;
            const conditions = [
                val.length >= 8,
                /[A-Z]/.test(val),
                /[a-z]/.test(val),
                /[0-9]/.test(val)
            ];
            const count = conditions.filter(Boolean).length;
            password.classList.remove('is-invalid');
            switch(count) {
                case 0: passwordStrengthFill.style.width = '0%'; break;
                case 1: passwordStrengthFill.className = 'password-strength-fill strength-weak'; break;
                case 2: passwordStrengthFill.className = 'password-strength-fill strength-fair'; break;
                case 3: passwordStrengthFill.className = 'password-strength-fill strength-good'; break;
                case 4: passwordStrengthFill.className = 'password-strength-fill strength-strong'; break;
            }
        });

        confirmPassword.addEventListener('input', () => {
            if(confirmPassword.value && confirmPassword.value !== password.value) {
                confirmPassword.classList.add('is-invalid');
                confirmFeedback.textContent = 'Passwords do not match.';
            } else {
                confirmPassword.classList.remove('is-invalid');
            }
        });

        registerForm.addEventListener('submit', function(event) {
            let valid = true;

            if (!registerForm.checkValidity()) {
                valid = false;
            }
            if (password.value !== confirmPassword.value) {
                confirmPassword.classList.add('is-invalid');
                valid = false;
            }
            const passVal = password.value;
            const passReqMet = passVal.length >= 8 && /[A-Z]/.test(passVal) && /[a-z]/.test(passVal) && /[0-9]/.test(passVal);
            if (!passReqMet) {
                password.classList.add('is-invalid');
                valid = false;
            }

            if (!valid) {
                event.preventDefault();
                event.stopPropagation();
            }
            registerForm.classList.add('was-validated');
        });
    </script>
</body>
</html>
