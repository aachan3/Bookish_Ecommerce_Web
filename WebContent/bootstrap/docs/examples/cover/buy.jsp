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
	


  
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
 <script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
   
      <script>
    
    	$(document).ready(function () { // wait until the document is ready
    		//Click on previous day
    		$("#myAjaxRequestForm").submit(function(e){
            e.preventDefault();
    		 });
    		
    		$('#sub').click(function(){
    		$.ajax({method:'POST',url:'review',
    		    data:{description: $('#text').val(), bookid: $('#bookid').val(), rating: $('#stars').val() ,username: $('user').val()},
    		    success: function(response) {
    		    alert(m); 
    		    },
    		    error: function(){
    		        alert('Fuuuuuuuuuuuuuu');
    		    }
    		}); // End Ajax  

    		});
    });
    
    
    
    </script>
   <!-- SCRIPT FOR STAR RATING -->     
 <script>
 $(document).ready(function() {
	    
	    var rating = 0;

	    // Color codes the stars based on which star you hover over, undoes the hover over upon mouseout, and records the rating when a star is clicked      
	    $('#jQueryData').on({
	        mouseover: function() {
	            $(this).html('★').css('color', 'red');
	        },
	        mouseout: function() {
	            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
	     if (rating === 0) {
	      $(this).parent().children('span').html('☆').css('color', 'black');
	            }
	      else if (rating === 1) {
	    $(this).parent().children('span').html('☆').css('color', 'black');
	     $(this).parent().children('.star1').html('★').css('color', 'red');
	     } 
	    else if (rating === 2) {
	     $(this).parent().children('span').html('☆').css('color', 'black');
	      $(this).parent().children('.star1').html('★').css('color', 'yellow');
	     $(this).parent().children('.star2').html('★').css('color', 'yellow');
	            }
	            else if (rating === 3) {
	         $(this).parent().children('span').html('☆').css('color', 'black');
	       $(this).parent().children('.star1').html('★').css('color', 'green');
	      $(this).parent().children('.star2').html('★').css('color', 'green');
	       $(this).parent().children('.star3').html('★').css('color', 'green');
	            } else if (rating === 4) {
	     $(this).parent().children('span').html('☆').css('color', 'black');
	       $(this).parent().children('.star1').html('★').css('color', 'blue');
	        $(this).parent().children('.star2').html('★').css('color', 'blue');
	      $(this).parent().children('.star3').html('★').css('color', 'blue');
	      $(this).parent().children('.star4').html('★').css('color', 'blue');
	      }
	      
	      else if (rating === 5) {
	     $(this).parent().children('span').html('☆').css('color', 'black');
	       $(this).parent().children('.star1').html('★').css('color', 'orange');
	        $(this).parent().children('.star2').html('★').css('color', 'orange');
	      $(this).parent().children('.star3').html('★').css('color', 'orange');
	      $(this).parent().children('.star4').html('★').css('color', 'orange');
	      $(this).parent().children('.star5').html('★').css('color', 'orange');
	      }
	        },
	        click: function() {
	    $(this).parent().children('span').html('☆').css('color', 'black');
	     $(this).html('★').css('color', 'red');

	       clicked = true;
	       rating = 1;
	     $(this).parent().parent().next().children('textarea').html(rating);
	        }
	    }, '.star1');

	    $('#jQueryData').on({
	        mouseover: function() {
	            $(this).html('★').css('color', 'yellow');
	            $(this).prev().html('★').css('color', 'yellow');
	        },
	        mouseout: function() {
	            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
	            if (rating === 0) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	            } else if (rating === 1) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'red');
	            } else if (rating === 2) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'yellow');
	                $(this).parent().children('.star2').html('★').css('color', 'yellow');
	            }
	            else if (rating === 3) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'green');
	                $(this).parent().children('.star2').html('★').css('color', 'green');
	                $(this).parent().children('.star3').html('★').css('color', 'green');
	            } else if (rating === 4) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'blue');
	                $(this).parent().children('.star2').html('★').css('color', 'blue');
	                $(this).parent().children('.star3').html('★').css('color', 'blue');
	                $(this).parent().children('.star4').html('★').css('color', 'blue');
	            }
	            else if (rating === 5) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'orange');
	                $(this).parent().children('.star2').html('★').css('color', 'orange');
	                $(this).parent().children('.star3').html('★').css('color', 'orange');
	                $(this).parent().children('.star4').html('★').css('color', 'orange');
	                $(this).parent().children('.star5').html('★').css('color', 'orange');
	            }
	        },
	        click: function() {
	            $(this).parent().children('span').html('☆').css('color', 'black');
	            $(this).html('★').css('color', 'yellow');
	            $(this).prev().html('★').css('color', 'yellow');
	            clicked = true;
	            rating = 2;
	            $(this).parent().parent().next().children('textarea').html(rating);
	        }
	    }, '.star2');

	    $('#jQueryData').on({
	        mouseover: function() {
	            $(this).html('★').css('color', 'green');
	            $(this).prev().html('★').css('color', 'green');
	            $(this).prev().prev().html('★').css('color', 'green');
	        },
	        mouseout: function() {
	            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
	            if (numStars === 0) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	            } else if (rating === 1) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'red');
	            } else if (rating === 2) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'yellow');
	                $(this).parent().children('.star2').html('★').css('color', 'yellow');
	            }
	            else if (rating === 3) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'green');
	                $(this).parent().children('.star2').html('★').css('color', 'green');
	                $(this).parent().children('.star3').html('★').css('color', 'green');
	            } else if (rating === 4) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'blue');
	                $(this).parent().children('.star2').html('★').css('color', 'blue');
	                $(this).parent().children('.star3').html('★').css('color', 'blue');
	                $(this).parent().children('.star4').html('★').css('color', 'blue');
	            }
	            else if (rating === 5) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'orange');
	                $(this).parent().children('.star2').html('★').css('color', 'orange');
	                $(this).parent().children('.star3').html('★').css('color', 'orange');
	                $(this).parent().children('.star4').html('★').css('color', 'orange');
	                $(this).parent().children('.star5').html('★').css('color', 'orange');
	            }


	        },

	        click: function() {
	            $(this).parent().children('span').html('☆').css('color', 'black');
	            $(this).html('★').css('color', 'green');
	            $(this).prev().html('★').css('color', 'green');
	            $(this).prev().prev().html('★').css('color', 'green');
	            clicked = true;
	            rating = 3;
	            $(this).parent().parent().next().children('textarea').html(rating);
	        }
	    }, '.star3');

	    $('#jQueryData').on({
	        mouseover: function() {
	            $(this).html('★').css('color', 'blue');
	            $(this).prev().html('★').css('color', 'blue');
	            $(this).prev().prev().html('★').css('color', 'blue');
	            $(this).prev().prev().prev().html('★').css('color', 'blue');
	        },
	        mouseout: function() {
	            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
	            if (numStars === 0) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	            } else if (rating === 1) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'red');
	            } else if (rating === 2) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'yellow');
	                $(this).parent().children('.star2').html('★').css('color', 'yellow');
	            }
	            else if (rating === 3) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'green');
	                $(this).parent().children('.star2').html('★').css('color', 'green');
	                $(this).parent().children('.star3').html('★').css('color', 'green');
	            } else if (rating === 4) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'blue');
	                $(this).parent().children('.star2').html('★').css('color', 'blue');
	                $(this).parent().children('.star3').html('★').css('color', 'blue');
	                $(this).parent().children('.star4').html('★').css('color', 'blue');
	            }
	            else if (rating === 5) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'orange');
	                $(this).parent().children('.star2').html('★').css('color', 'orange');
	                $(this).parent().children('.star3').html('★').css('color', 'orange');
	                $(this).parent().children('.star4').html('★').css('color', 'orange');
	                 $(this).parent().children('.star5').html('★').css('color', 'orange');
	            }
	        },

	        click: function() {
	            $(this).html('★').css('color', 'blue');
	            $(this).prev().html('★').css('color', 'blue');
	            $(this).prev().prev().html('★').css('color', 'blue');
	            $(this).prev().prev().prev().html('★').css('color', 'blue');
	            clicked = true;
	            rating = 4;
	            $(this).parent().parent().next().children('textarea').html(rating);
	        }
	    }, '.star4');
	     $('#jQueryData').on({
	        mouseover: function() {
	            $(this).html('★').css('color', 'orange');
	            $(this).prev().html('★').css('color', 'orange');
	            $(this).prev().prev().html('★').css('color', 'orange');
	            $(this).prev().prev().prev().html('★').css('color', 'orange');
	            $(this).prev().prev().prev().prev().html('★').css('color', 'orange');
	        },
	        mouseout: function() {
	            var numStars = parseInt($(this).parent().parent().next().children('p').html(), 10);
	            if (rating === 0) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	            } else if (rating === 1) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'red');
	            } else if (rating === 2) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'yellow');
	                $(this).parent().children('.star2').html('★').css('color', 'yellow');
	            }
	            else if (rating === 3) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'green');
	                $(this).parent().children('.star2').html('★').css('color', 'green');
	                $(this).parent().children('.star3').html('★').css('color', 'green');
	            } else if (rating === 4) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'blue');
	                $(this).parent().children('.star2').html('★').css('color', 'blue');
	                $(this).parent().children('.star3').html('★').css('color', 'blue');
	                $(this).parent().children('.star4').html('★').css('color', 'blue');
	            }
	            else if (rating === 5) {
	                $(this).parent().children('span').html('☆').css('color', 'black');
	                $(this).parent().children('.star1').html('★').css('color', 'orange');
	                $(this).parent().children('.star2').html('★').css('color', 'orange');
	                $(this).parent().children('.star3').html('★').css('color', 'orange');
	                $(this).parent().children('.star4').html('★').css('color', 'orange');
	                 $(this).parent().children('.star5').html('★').css('color', 'orange');
	            }
	        },

	        click: function() {
	            $(this).html('★').css('color', 'orange');
	            $(this).prev().html('★').css('color', 'orange');
	            $(this).prev().prev().html('★').css('color', 'orange');
	            $(this).prev().prev().prev().html('★').css('color', 'orange');
	            clicked = true;
	            rating = 5;
	            $(this).parent().parent().next().children('textarea').html(rating);
	        }
	    }, '.star5');
	});

 </script>

    <!-- Custom styles for this template -->
    <link href="album.css" rel="stylesheet">
    
 <style>
