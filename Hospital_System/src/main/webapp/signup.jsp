
<%@ page import="java.sql.Connection" %>
<%@ page import="com.db.DBConnect" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="component/allcss.jsp" %>
<style>
    .login-container {
        max-width: 500px;
        margin: 0 auto;
    }

    .card {
        border: none;
        box-shadow: 0 4px 24px rgba(0, 0, 0, 0.1);
        border-radius: 12px;
    }

    .card-header {
        background: linear-gradient(to right, #1e88e5, #0d47a1);
        color: white;
        border-radius: 12px 12px 0 0 !important;
        text-align: center;
        padding: 1.5rem;
    }

    .btn-primary {
        background: linear-gradient(to right, #1e88e5, #0d47a1);
        border: none;
        font-weight: bold;
        padding: 10px 16px;
    }

    .btn-primary:hover {
        background: linear-gradient(to right, #0d47a1, #1e88e5);
    }

    .hospital-logo {
        width: 80px;
        height: 80px;
        background-color: white;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 1rem auto;
    }

    .form-label {
        font-weight: 500;
    }
</style>
<body>
<%@ include file="component/navbar.jsp" %>



<div class="container py-5">
    <div class="login-container">
        <div class="card">
            <div class="card-header">
                <div class="hospital-logo">
                    <i class="fas fa-hospital-user fa-3x text-primary"></i>
                </div>
                <h3 class="mb-0">User Register</h3>
                <p class="mb-0">Enter details to Register!</p>
            </div>

            <div class="card-body p-4">


                <form action="user_Register" method="post">
                    <div class="mb-3">
                        <label for="fullname" class="form-label">Full Name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter your name" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Email Address</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                        </div>
                    </div>

                    <div class="mb-4">
                        <label for="password" class="form-label">Password</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="fas fa-lock"></i></span>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                        </div>
                    </div>

                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary btn-lg">Login <i class="fas fa-sign-in-alt ms-2"></i></button>
                    </div>

                    <br>
                    Already have an account ? <a href="user_login.jsp" class="text-decoration-none">Login now</a>
                </form>
            </div>


        </div>

        <div class="text-center mt-4">
            <a href="index.jsp" class="text-decoration-none">
                <i class="fas fa-arrow-left me-1"></i> Back to Home
            </a>
        </div>
    </div>
</div>
<%@ include file="component/footer.jsp" %>
</body>
</html>