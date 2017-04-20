package commerce;


import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class sell_servlet
 */

public class sell_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private boolean isMultipart;
	   private String filePath;
	   private int maxFileSize = 50 * 1024;
	   private int maxMemSize = 4 * 1024;
	   private File file ;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sell_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void init( ){
        // Get the file location where it would be stored.
        filePath = getServletContext().getInitParameter("file-upload"); 
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
		//doGet(request, response);
		response.setContentType("text/html");
		//String fileName="";
		String name = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String pyear = request.getParameter("pyear");
		String edition = request.getParameter("edition");
		String eyear = request.getParameter("eyear");
		String genre = request.getParameter("genre");
		String description = request.getParameter("description");
		String quantity = request.getParameter("quantity");
		String cost = request.getParameter("cost");
		System.out.println(name);
		
		 //response.setHeader("Cache-Control", "no-cache, no-store"); // HTTP 1.1.
		   // response.setHeader("Pragma", "no-cache"); // HTTP 1.0.

	   HttpSession session=request.getSession(false); 
	    String user = (String)session.getAttribute("user");
	    PrintWriter out = response.getWriter();
        if(user!=null && session!=null){  
        //System.out.println(session.getAttribute("user"));
        int user_id = LoginClass.add((String)session.getAttribute("user"));  
        if(user_id>0){ 
        boolean d=SellClass.addsellinfo(name,author,publisher,pyear,edition,eyear,genre,description,quantity,cost,user_id);
	    if(d)
	    {
	   	       // response.setDateHeader("Expires", 0);
		RequestDispatcher k = request.getRequestDispatcher("Homepage.jsp");
		out.println("Book Added to inventory");
		k.forward(request, response);
	    }
	    else
	    {
	    	RequestDispatcher k = request.getRequestDispatcher("Sell.jsp");
	    	request.setAttribute("error","Server Error, couldn't add the Book");
			k.forward(request, response);
	    }

	}
        else
        {
        	RequestDispatcher k = request.getRequestDispatcher("Sell.jsp");
        	request.setAttribute("error","Server Error, couldn't add the Book");
			k.forward(request, response);	
        }
        }
        else
        {
        	RequestDispatcher k = request.getRequestDispatcher("singin.html");
	    	request.setAttribute("error", "Session Expired. Please Sign In");
			k.forward(request, response);
        }
	}    
	
}
