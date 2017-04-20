package commerce;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login_servlet
 */

public class Login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public Login_servlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String user = request.getParameter("username");
		String password = request.getParameter("password");
		//response.setHeader("Cache-Control", "no-cache, no-store"); // HTTP 1.1.
	    //response.setHeader("Pragma", "no-cache"); // HTTP 1.0.

		if (LoginClass.validate(user, password)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			System.out.println("----------"+user);
						RequestDispatcher k = request.getRequestDispatcher("Homepage.jsp");
			k.include(request, response);
		} else {
			PrintWriter out = response.getWriter();
			RequestDispatcher k = request.getRequestDispatcher("singin.html");
			request.setAttribute("Error","Incorrect Credentials, Please try again");
			k.include(request, response);
		}
	}

}
