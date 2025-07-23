<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>City Hospital - Your Health, Our Priority</title>
<%@include file="component/allcss.jsp" %>
<style>
    .service-card:hover, .doctor-card:hover, .facility-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1) !important;
        transition: all 0.3s ease;
    }

    .footer-link {
        color: rgba(255, 255, 255, 0.7);
        text-decoration: none;
    }

    .footer-link:hover {
        color: white;
        text-decoration: underline;
    }
</style>
</head>
<body>

<%@ include file="component/navbar.jsp" %>

<!-- Carousel Section -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/bg1.jpg" class="d-block w-100" alt="Hospital Building">

        </div>
        <div class="carousel-item">
            <img src="img/bg2.jpg" class="d-block w-100" alt="Medical Staff">

        </div>
        <div class="carousel-item">
            <img src="img/bg3.jpg" class="d-block w-100" alt="Medical Equipment">

        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<!-- Key Features Section -->
<div class="container mt-5 mb-5">
    <div class="text-center mb-4">
        <h2 class="display-5 fw-bold text-primary">Our Key Features</h2>
        <p class="lead text-muted">Providing exceptional healthcare with a personal touch</p>
        <div class="d-flex justify-content-center">
            <hr class="my-4 w-25" style="height: 3px; opacity: 1;" class="bg-primary">
        </div>
    </div>

    <div class="row g-4">
        <!-- Feature 1 -->
        <div class="col-md-4">
            <div class="card h-100 shadow border-0 rounded-3 text-center">
                <div class="card-body p-4">
                    <div class="bg-primary text-white rounded-circle mb-3 mx-auto d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                        <i class="fas fa-user-md fa-2x"></i>
                    </div>
                    <h3 class="card-title fw-bold">Expert Doctors</h3>
                    <p class="card-text">Our hospital has a team of experienced and specialized doctors committed to providing the best care.</p>
                </div>
            </div>
        </div>

        <!-- Feature 2 -->
        <div class="col-md-4">
            <div class="card h-100 shadow border-0 rounded-3 text-center">
                <div class="card-body p-4">
                    <div class="bg-success text-white rounded-circle mb-3 mx-auto d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                        <i class="fas fa-procedures fa-2x"></i>
                    </div>
                    <h3 class="card-title fw-bold">24/7 Service</h3>
                    <p class="card-text">Round-the-clock emergency care and services to ensure you receive help whenever needed.</p>
                </div>
            </div>
        </div>

        <!-- Feature 3 -->
        <div class="col-md-4">
            <div class="card h-100 shadow border-0 rounded-3 text-center">
                <div class="card-body p-4">
                    <div class="bg-danger text-white rounded-circle mb-3 mx-auto d-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                        <i class="fas fa-heartbeat fa-2x"></i>
                    </div>
                    <h3 class="card-title fw-bold">Advanced Technology</h3>
                    <p class="card-text">State-of-the-art medical equipment and technology for accurate diagnosis and treatment.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Services Section -->
<div class="container-fluid py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="display-5 fw-bold text-primary">Our Services</h2>
            <p class="lead text-muted">Comprehensive healthcare services for all your needs</p>
            <div class="d-flex justify-content-center">
                <hr class="my-4 w-25" style="height: 3px; opacity: 1;" class="bg-primary">
            </div>
        </div>

        <div class="row g-4">
            <div class="col-lg-4 col-md-6">
                <div class="card h-100 border-0 shadow service-card">
                    <img src="img/cardiology.jpg" class="card-img-top" alt="Cardiology">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Cardiology</h4>
                        <p class="card-text">Comprehensive heart care services including diagnosis, treatment, and prevention of cardiovascular diseases.</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="card h-100 border-0 shadow service-card">
                    <img src="img/neurology.jpg" class="card-img-top" alt="Neurology">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Neurology</h4>
                        <p class="card-text">Specialized care for conditions affecting the brain, spinal cord, and nervous system.</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="card h-100 border-0 shadow service-card">
                    <img src="img/orthopedics.jpg" class="card-img-top" alt="Orthopedics">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Orthopedics</h4>
                        <p class="card-text">Expert care for bone and joint conditions, sports injuries, and related surgeries.</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="card h-100 border-0 shadow service-card">
                    <img src="img/pediatrics.jpg" class="card-img-top" alt="Pediatrics">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Pediatrics</h4>
                        <p class="card-text">Compassionate healthcare services specifically designed for infants, children, and adolescents.</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="card h-100 border-0 shadow service-card">
                    <img src="img/gynecology.jpg" class="card-img-top" alt="Gynecology">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Gynecology</h4>
                        <p class="card-text">Specialized healthcare services addressing women's health concerns and reproductive system.</p>
                    </div>
                </div>
            </div>

            <div class="col-lg-4 col-md-6">
                <div class="card h-100 border-0 shadow service-card">
                    <img src="img/dentalcare.jpg" class="card-img-top" alt="Dental Care">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Dental Care</h4>
                        <p class="card-text">Comprehensive dental services including preventive care, restorative treatments, and cosmetic procedures.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Facilities Section -->
