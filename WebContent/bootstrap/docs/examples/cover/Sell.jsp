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
              <li><a href="#" class="text-white">Sell</a></li>
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
      <section class="jumbotron text-center">
      <div class="container">
        <h1 class="jumbotron-heading">Sell Books.Make Money!</h1>
        <p class="lead text-muted">Authors,Publishers and Book Shop Owners, Make your Books go Cyber!, Upload details about the books you want to sell and we guarantee a wide variety of audience for them!</p>
      </div>
    </section>
      
    
       <div class="album text-muted">
      <div class="container">
    
    <div class="row">
  <div class="col-md-2"></div>
  <div class="col-xs-12 col-md-8">
  
  <form method ="POST" action ="sell">
  <div class="form-group">
   <label>Book Title</label>
    <input type="text" class="form-control" name = title placeholder="Enter Book Title">
    
  </div>
  <div class="form-group">
   <label>Author</label>
    <input type="text" class="form-control" name = author placeholder="Enter Author's Name">
    
  </div>
  
  <div class="form-group">
   <label>Edition Information:</label>
    <input type="text" class="form-control" name = edition placeholder="Enter Book's Edition">
    <input type="text" class="form-control" name = eyear placeholder="Enter Edition's Printing Year">
  </div>
  
  <div class="form-group">
   <label>Publication Information:</label>
    <input type="text" class="form-control" name = publisher placeholder="Enter Publisher's Company Name">
    <input type="text" class="form-control" name = pyear placeholder="Enter Book's Publication Year">
  </div>
  <div class="form-group">
   <label>Genre</label>
    <input type="text" class="form-control" name =genre placeholder="Enter Book's genre">
    </div>
    <div class="form-group">
    <label for="exampleTextarea">Description</label>
    <textarea class="form-control" name = description rows="8"></textarea>
  </div>
    
  
  <div class="form-group">
    <label>Quantity Available for Selling:</label>
    <select class="form-control" name=quantity>
      <option value = "1">1</option>
      <option value = "2">2</option>
      <option value = "3">3</option>
      <option value = "4">4</option>
      <option value = "5">5</option>
      <option value = "10">10</option>
      <option value="20">20</option>
      <option value="50">50</option>
      <option value="100">100</option>
    </select>
  </div>
 <div class="form-group">
    <label>Amount per Book(in dollars)</label>
    <div class="input-group">
      <div class="input-group-addon">$</div>
      <input type="text" class="form-control" name=cost placeholder="Enter Amount per Book">
      <div class="input-group-addon">.00</div>
    </div>
  </div>
  
  <div class="form-group">
    <label>Upload Cover Picture(.Jpeg) of Book</label>
    <input type="file" accept="image/jpeg" class="form-control-file" name= file >
  </div>
  <br>
  <div>
  <button type="submit" class="btn btn-primary btn-lg">Submit</button>
  </div>
</form>
  </div>
  <div class="col-md-2"></div>
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
    