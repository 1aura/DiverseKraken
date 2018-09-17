<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Online Shopping </title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    
     <!-- Just an image -->

<div class="header">
  <a href="#default" class="logo"><img src="/images/DiverseBooks.jpg"/></a>
  </div>
    <!-- Start Top Bar -->
    <div class="navbar">
      <div class="navbar-left">
        <ul class="menu">
          <li class="menu-text" style="color:red"></li>
          <li><a href="\WEB-INF\views\index.jsp">Home</a></li>
          <li><a href="\WEB-INF\views\book_details.jsp">Bestsellers</a></li>
          <li><a href="\WEB-INF\views\book_details.jsp">New In</a></li>
          <li><a href="\WEB-INF\views\book_details.jsp">All Books</a></li>
      
</ul>
          
      </div>
      
      <div class="nav-bar-right">
        
             <ul class="dropdown menu" data-dropdown-menu>
            
            <li class="has-submenu">
              <a href="/viewCart"><img src="images/cart.jpg" width="30" height="30"/></a>
              <ul class="submenu menu vertical" data-submenu>
                <li><a href="/viewCart"><img src="images/cart.jpg" width="50" height="50"/></a></li>
                <li><a href="/login">Register | Login</a></li>
              </ul>
            </li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
          
      </div>
    </div>
    <!-- End Top Bar -->

    <div class="callout large">
      <div class="row column text-center">
        
        
        <div class="medium-6 columns22">
           <h3> Please login using your stored credentials  </h3>
                
               <form action="/loginProcessThroughCheckout" method="post"> 
                <input type="text" placeholder="Enter email" name="email" id="email"/>
				 <input type="password" placeholder="Enter Password" name="password" id="password"/>
            	<input type="submit" class="button expanded" value="Submit">
              
              </form>
            </div>
      
      </div>
    </div>
    
   
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
      <!-- Footer -->
  <div class="footer">
<h3><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </h3>
	<p>This website is proudly brought to you by Team Diversity. &copy; 2018 Team Diversity</p>
</div>
  
   
  </footer>
    
  </body>
</html>


    