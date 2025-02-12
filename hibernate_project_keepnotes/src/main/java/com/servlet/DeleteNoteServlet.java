package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entity.KeepNotesData;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class DeleteNoteServlet
 */
public class DeleteNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			int noteId = Integer.parseInt(request.getParameter(("note_id").trim()));
			
			Session session = FactoryProvider.getFactory().openSession();
			
			KeepNotesData note = (KeepNotesData)session.get(KeepNotesData.class, noteId);
			Transaction tx = session.beginTransaction();
			session.delete(note);
			tx.commit();
			session.close();
			response.sendRedirect("my_notes.jsp");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
