package commerce;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignUp_servlet
 */

public class SignUp_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		//String Address2 = request.getParameter("line2");
		//String city = request.getParameter("city");
		//String state = request.getParameter("state");
		//String zip = request.getParameter("zip");
		//int zip = Integer.parseInt(a);
		//String country = request.getParameter("country");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repass = request.getParameter("repass");
		//String phone = request.getParameter("phone");
		//int phone = Integer.parseInt(b);
		PrintWriter l = response.getWriter();
		if(!(password.equals(repass)))
		{
			request.setAttribute("error","Passwords don't Match.");
			RequestDispatcher k = request.getRequestDispatcher("Create.html");
			k.forward(request, response);
		}
		else
		{
			signupclass.create(firstname, lastname,username, password,email);
			RequestDispatcher k = request.getRequestDispatcher("singin.html");
			k.forward(request, response);
		}
		
		
	}

}
