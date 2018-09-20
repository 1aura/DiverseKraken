<!doctype html>
<%@page import="com.elsevier.models.Customer"%>
<html class="no-js" lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Customer Home</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>

  
  <%!
  
  Customer c;
  
  %>
  
  
  <%
 		c = (Customer) session.getAttribute("logged_in_customer");
  %>
    
       <!-- Just an image -->

	

	<div class="header">
  <a href="/"><img  class="img" src="/images/DiverseBooks.jpg" alt="DiverseBooks" width=400/></a>
  </div>
    <!-- Start Top Bar -->
    <div class="navbar">
      <div class="navbar-left">
        <ul class="menu">
          <li><a href="/" >Home</a></li>
          <li><a href="bestSellers">Bestsellers</a></li>
          <li><a href="/newBooksIn">New In</a></li>
          <li><a href="/allBookDetails">Search Books</a></li>
      </ul>
   
    
          
      </div>
      
      <div class="navbar-right">
        
             <ul class="dropdown menu" data-dropdown-menu>
            
            <li class="has-submenu">
              <a href="/viewCart"><img src="images/shopping_cart.jpg" width="30" height="30"/></a>
              <ul class="submenu menu vertical" data-submenu>
                <li><a href="/viewCart"><img src="images/shopping_cart.jpg" width="50" height="50"/></a></li>
                <li><a href="/login"> Register | Login</a></li>
              </ul>
            </li>
            <li><a href="html/about.html">About Us</a></li>
            <li><a href="html/contactus.html">Contact</a></li>
          </ul>
          
      </div>
    </div>
	<!-- End Top Bar -->
	<div class="callout large">
		<div>
			<h5>
				You have logged in as <%=c.getFirstName()%></h5>
				<p>Your last login time:</p>
			<p id="time"></p>
			<script>
				var d = new Date();
				document.getElementById("time").innerHTML = d.toUTCString();
			</script>
		</div>
	</div>
	
        <div class="row column">
        <form action="/updateProfile" method="post">
        <div class="medium-6">
           <h3> Account details </h3>
                
                
               <label>Firstname * </label>
               <input type="text" placeholder="Enter firstname" name="firstName" id="firstName" value="<%=c.getFirstName() %>"/> 
               <label>Lastname * </label>
               <input type="text" placeholder="Enter lastname" name="lastName" id="lastName" value="<%=c.getLastName()%>"/> 
               <label>Email ID * </label>
                <input type="text" placeholder="Enter email" name="email" id="email" value="<%=c.getEmail()%>"/> 
                
            </div>

           
      		
      		<input type="submit" class="button create account" value="Update Account">
              
              </form>
    
      </div>
      
      

	<script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
	<script src="js/elsevier.js"></script>
	<script>
		$(document).foundation();
	</script>

	<!-- Footer -->
	<div class="footer">
		<h3>
			<img src="images/DiverseBooks.jpg" width="100" height="100" />
			Diverse Books
		</h3>
		<p>This website is proudly brought to you by Team Diversity.
			&copy; 2018 Team Diversity</p>
	</div>

</body>
</html>





    