<div class="container py-5">
    <div class="text-center mb-5">
        <h2 class="display-5 fw-bold text-primary">Our Facilities</h2>
        <p class="lead text-muted">State-of-the-art infrastructure for quality healthcare</p>
        <div class="d-flex justify-content-center">
            <hr class="my-4 w-25" style="height: 3px; opacity: 1;" class="bg-primary">
        </div>
    </div>

    <div class="row g-4">
        <div class="col-md-6">
            <div class="card h-100 border-0 shadow facility-card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="img/icu.jpg" class="img-fluid rounded-start h-100 w-100" style="object-fit: cover;" alt="ICU">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h4 class="card-title text-primary">Intensive Care Unit</h4>
                            <p class="card-text">Advanced ICU facilities with 24/7 monitoring and the latest life-support systems.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card h-100 border-0 shadow facility-card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="img/lab.jpg" class="img-fluid rounded-start h-100 w-100" style="object-fit: cover;" alt="Laboratory">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h4 class="card-title text-primary">Modern Laboratory</h4>
                            <p class="card-text">Fully equipped lab with advanced diagnostic capabilities for accurate testing and quick results.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card h-100 border-0 shadow facility-card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="img/operation.jpg" class="img-fluid rounded-start h-100 w-100" style="object-fit: cover;" alt="Operation Theater">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h4 class="card-title text-primary">Operation Theaters</h4>
                            <p class="card-text">State-of-the-art operation theaters equipped with the latest surgical technology.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="card h-100 border-0 shadow facility-card">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="img/mri.jpg" class="img-fluid rounded-start h-100 w-100" style="object-fit: cover;" alt="MRI">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h4 class="card-title text-primary">Imaging Center</h4>
                            <p class="card-text">Advanced imaging technologies including MRI, CT scan, X-ray, and ultrasound.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Expert Doctors Section -->
<div class="container-fluid py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="display-5 fw-bold text-primary">Our Expert Doctors</h2>
            <p class="lead text-muted">Meet our team of skilled and experienced medical professionals</p>
            <div class="d-flex justify-content-center">
                <hr class="my-4 w-25" style="height: 3px; opacity: 1;" class="bg-primary">
            </div>
        </div>

        <div class="row g-4">
            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow text-center doctor-card">
                    <img src="img/doctor1.jpg" class="card-img-top" alt="Dr. Usha Gupta">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Dr. Usha Gupta</h4>
                        <p class="text-muted">Cardiologist</p>
                        <p class="card-text">Specialized in advanced cardiac care with over 15 years of experience.</p>
                        <div class="mt-3">
                            <a href="#" class="btn btn-outline-primary btn-sm me-2"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow text-center doctor-card">
                    <img src="img/doctor2.jpg" class="card-img-top" alt="Dr. B D TIWARI">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Dr. B D Tiwari</h4>
                        <p class="text-muted">Neurologist</p>
                        <p class="card-text">Expert in neurological disorders with specialized training in stroke management.</p>
                        <div class="mt-3">
                            <a href="#" class="btn btn-outline-primary btn-sm me-2"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow text-center doctor-card">
                    <img src="img/doctor3.jpg" class="card-img-top" alt="Dr. Sudhir Singh">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Dr. Sudhir Singh</h4>
                        <p class="text-muted">Pediatrician</p>
                        <p class="card-text">Dedicated to children's health with a compassionate approach to pediatric care.</p>
                        <div class="mt-3">
                            <a href="#" class="btn btn-outline-primary btn-sm me-2"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="card h-100 border-0 shadow text-center doctor-card">
                    <img src="img/doctor4.jpg" class="card-img-top" alt="Dr. Ashok tripathi">
                    <div class="card-body">
                        <h4 class="card-title text-primary">Dr. Ashok Tripathi</h4>
                        <p class="text-muted">Orthopedic Surgeon</p>
                        <p class="card-text">Specializes in joint replacements and sports medicine with minimally invasive techniques.</p>
                        <div class="mt-3">
                            <a href="#" class="btn btn-outline-primary btn-sm me-2"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Patient Actions Section -->
<div class="container py-5">
    <div class="text-center mb-5">
        <h2 class="display-5 fw-bold text-primary">What Would You Like To Do?</h2>
        <p class="lead text-muted">We're here to help with your healthcare needs</p>
        <div class="d-flex justify-content-center">
            <hr class="my-4 w-25" style="height: 3px; opacity: 1;" class="bg-primary">
        </div>
    </div>

    <div class="row g-4 justify-content-center">
        <div class="col-lg-4 col-md-6">
            <div class="card h-100 border-0 shadow text-center">
                <div class="card-body p-5">
                    <div class="bg-primary text-white rounded-circle mb-4 mx-auto d-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
                        <i class="fas fa-calendar-alt fa-3x"></i>
                    </div>
                    <h3 class="card-title fw-bold">Book an Appointment</h3>
                    <p class="card-text">Schedule an appointment with our specialists at your convenient time.</p>
                    <a href="appointment.jsp" class="btn btn-primary mt-3">Book Now</a>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-6">
            <div class="card h-100 border-0 shadow text-center">
                <div class="card-body p-5">
                    <div class="bg-success text-white rounded-circle mb-4 mx-auto d-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
                        <i class="fas fa-user-plus fa-3x"></i>
                    </div>
                    <h3 class="card-title fw-bold">Register as Patient</h3>
                    <p class="card-text">Create your patient profile for a seamless healthcare experience.</p>
                    <a href="user_register.jsp" class="btn btn-success mt-3">Register Now</a>
                </div>
            </div>
        </div>

        <div class="col-lg-4 col-md-6">
            <div class="card h-100 border-0 shadow text-center">
                <div class="card-body p-5">
                    <div class="bg-danger text-white rounded-circle mb-4 mx-auto d-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
                        <i class="fas fa-phone-alt fa-3x"></i>
                    </div>
                    <h3 class="card-title fw-bold">Emergency Contact</h3>
                    <p class="card-text">For medical emergencies, contact our 24/7 emergency helpline.</p>
                    <a href="tel:+1800123456" class="btn btn-danger mt-3">Call Now</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<%@ include file="component/footer.jsp" %>


<!-- Bootstrap JS Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>