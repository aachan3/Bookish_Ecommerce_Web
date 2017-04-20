package commerce;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class buy_servlet
 */
@WebServlet("/buy_servlet")
public class buy_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buy_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setHeader("Cache-Control", "no-cache, no-store"); // HTTP 1.1.
        response.setHeader("Pragma", "no-cache");
		HttpSession x = request.getSession(false);
		String user = (String) x.getAttribute("user");
		//System.out.println("Session:"+x);
		if(x!=null && user!=null){
		String book_id = request.getParameter("book_id");
		
		//System.out.println("fef"+ book_id);
		 // HTTP 1.0.
       // response.setDateHeader("Expires", 0);
		RequestDispatcher k = request.getRequestDispatcher("buy.jsp");
		request.setAttribute("book_id", book_id);
		k.forward(request, response);
		}
		else{
			RequestDispatcher k = request.getRequestDispatcher("singin.html");
	    	request.setAttribute("error", "Session Expired. Please Sign In");
			k.forward(request, response);
        
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
