<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Album example for Bootstrap</title>
 <style>
.review {
	
  padding-left:1rem;
  padding-right:1rem;
	
}
</style>
    <!-- Bootstrap core CSS -->
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="album.css" rel="stylesheet">
    
  </head>

  <body>
	
    <div class="collapse bg-inverse" id="navbarHeader">
      <div class="container">
        <div class="row">
          <div class="col-sm-8 py-4">
            <h4 class="text-white">About</h4>
            <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
          </div>
          <div class="col-sm-4 py-4">
            <h4 class="text-white">
            <% HttpSession session1=request.getSession();
    	String a = (String)session1.getAttribute("user");
    		out.print(a);
    %>
            </h4>
            <ul class="list-unstyled">
              <li><a href="#" class="text-white">Orders</a></li>
              <li><a href="Sell.jsp" class="text-white">Sell</a></li>
              <li><a href="#" class="text-white">Profile</a></li>
            
              <li><a href="logout" class="text-white">Log Out</a></li>
              
              
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="navbar navbar-inverse bg-inverse">
      <div class="container d-flex justify-content-between">
        <a href="#" class="navbar-brand">Bookish</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      </div>
    </div>

  <!-- <section class="jumbotron text-center">
      <div class="container">
        <h1 class="jumbotron-heading">Album example</h1>
        <p class="lead text-muted">Something short and leading about the collection below—its contents, the creator, etc. Make it short and sweet, but not too short so folks don't simply skip over it entirely.</p>
        <p>
          <a href="#" class="btn btn-primary">Main call to action</a>
          <a href="#" class="btn btn-secondary">Secondary action</a>
        </p>
      </div>
    </section>
    -->

    <div class="album text-muted">
      <div class="container">
		
        <div class="row">
        <%@ page import="java.sql.ResultSet" %>
        <%@ page import="commerce.SellClass" %>
        <%@ page import="commerce.ReviewClass" %>
        <%@ page import="java.util.*" %>
        <% List<ArrayList<String>> m = new ArrayList<ArrayList<String>>();
        m = SellClass.getAllbooktitles();
        System.out.println("hiii"+ m);
         for(int o=0;o<m.size();o++) {
        	 System.out.println(m.get(o).get(0)+"      "+ o +"   "+m.get(o).get(1));
        	 List<ArrayList<String>> reviews = ReviewClass.review(m.get(o).get(1));
        	 int sum=0;
             for(List r:reviews)
             {
            	 sum = sum + Integer.parseInt((String)r.get(2));
             }
             int final1=0;
             if(reviews.size()!=0){
             final1 = sum/(reviews.size());}
         %>
          <div class="card">
            <a href ="buy1?book_id=<%out.print(m.get(o).get(1));%>"><img data-src="holder.js/100px280/thumb" alt="Card image cap">
            <h6>
            <% out.print(m.get(o).get(0)); %>
            </h6>
           </a>
            <p class="card-text">
                     
            <span style="float:left;">
              Ratings: <% 
          for(int i=0;i<final1;i++){%>
          &#9733; 
         <%}%>
         (<%out.print(reviews.size());%> users)
         </span>
           
            <span style="float:right;">
             <%out.print(reviews.size());%>Reviews
             </span>
            </p>
          </div> 
          
          <%}%>                
        </div>

      </div>
    </div>



    <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Back to top</a>
        </p>
        <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting started guide</a>.</p>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="../../assets/js/vendor/holder.min.js"></script>
    <script>
      $(function () {
        Holder.addTheme("thumb", { background: "#55595c", foreground: "#eceeef", text: "Thumbnail" });
      });
    </script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
