<!doctype html>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login | Diverse Books </title>
    <link rel="stylesheet" href="css/style.css">
    <style>
    .halves {
	width:49%;
	float:left;
	margin-right:2%;
	}
	.last {
	margin-right:0;
	}
    </style>
  </head>
  <body>
    
    <!-- Just an image -->

<div class="header">
  <a href="/" >
  <img  class="img" src="/images/DiverseBooks.jpg" alt="DiverseBooks" width=400/>
  </a>
  </div>
    <!-- Start Top Bar -->
    <div class="navbar">
      <div class="navbar-left">
        <ul class="menu">
          <li><a href="/" >Home</a></li>
          <li><a href="/bestSellers">Bestsellers</a></li>
          <li><a href="/newBooksIn">New In</a></li>
          <li><a href="/allBookDetails">All Books</a></li>
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
      <div class="row column">
      
	      
        
        <section>
        <div class="halves">
           <h3> Login  </h3>
                
               <form action="/loginProcess" method="post"> 
              
               <label>Email ID * </label>
                <input type="text" placeholder="Enter email" name="email" id="email"/> 
                <label>Password * </label>
				 <input type="password" placeholder="Enter Password" name="password" id="password"/>
            	<input type="submit" class="button expanded" value="Submit">
             

<style>
#text2 {display:none;color:red}
</style>

<p id="text2">WARNING! Caps lock is ON.</p>

<script>
var input = document.getElementById("myInput");
var text = document.getElementById("text");
input.addEventListener("keyup", function(event) {

if (event.getModifierState("CapsLock")) {
    text.style.display = "block";
  } else {
    text.style.display = "none"
  }
});
</script>

     
              
              </form>
            </div>
      
      <div class="halves last">
           <h3> New Customer?</h3>
           <label> Please register to create a new account</label>
           <a href="/register" class="button expanded">Register</a>
         
            </div>
      </section>
       
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


    
