<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Welcome To Keep Notes</title>

    <!-- Link to external CSS file -->
    <%@include file="css/all_jsp.css" %> 
    <link rel="stylesheet" href="css/home.css">
</head>
<body>
    <!-- Navbar -->
    <div class="navbar-container">
        <%@include file="navbar.jsp" %>
    </div>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Welcome to Keep Notes</h1>
        <p>A simple and efficient note-taking app built with Hibernate and Java.</p>
        <a href="my_notes.jsp" class="btn-primary">View Your Notes</a>
    </div>

    <!-- About Section -->
    <div class="about">
        <h2>About This Project</h2>
        <p>Keep Notes is a note-taking web application developed using **Java, JSP, Hibernate, and MySQL**. It allows users to store, update, and delete their personal notes efficiently.</p>

        <div class="features">
            <div class="feature-box">
                <h3>Hibernate ORM</h3>
                <p>Uses Hibernate for seamless database operations.</p>
            </div>
            <div class="feature-box">
                <h3>CRUD Operations</h3>
                <p>Create, Read, Update, and Delete notes with ease.</p>
            </div>
            <div class="feature-box">
                <h3>User-Friendly UI</h3>
                <p>Simple and intuitive interface for a great experience.</p>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <div class="footer">
        <p>&copy; 2025 Keep Notes | Built with Java & Hibernate</p>
    </div>

</body>
</html>
