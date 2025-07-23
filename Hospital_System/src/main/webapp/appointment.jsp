<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Management System - Schedule Appointment</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }

        body {
            background-color: #f5f5f5;
        }

        .navbar {
            background-color: #1976d2;
            color: white;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            font-size: 1.5rem;
            font-weight: bold;
            text-decoration: none;
            color: white;
        }

        .navbar-menu {
            display: flex;
            gap: 20px;
        }

        .navbar-menu a {
            color: white;
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .navbar-menu a:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }

        .navbar-menu a.active {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .user-avatar {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.2);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 30px 20px;
        }

        .page-title {
            margin-bottom: 30px;
            color: #333;
        }

        .card {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
        }

        .card-header {
            background-color: #f9f9f9;
            padding: 15px 20px;
            border-bottom: 1px solid #eee;
        }

        .card-title {
            font-size: 1.25rem;
            color: #333;
            margin: 0;
        }

        .card-body {
            padding: 20px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #555;
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            font-size: 1rem;
        }

        .form-control:focus {
            outline: none;
            border-color: #1976d2;
            box-shadow: 0 0 0 2px rgba(25, 118, 210, 0.2);
        }

        .btn {
            padding: 12px 24px;
            border: none;
            border-radius: 4px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-primary {
            background-color: #1976d2;
            color: white;
        }

        .btn-primary:hover {
            background-color: #1565c0;
        }

        .btn-outline {
            background-color: transparent;
            border: 1px solid #ddd;
            color: #666;
        }

        .btn-outline:hover {
            background-color: #f5f5f5;
        }

        .btn-group {
            display: flex;
            gap: 10px;
            justify-content: flex-end;
        }

        .form-grid-full {
            grid-column: 1 / -1;
        }

        .doctor-selection {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-top: 20px;
        }

        .doctor-card {
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 15px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .doctor-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .doctor-card.selected {
            border-color: #1976d2;
            background-color: rgba(25, 118, 210, 0.05);
        }

        .doctor-info {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .doctor-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background-color: #f0f0f0;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .doctor-details h4 {
            margin: 0 0 5px 0;
            color: #333;
        }

        .doctor-details p {
            margin: 0;
            color: #666;
            font-size: 0.9rem;
        }

        .time-slots {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 10px;
            margin-top: 15px;
        }

        .time-slot {
            padding: 8px;
            text-align: center;
            border: 1px solid #ddd;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.3s;
        }

        .time-slot:hover {
            background-color: #f5f5f5;
        }

        .time-slot.selected {
            background-color: #1976d2;
            color: white;
            border-color: #1976d2;
        }

        .time-slot.disabled {
            opacity: 0.5;
            cursor: not-allowed;
            background-color: #f9f9f9;
        }

        .calendar {
            margin-top: 20px;
        }

        .calendar-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .calendar-nav {
            display: flex;
            gap: 10px;
        }

        .calendar-nav button {
            background: none;
            border: none;
            cursor: pointer;
            padding: 5px;
        }

        .calendar-grid {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            gap: 5px;
        }

        .calendar-day-header {
            text-align: center;
            font-weight: bold;
            padding: 10px;
            color: #666;
        }

        .calendar-day {
            aspect-ratio: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 1px solid #eee;
            border-radius: 4px;
            cursor: pointer;
            transition: all 0.2s;
        }

        .calendar-day:hover:not(.disabled) {
            background-color: #f5f5f5;
        }

        .calendar-day.selected {
            background-color: #1976d2;
            color: white;
            border-color: #1976d2;
        }

        .calendar-day.today {
            border-color: #1976d2;
            color: #1976d2;
            font-weight: bold;
        }

        .calendar-day.disabled {
            opacity: 0.3;
            cursor: not-allowed;
            background-color: #f9f9f9;
        }

        @media (max-width: 768px) {
            .form-grid {
                grid-template-columns: 1fr;
            }

            .doctor-selection {
                grid-template-columns: 1fr;
            }

            .time-slots {
                grid-template-columns: repeat(2, 1fr);
            }
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <a href="dashboard.jsp" class="navbar-brand">Hospital MS</a>
        <div class="navbar-menu">
            <a href="dashboard.jsp">Dashboard</a>
            <a href="appointment.jsp" class="active">Appointments</a>
            <a href="patients.jsp">Patients</a>
            <a href="reports.jsp">Reports</a>
        </div>
        <div class="user-info">
            <div class="user-avatar">
                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                    <circle cx="12" cy="7" r="4"></circle>
                </svg>
            </div>
            <span>Dr. Smith</span>
        </div>
    </nav>

    <div class="container">
        <h1 class="page-title">Schedule Appointment</h1>

        <div class="card">
            <div class="card-header">
                <h2 class="card-title">Appointment Details</h2>
            </div>
            <div class="card-body">
                <form action="save_appointment.jsp" method="post">
                    <div class="form-grid">
                        <div class="form-group">
                            <label for="patientName">Patient Name</label>
                            <input type="text" id="patientName" name="patientName" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="patientId">Patient ID (if existing)</label>
                            <input type="text" id="patientId" name="patientId" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone Number</label>
                            <input type="tel" id="phone" name="phone" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Email Address</label>
                            <input type="email" id="email" name="email" class="form-control">
                        </div>
                        <div class="form-group form-grid-full">
                            <label for="appointmentType">Appointment Type</label>
                            <select id="appointmentType" name="appointmentType" class="form-control" required>
                                <option value="">Select an appointment type</option>
                                <option value="consultation">Consultation</option>
                                <option value="followup">Follow-up</option>
                                <option value="procedure">Procedure</option>
                                <option value="emergency">Emergency</option>
                                <option value="routine">Routine Check-up</option>
                            </select>
                        </div>
                        <div class="form-group form-grid-full">
                            <label for="department">Department</label>
                            <select id="department" name="department" class="form-control" required onchange="loadDoctors()">
                                <option value="">Select a department</option>
                                <option value="cardiology">Cardiology</option>
                                <option value="neurology">Neurology</option>
                                <option value="orthopedics">Orthopedics</option>
                                <option value="pediatrics">Pediatrics</option>
                                <option value="dermatology">Dermatology</option>
                                <option value="general">General Medicine</option>
                            </select>
                        </div>
                        <div class="form-group form-grid-full">
                            <label>Select a Doctor</label>
                            <div class="doctor-selection" id="doctorSelection">
                                <!-- Doctor cards will be loaded here -->
                                <div class="doctor-card" onclick="selectDoctor(this, 'Dr. James Wilson')">
                                    <div class="doctor-info">
                                        <div class="doctor-avatar">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="12" cy="7" r="4"></circle>
                                            </svg>
                                        </div>
                                        <div class="doctor-details">
                                            <h4>Dr. James Wilson</h4>
                                            <p>Cardiology • 10+ years exp.</p>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">9:00 AM</div>
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">10:30 AM</div>
                                        <div class="time-slot disabled" onclick="event.stopPropagation();">11:45 AM</div>
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">2:15 PM</div>
                                    </div>
                                </div>

                                <div class="doctor-card" onclick="selectDoctor(this, 'Dr. Sarah Johnson')">
                                    <div class="doctor-info">
                                        <div class="doctor-avatar">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="12" cy="7" r="4"></circle>
                                            </svg>
                                        </div>
                                        <div class="doctor-details">
                                            <h4>Dr. Sarah Johnson</h4>
                                            <p>Cardiology • 8 years exp.</p>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">9:30 AM</div>
                                        <div class="time-slot disabled" onclick="event.stopPropagation();">11:00 AM</div>
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">1:45 PM</div>
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">3:30 PM</div>
                                    </div>
                                </div>

                                <div class="doctor-card" onclick="selectDoctor(this, 'Dr. Michael Chen')">
                                    <div class="doctor-info">
                                        <div class="doctor-avatar">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                                <circle cx="12" cy="7" r="4"></circle>
                                            </svg>
                                        </div>
                                        <div class="doctor-details">
                                            <h4>Dr. Michael Chen</h4>
                                            <p>Cardiology • 15 years exp.</p>
                                        </div>
                                    </div>
                                    <div class="time-slots">
                                        <div class="time-slot disabled" onclick="event.stopPropagation();">9:00 AM</div>
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">11:15 AM</div>
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">2:00 PM</div>
                                        <div class="time-slot" onclick="event.stopPropagation(); selectTimeSlot(this)">4:30 PM</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group form-grid-full">
                            <label>Select a Date</label>
                            <div class="calendar">
                                <div class="calendar-header">
                                    <h3 id="currentMonth">March 2025</h3>
                                    <div class="calendar-nav">
                                        <button type="button" onclick="prevMonth()">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="15 18 9 12 15 6"></polyline>
                                            </svg>
                                        </button>
                                        <button type="button" onclick="nextMonth()">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="9 18 15 12 9 6"></polyline>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                                <div class="calendar-grid">
                                    <div class="calendar-day-header">Sun</div>
                                    <div class="calendar-day-header">Mon</div>
                                    <div class="calendar-day-header">Tue</div>
                                    <div class="calendar-day-header">Wed</div>
                                    <div class="calendar-day-header">Thu</div>
                                    <div class="calendar-day-header">Fri</div>
                                    <div class="calendar-day-header">Sat</div>

                                    <div class="calendar-day disabled">25</div>
                                    <div class="calendar-day disabled">26</div>
                                    <div class="calendar-day disabled">27</div>
                                    <div class="calendar-day disabled">28</div>
                                    <div class="calendar-day">1</div>
                                    <div class="calendar-day">2</div>
                                    <div class="calendar-day">3</div>

                                    <div class="calendar-day">4</div>
                                    <div class="calendar-day">5</div>
                                    <div class="calendar-day">6</div>
                                    <div class="calendar-day">7</div>
                                    <div class="calendar-day">8</div>
                                    <div class="calendar-day">9</div>
                                    <div class="calendar-day">10</div>

                                    <div class="calendar-day">11</div>
                                    <div class="calendar-day">12</div>
                                    <div class="calendar-day">13</div>
                                    <div class="calendar-day">14</div>
                                    <div class="calendar-day">15</div>
                                    <div class="calendar-day">16</div>
                                    <div class="calendar-day">17</div>

                                    <div class="calendar-day today selected" onclick="selectDate(this)">18</div>
                                    <div class="calendar-day" onclick="selectDate(this)">19</div>
                                    <div class="calendar-day" onclick="selectDate(this)">20</div>
                                    <div class="calendar-day" onclick="selectDate(this)">21</div>
                                    <div class="calendar-day" onclick="selectDate(this)">22</div>
                                    <div class="calendar-day" onclick="selectDate(this)">23</div>
                                    <div class="calendar-day" onclick="selectDate(this)">24</div>

                                    <div class="calendar-day" onclick="selectDate(this)">25</div>
                                    <div class="calendar-day" onclick="selectDate(this)">26</div>
                                    <div class="calendar-day" onclick="selectDate(this)">27</div>
                                    <div class="calendar-day" onclick="selectDate(this)">28</div>
                                    <div class="calendar-day" onclick="selectDate(this)">29</div>
                                    <div class="calendar-day" onclick="selectDate(this)">30</div>
                                    <div class="calendar-day" onclick="selectDate(this)">31</div>
                                </div>
                            </div>
                        </div>

                        <div class="form-group form-grid-full">
                            <label for="notes">Additional Notes</label>
                            <textarea id="notes" name="notes" class="form-control" rows="4"></textarea>
                        </div>
                    </div>

                    <input type="hidden" id="selectedDoctor" name="selectedDoctor">
                    <input type="hidden" id="selectedTime" name="selectedTime">
                    <input type="hidden" id="selectedDate" name="selectedDate" value="2025-03-18">

                    <div class="btn-group">
                        <button type="button" class="btn btn-outline" onclick="window.location='dashboard.jsp'">Cancel</button>
                        <button type="submit" class="btn btn-primary">Schedule Appointment</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Select doctor
        function selectDoctor(element, doctorName) {
            // Remove selected class from all doctor cards
            const doctorCards = document.querySelectorAll('.doctor-card');
            doctorCards.forEach(card => {
                card.classList.remove('selected');
            });

            // Add selected class to clicked doctor card
            element.classList.add('selected');

            // Update hidden input
            document.getElementById('selectedDoctor').value = doctorName;
        }

        // Select time slot
        function selectTimeSlot(element) {
            // Remove selected class from all time slots
            const timeSlots = document.querySelectorAll('.time-slot');
            timeSlots.forEach(slot => {
                slot.classList.remove('selected');
            });

            // Add selected class to clicked time slot
            element.classList.add('selected');

            // Update hidden input
            document.getElementById('selectedTime').value = element.innerText;
        }

        // Select date
        function selectDate(element) {
            // Remove selected class from all calendar days
            const calendarDays = document.querySelectorAll('.calendar-day');
            calendarDays.forEach(day => {
                day.classList.remove('selected');
            });

            // Add selected class to clicked calendar day
            element.classList.add('selected');

            // Get the current month and year
            const monthYear = document.getElementById('currentMonth').innerText.split(' ');
            const month = getMonthNumber(monthYear[0]);
            const year = monthYear[1];

            // Update hidden input (format: YYYY-MM-DD)
            const day = element.innerText.padStart(2, '0');
            const formattedMonth = String(month).padStart(2, '0');
            document.getElementById('selectedDate').value = `${year}-${formattedMonth}-${day}`;
        }

        // Get month number from month name
        function getMonthNumber(monthName) {
            const months = {
                'January': 1, 'February': 2, 'March': 3, 'April': 4, 'May': 5, 'June': 6,
                'July': 7, 'August': 8, 'September': 9, 'October': 10, 'November': 11, 'December': 12
            };
            return months[monthName];
        }

        // Navigation for calendar
        function prevMonth() {
            // This is a placeholder function - in a real application,
            // this would update the calendar display to the previous month
            alert('Navigate to previous month - This would be implemented in a full application');
        }

        function nextMonth() {
            // This is a placeholder function - in a real application,
            // this would update the calendar display to the next month
            alert('Navigate to next month - This would be implemented in a full application');
        }

        // Load doctors based on department
        function loadDoctors() {
            const department = document.getElementById('department').value;
            // In a real application, this would make an AJAX call to get doctors for the selected department
            console.log(`Loading doctors for department: ${department}`);
            // For demo purposes, we're not actually changing the doctors
        }
    </script>
</body>
</html>