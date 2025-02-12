<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/notes.css"> <!-- Link to the external CSS file -->
	<%@include file="css/all_jsp.css" %> <!-- Your existing CSS file -->
	<title>Insert title here</title>
</head>
<body>
	<!-- Navbar -->
    <div class="navbar-container">
        <%@include file="navbar.jsp" %>
    </div>
    <!-- Form Container -->
    <div class="container">
        <div class="form-container">
            <h2 class="text-center">Create a New Note</h2>
            <hr>
            <form action="SaveNoteServlet" method="post">
                <div class="mb-3">
                    <label for="title" class="form-label"><strong>Title</strong></label>
                    <input type="text" name="title" class="form-control" id="title" placeholder="Enter Title..." required>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label"><strong>Content</strong></label>
                    <textarea name="content" id="content" placeholder="Enter Description..." required></textarea>
                </div>
                <button type="submit" class="btn btn-custom w-100">Add Note</button>
            </form>
        </div>
    </div>
	
</body>
</html>