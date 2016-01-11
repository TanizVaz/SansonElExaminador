package mx.ipn.upiicsa.sansonelexaminador.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mx.ipn.upiicsa.sansonelexaminador.security.Resource;
import mx.ipn.upiicsa.sansonelexaminador.util.Attribute;
import mx.ipn.upiicsa.sansonelexaminador.util.Message;

/**
 * 
 * @author Guillermo E. Martinez Barriga
 *
 */

public class LogoutControllerServlet extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) 
	throws ServletException, IOException 
	{
		String nextView = null;
		RequestDispatcher rd = null;
		HttpSession session = null;
		
		try
		{
			session = request.getSession();
			session.setAttribute(Attribute.Session.CURRENT_USER, null);  // Se desliga usuario de la session
			
			request.setAttribute(Attribute.Request.MESSAGE, Message.Session.SESSION_ENDED);

			rd = getServletContext().getRequestDispatcher(Resource.IndexPage.URL);
			rd.forward(request, response); // Llamar siguiente vista
			return;
		}
		catch(Throwable t)
		{
			System.out.println("RegistrarAlumnoServlet.procesar() - Throwable");
			t.printStackTrace();
			
			nextView = Resource.ErrorPage.URL;
			request.setAttribute(Attribute.Request.ERROR, t);
			rd = getServletContext().getRequestDispatcher(nextView);
			rd.forward(request, response); // Llamar siguiente vista
			return;
		}
	}

}
