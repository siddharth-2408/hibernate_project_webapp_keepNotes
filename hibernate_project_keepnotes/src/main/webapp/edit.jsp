<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entity.KeepNotesData"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Edit Note</title>
		<link rel="stylesheet" href="css/notes.css">
		<%@include file="css/all_jsp.css" %> 
	</head>
	<body>
		<div class="navbar-container">
        	<%@include file="navbar.jsp" %>
        </div>
        	<%
        		int noteId=Integer.parseInt(request.getParameter("note_id").trim());
	        	Session session2 = FactoryProvider.getFactory().openSession();	
	        	KeepNotesData note = (KeepNotesData)session2.get(KeepNotesData.class, noteId);
	        	
        	%>
	        	<div class="container">
			        <div class="form-container">
			            <h2 class="text-center">Edit Note</h2>
			            <hr>
			            <form action="UpdateNoteServlet" method="post">
			            	<input value=<%=note.getId() %> name="noteId" type="hidden">
			                <div class="mb-3">
			                    <label for="title" class="form-label"><strong>Title</strong></label>
			                    <input type="text" value=<%=note.getTitle() %> name="title" class="form-control" id="title" placeholder="Enter Title..." required>
			                </div>
			                <div class="mb-3">
			                    <label for="content" class="form-label"><strong>Content</strong></label>
			                    <textarea name="content" id="content"required> <%=note.getContent() %></textarea>
			                </div>
			                <button type="submit" class="btn btn-success w-100">Update</button>
			            </form>
			        </div>
		    	</div>
	</body>
</html>