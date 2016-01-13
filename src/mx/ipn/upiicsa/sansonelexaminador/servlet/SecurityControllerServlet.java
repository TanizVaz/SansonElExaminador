package mx.ipn.upiicsa.sansonelexaminador.servlet;


import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mx.ipn.upiicsa.sansonelexaminador.dao.UserDAO;
import mx.ipn.upiicsa.sansonelexaminador.security.Resource;
import mx.ipn.upiicsa.sansonelexaminador.util.Attribute;
import mx.ipn.upiicsa.sansonelexaminador.util.Message;
import mx.ipn.upiicsa.sansonelexaminador.util.Utility;
import mx.ipn.upiicsa.sansonelexaminador.valueobject.UserValueObject;

/**
 *
 * @author Guillermo E. Martinez Barriga
 *
 */

public class SecurityControllerServlet extends HttpServlet
{
	/**
	 *
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		String nextView = null;
		String action = null;

		RequestDispatcher rd = null;

		action = request.getParameter(Attribute.Request.ACTION);

		if(action == null || action.equals("")) {

			request.setAttribute(Attribute.Request.ERROR, Message.Form.NO_ACTION_PROVIDED);
			nextView = Resource.ErrorPage.URL;
		}
		else if(action.equals("authenticate")) {

			nextView = authenticate(request);
		}
		else if(action.equals("changePassword")) {
			nextView = changePassword(request);
		}
		else if(action.equals("newUser")){
			try {
				nextView = newUser(request);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else{
			nextView = Resource.ErrorPage.URL;
			request.setAttribute(Attribute.Request.ERROR, Message.Form.NO_ACTION_PROVIDED);
		}

		rd = getServletContext().getRequestDispatcher(nextView);
		rd.forward(request, response); // Llamar siguiente vista

	}

	private String newUser(HttpServletRequest request) throws ClassNotFoundException, SQLException {
		String sigue=null;
		String nombre = request.getParameter("name");
		String apellido = request.getParameter("lastname");
		String id_usuario = request.getParameter("id_usuario");
		String role = request.getParameter("rol");
		String password = request.getParameter("password");
		String password1 = request.getParameter("password1");
		String res_sec1 = request.getParameter("res_sec1");
		String res_sec2 = request.getParameter("res_sec2");
		String res_sec3 = request.getParameter("res_sec3");
		UserDAO newUser = new UserDAO();
		newUser.newUser(nombre, apellido,id_usuario,role ,password,res_sec1 ,res_sec2, res_sec3);
		sigue = Resource.AltaSatsfactoria.URL;
		return sigue;
	}

	/**
	 * Metodo para login
	 * @param request
	 * @return
	 */
	private String authenticate(HttpServletRequest request)
	{
		String idUsuario  = null;
		String password = null;
		String nextView  = null;
		UserValueObject usuario = null;

		UserDAO dao = null;

		try {

			idUsuario = request.getParameter("id_usuario");
			password = request.getParameter("password");

			if (Utility.hasAnStringThatIsNullOrEmpty(idUsuario,password)) {

				request.setAttribute(Attribute.Request.ERROR, Message.Form.INCOMPLETE_DATA);
				nextView = Resource.ErrorPage.URL;
			}
			else {

				nextView = Resource.IndexPage.URL;

				if(request.getSession().getAttribute(Attribute.Session.CURRENT_USER) == null) {

					dao = new UserDAO();
					usuario = dao.autenticar(idUsuario, password);

					if(usuario != null) {

						request.getSession().setAttribute(Attribute.Session.CURRENT_USER, usuario);
					}
					else {

						request.getSession().removeAttribute(Attribute.Session.CURRENT_USER);
						request.setAttribute(Attribute.Request.MESSAGE, Message.Credentials.NOT_VALID_USER_PASSWORD);
						nextView = Resource.LoginPage.URL;
					}
				}
				else {

					request.setAttribute(Attribute.Request.MESSAGE, Message.Session.USER_ALREADY_LINKED_TO_SESSION);
				}
			}
			return nextView;

		} catch (ClassNotFoundException ex) {

			request.setAttribute(Attribute.Request.ERROR, ex.getMessage());
			nextView = Resource.ErrorPage.URL;
			return nextView;

		} catch (NoClassDefFoundError ex) {

			request.setAttribute(Attribute.Request.ERROR, ex.getMessage());
			nextView = Resource.ErrorPage.URL;
			return nextView;

		} catch (SQLException ex) {

			request.setAttribute(Attribute.Request.ERROR, ex.getMessage());
			nextView = Resource.ErrorPage.URL;
			return nextView;
		}
	}
	/**
	 *
	 * Metodo para cambiar Contrasena
	 */
	private String changePassword(HttpServletRequest request)
	{
		String idUsuario  = null;
		String currentPassword1 = null;
		String currentPassword2= null;
		String newPassword = null;

		String nextView  = null;
		UserValueObject usuario = null;

		UserDAO dao = null;

		try {

			idUsuario = request.getParameter("id_usuario");
			currentPassword1 = request.getParameter("currentPassword1");
			currentPassword2 = request.getParameter("currentPassword2");
			newPassword = request.getParameter("newPassword");

			if (Utility.hasAnStringThatIsNullOrEmpty(idUsuario, currentPassword1, currentPassword2, newPassword) ) {

				request.setAttribute(Attribute.Request.ERROR, Message.Form.INCOMPLETE_DATA);
				nextView = Resource.ErrorPage.URL;
			}
			else {
				if(request.getSession().getAttribute(Attribute.Session.CURRENT_USER) == null) {

					dao = new UserDAO();

					if(currentPassword1.equals(currentPassword2)) {

						// !!!!!
						dao.updatePassword(idUsuario, currentPassword1, newPassword);
						request.setAttribute(Attribute.Request.MESSAGE, Message.Credentials.PASSWORD_WAS_UPDATED);
						nextView = Resource.IndexPage.URL;
					}
					else {

						request.setAttribute(Attribute.Request.ERROR, Message.Credentials.PASSWORDS_ARE_NOT_EQUAL);
						nextView = Resource.IndexPage.URL;
					}
				}
				else {

					request.setAttribute(Attribute.Request.ERROR, Message.Session.NO_USER_LINKED_TO_SESSION);
					nextView = Resource.IndexPage.URL;
				}

			}
			return nextView;

		} catch (ClassNotFoundException ex) {

			request.setAttribute(Attribute.Request.ERROR, ex.getMessage());
			nextView = Resource.ErrorPage.URL;
			return nextView;

		} catch (NoClassDefFoundError ex) {

			request.setAttribute(Attribute.Request.ERROR, ex.getMessage());
			nextView = Resource.ErrorPage.URL;
			return nextView;

		} catch (SQLException ex) {

			request.setAttribute(Attribute.Request.ERROR, ex.getMessage());
			nextView = Resource.ErrorPage.URL;
			return nextView;
		}
	}


}