.review {
	background-color: #f7f7f7;
	padding-top: 0.5rem;
  padding-bottom: 0.5rem;
  padding-left:0.5rem;
  padding-right:0.5rem;
	
}
.forms {
    background: 0;
    border: 0;
    width: 100%;
    overflow: visible;
    outline: 0;
    height: 20px;
}
} 
</style>
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
 <%@ page import="java.sql.ResultSet" %>
  <%@ page import="commerce.LoginClass" %>
        <%@ page import="commerce.SellClass" %>
        <%@ page import="java.util.*" %>
       
    <div class="album text-muted">
      
		<div class = "row">
		<div class="col-md-1"></div>
        <div class="col-xs-12 col-md-3">
          
          <img data-src="holder.js/100px280/thumb" alt="Card image cap">
           
          </div> 
         
         <div class="col-xs-12 col-md-7"> 
         
         <div class = "col-xs-12 col-md-12">
         <%@ page import ="commerce.SellClass"%>
         <%@ page import ="commerce.ReviewClass"%>
         <%String book_id = (String)request.getAttribute("book_id"); 
         List<ArrayList<String>> reviews = ReviewClass.review(book_id);
         int sum=0;
         for(List r:reviews)
         {
        	 sum = sum + Integer.parseInt((String)r.get(2));
         }
         int final1=0;
         if(reviews.size()!=0){
         final1 = sum/(reviews.size());}
        
         //System.out.println(final1+"fwfwfwfwfwfewfewfwef");
         //System.out.println("OH MY GOD"+ book_id);
         List<String> m = SellClass.getAllvaluesofbook(book_id);
        //System.out.println("hiii"+ m);
         %> 
         <%
         //System.out.println("OH MY GOD"+ book_id);
         String[] user_details = LoginClass.getusername(m.get(0));
         
       // System.out.println("hiii"+ m);
         %> 
         <div><h2><%out.print(m.get(1));%></h2> </div>
         </div>
         <div class = "col-xs-12 col-md-12">
         <p>by: <%out.print(m.get(2));%>(Author)</p>
         </div>
           <div class = "col-xs-12 col-md-7">
           <div class = "row">
         <div class = "col-md-4">
         <a href = "#rev">
         <%out.println(reviews.size()+" Reviews"); %>
         </a>
         </div>
          <div class = "col-md-8">
          Average Rating:
          <% 
          for(int i=0;i<final1;i++){%>
          <span>&#9733;</span> 
         <%}%>
         <span>(<%out.print(reviews.size());%> users)</span>
         </div>
        </div>
         </div>
         <div class = "col-xs-12 col-md-5"></div>
         <hr>
         <div class = "col-xs-12 col-md-12">
         <h5>Description</h5>
         
         <p><%out.print(m.get(10));%></p>
         </div>
         <br>
         <div class = "col-xs-12 col-md-12">
         <div class = "row">
          <div class = "col-xs-6 col-md-6">
         <p>Price: <span style="font-size:150%;">$<%out.print(m.get(5));%>.00</span></p>
         </div>
          <div class = "col-xs-6 col-md-6">
         <a href="singin.html" class="btn btn-md btn-secondary" style="background-color:yellow;">Add To Cart</a>
         
         </div>
         </div>
         </div>
         </div> 
         
         <div class="col-md-1">
         </div>
        
          
         </div>  
         <div class = "row">
         	<div class="col-md-1"></div> 
          <div class="col-xs-12 col-md-3">
          <br>
          <h5>Details</h5>
          <ul>
          <li>
          Category/Genre: <%out.print(m.get(3));%>
          </li>
          <li>
          Edition: <%out.print(m.get(8));%>
          </li>
          <li>
          Edition Year: <%out.print(m.get(9));%>
          </li>
          <li>
          Published By: <%out.print(m.get(6));%>
          </li>
          <li>
          Publish Year: <%out.print(m.get(7));%>
          </li>
          <li>
          Seller: <%out.print(user_details[0]+" ("+ user_details[1]+" "+ user_details[2]+")");%>
          </li>
          </ul>
           
          </div> 
          <div class="col-xs-12 col-md-9"> </div>
          </div>      
        </div>
        
    <footer class="text-muted">
      <div class="container">
       <div class = "row">
              <div class="col-md-5"> </div>
              <div class="col-xs-12 col-md-2">
              <div id = "rev"><h4>Write a Review</h4></div><br>
              </div>
              <div class="col-md-5"> </div>
             </div>
             <form id="myAjaxRequestForm"> 
             <div class="row">
               <div class="col-xs-12 col-md-1"></div>
             <div class="col-xs-12 col-md-10">
              <div class="form-group">
    
    <textarea class="form-control" id="text" name = description rows="8"></textarea>
  </div>
  </div>
    <div class="col-xs-12 col-md-1"></div>
  </div>
  
 
  <div class="row">
               <div class="col-xs-12 col-md-2"></div>
               <div class="col-xs-12 col-md-2">Give Your Rating:</div>
             
             <div class="col-xs-12 col-md-5">
			<div id="jQueryData">
			<div class="voting_section">
			<div class="starRating">
 
  	<div>
  	
    <span class="star1">☆</span>
    <span class="star2">☆</span>
    <span class="star3">☆</span>
    <span class="star4">☆</span>
    <span class="star5">☆</span>
  	</div>
