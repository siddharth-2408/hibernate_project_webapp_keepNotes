package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.KeepNotesData;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class UpdateNoteServlet
 */
public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			int noteId = Integer.parseInt(request.getParameter("noteId").trim());
			
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			KeepNotesData note = (KeepNotesData)session.get(KeepNotesData.class, noteId);
			note.setTitle(title);
			note.setContent(content);
			note.setDate(new Date());
			
			tx.commit();
			session.close();
			response.sendRedirect("my_notes.jsp");
		} 
		catch (Exception e) 
		{
			System.out.println(e);
		}
	}

}
