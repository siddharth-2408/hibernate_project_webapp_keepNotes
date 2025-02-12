package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entity.KeepNotesData;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SaveNoteServlet
 */
public class SaveNoteServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;

    public SaveNoteServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String title = request.getParameter("title");
			String content = request.getParameter("content");
			KeepNotesData note = new KeepNotesData(title, content, new Date());
			
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			session.save(note);
			
			tx.commit();
			session.close();
			//Optional
			response.setContentType("text/html");
			//
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center'>Note Added Successfully</h1>");
			out.println("<h1 style='text-align:center'><a href=my_notes.jsp>View My Notes</a></h1>");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}

	}

}