</div>

<div class="rating"><textarea class="forms" readonly=readonly id="stars" name=rating>0</textarea>(Stars)</div> 
<input type="hidden" id = "user" name="user_name" value=<% out.println(a);%>/>
<input type="hidden" id = "bookid" name="book_id" value=<%out.println(book_id);%>/>
</div>
		</div>

 
  </div>
    <div class="col-xs-12 col-md-3">
     
    <button class="btn btn-md btn-primary" id = "sub">Submit</button>
    </div>
  </div>
  
    </form>
             <br><br>
              <div class="col-xs-12 col-md-12">
              User's Reviews and Ratings:
              <hr>
              </div>
             <br> 
              <% 
             // System.out.println(reviews+"feffgegege");
              for(List c:reviews)
              {
            	  String[] r = LoginClass.getusername((String)c.get(0));
              %>
      <div class = "row">
      <div class="col-xs-12 col-md-1"></div>
              <div class="col-xs-12 col-md-8">
             
            	<%out.println(r[1]+" "+r[2]+" wrote:");%>
            	<br>
            	</div>
            	<div class="col-xs-12 col-md-2">
            	Rating:
            	<% int rate = Integer.parseInt((String)c.get(2)); 
            	for(int k=0;k<rate;k++){%>
            	<span>&#9733;</span>
            <%}%>
            
            	</div>
            	<div class="col-xs-12 col-md-1"></div>
             </div>
            	
            	
            	<div class = "row">
            	<div class="col-xs-12 col-md-1"></div>
             
            	<div class="col-xs-12 col-md-10">
            	<div class ="review">
            	<p>
            	<%out.println(c.get(1)); %>
            	</p>
            	</div>
            	</div>
            	<div class="col-xs-12 col-md-1"></div>
             	</div>
            	<br>
            	  
              <%}
              
              %>
             
             
             </div>   
      <br>
     <div class = "row">
      <div class="col-xs-12 col-md-10">
      
      </div>
             	
             	<div class="col-xs-12 col-md-2">
             	
        <p>
          <a href="#">Back to top</a>
        </p>
        </div>
      </div>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
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
