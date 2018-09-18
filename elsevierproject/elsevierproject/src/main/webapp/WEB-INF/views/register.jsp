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
          <li class="menu-text" style="color:black"><img src="images/DiverseBooks.jpg" width="100" height="100"/> </li>
          <li><a href="#">Home</a></li>
          
      </div>
      
      <div class="navbar-right">
        
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

<script type="text/javascript">
function validateForm() {
var a = document.forms["myForm"]["firstname"].value;
var b = document.forms["myForm"]["lastname"].value;

if (a == "") {
		alert("First Name must be filled out.");
		return false;
		}
		
if (b == "") {
		alert("Last Name must be filled out.");
		return false;
}		
		
}
</script>

    <div class="callout large">
      <div class="row column">
        
        <form id="myForm" name="myForm" action="/registerProcess" onsubmit="return validateForm()" method="post">
        <div class="medium-6">
           <h3> Create an account  </h3>
           <p> Please note: Fields marked with a * must be filled out. </p>
                
                
               <label>First Name * </label>
               <input type="text" placeholder="Enter First Name" name="firstname" id="firstName"/> 
               <label>Last Name * </label>
               <input type="text" placeholder="Enter Last Name" name="lastname" id="lastName"/> 
               <label>Email ID * </label>
                <input type="text" placeholder="Enter email" name="email" id="email"/> 
                <label id="error_email" style="color: red;"></label>
                <label>Password * </label>
				 <input type="password" placeholder="Enter Password" name="password" id="password"/>
            	
            </div>
            
            <div class="medium-6">
           
          	 <input type="checkbox" name="aggreement"/> I have read and understood the 
          	 <a href="/registered_user_agreement">Registered User Agreement </a> and agree to be bound by all of its terms. 
         
            </div>
      		
      		<input type="submit" class="button create account" value="Create Account">
              
              </form>
    
      
      
      </div>
    </div>
    
   
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
      $("#email").keyup(function(){
    	     var email = $("#email").val();
    	     var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    	     if (!filter.test(email)) {
    	       //alert('Please provide a valid email address');
    	       $("#error_email").text(email+" is not a valid email");
    	       email.focus;
    	       //return false;
    	    } else {
    	        $("#error_email").text("");
    	    }
    	 });
    	
    </script>
    
      <!-- Footer -->
  <div class="footer">
<h3><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </h3>
	<p>This website is proudly brought to you by Team Diversity. &copy; 2018 Team Diversity</p>
</div>
  
   
  </footer>
    
  </body>
</html>




    