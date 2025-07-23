<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Admin Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="doctors.jsp">Doctors</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="patients.jsp">Patients</a>
                </li>
                <li class="nav-item">
<a class="nav-link" href="admin/logout">Logout</a>
                </li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <h2>Welcome, Admin</h2>

        <!-- Card Buttons for Doctors, Appointments, Users, and Specialists -->
        <div class="row">
            <!-- Doctors Card -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        Doctors
                    </div>
                    <div class="card-body">
                        <p class="card-text">Manage doctor details, specialties, and schedules.</p>
                        <a href="doctors.jsp" class="btn btn-primary btn-block">Manage Doctors</a>
                    </div>
                </div>
            </div>

            <!-- Appointments Card -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        Appointments
                    </div>
                    <div class="card-body">
                        <p class="card-text">View and manage appointments for patients and doctors.</p>
                        <a href="appointments.jsp" class="btn btn-success btn-block">Manage Appointments</a>
                    </div>
                </div>
            </div>

            <!-- Users Card -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <div class="card-header bg-info text-white">
                        Users
                    </div>
                    <div class="card-body">
                        <p class="card-text">View and manage all registered users.</p>
                        <a href="users.jsp" class="btn btn-info btn-block">Manage Users</a>
                    </div>
                </div>
            </div>

            <!-- Specialists Card -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <div class="card-header bg-warning text-white">
                        Specialists
                    </div>
                    <div class="card-body">
                        <p class="card-text">View and manage specialist categories.</p>
                        <a href="specialists.jsp" class="btn btn-warning btn-block">Manage Specialists</a>
                    </div>
                </div>
            </div>
        </div>




    </div>

    <!-- Bootstrap JS & jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
