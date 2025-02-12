<%@page import="com.entity.KeepNotesData"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Notes</title>
    <%@include file="css/all_jsp.css" %>
</head>
<body>
    <div class="navbar-container">
    	<%@include file="navbar.jsp" %> <!-- Including the navigation bar -->
        <br>
        <h1 class="text-uppercase text-center text-primary">My Notes</h1>
        
        <div class="row">
            <%
                Session s = FactoryProvider.getFactory().openSession();
                Query q = s.createQuery("From KeepNotesData");
                List<KeepNotesData> list = q.list();

                for (KeepNotesData note : list) {
            %>
                <div class="col-12 mb-4">
				    <div class="card full-width-card">
				        <img src="image/pic.png" class="card-img-top" style="max-width:100px; margin: auto;" alt="Notes Image">
				        <div class="card-body">
				            <h5 class="card-title"><%= note.getTitle() %></h5>
				            <p class="card-text"><%= note.getContent() %></p>
				            <a href="DeleteNoteServlet?note_id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
				            <a href="edit.jsp?note_id=<%=note.getId() %>" class="btn btn-primary">Edit</a>
				            <br>
				            <br>
				            <h6><%=note.getDate() %></h6>
				        </div>
				    </div>
				</div>

            <%
                }
                s.close();
            %>
        </div>
    </div>
</body>
</html>
