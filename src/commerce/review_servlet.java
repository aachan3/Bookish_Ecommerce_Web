package commerce;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class review_servlet
 */

public class review_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public review_servlet() {
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
		PrintWriter out = response.getWriter();
		doGet(request, response);
		String book_id = request.getParameter("bookid");
		String username = request.getParameter("username");
		String description = request.getParameter("description");
		String rating = request.getParameter("rating");
		System.out.println("748390467839247389204738920738927438924738927438927382907382963789 "+book_id+"  "+username+"  "+description+"   "+rating);
	
		//String x = LoginClass.getuserid(username);
	     
      
       // boolean d=ReviewClass.addreviewinfo(book_id,x,description,rating);
	    
	    
	   	       // response.setDateHeader("Expires", 0);
		//response.sendRedirect("buy.jsp");
	    
	    
	    
	    	//RequestDispatcher k = request.getRequestDispatcher("buy.jsp");
	    	//request.setAttribute("error","Server Error, couldn't add the Book");
			//k.forward(request, response);
	    

	
        
        
        
	}    

		
	

}
