<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.elsevier.models.Book"%>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="css/style.css">
    
    
  </head>
  <body>
    
    <form action="/checkoutProcess" method="post">
    
     <%
    
    double orderTotal = (Double) request.getAttribute("order_total");
    
   
    %>
    
   

  <!-- Just an image -->

<div class="header">
  <a href="#default" >
  <img  class="img" src="/images/DiverseBooks.jpg" alt="DiverseBooks" width=400/>
  </a>
  </div>
    <!-- Start Top Bar -->
    <div class="navbar">
      <div class="navbar-left">
        <ul class="menu">
          <li><a href="/" >Home</a></li>
          <li><a href="/BLAHAA">Bestsellers</a></li>
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
    <br>
    <!-- You can now combine a row and column if you just need a 12 column row -->
    <div class="row columns">
      <nav aria-label="You are here:" role="navigation">
        <ul class="breadcrumbs">
         
          <li><a href="/">Home</a></li>
          <li>
            <span class="show-for-sr">Current: </span> Cart Details
          </li>
        </ul>
      </nav>
    </div>

    <div class="row">
 
      <div class="medium-6 columns">
      
       <h2> Shipping Details </h2>
        
        <div class="row small-up-shiping">
        
          <div class="columns">
            <label> First name * </label>
            <input type="text" name="firstName" id="firstName" size="30"/> 
          </div>
          <div class="columns">
             <label> Last name * </label>
            <input type="text" name="lastName" id="lastName" size="30"/>
          </div>
          
          <div class="column">
           <label> Address 1 * </label>
            <input type="text" name="addressLine1" id="addressLine1" size="30"/>
          </div>
          <div class="column">
            <label> Address 2 * </label>
            <input type="text" name="addressLine2" id="addressLine2" size="30"/>
          </div>
          <div class="column">
            <label> City * </label>
            <input type="text" name="city" id="city" size="30"/>
          </div>
          
          <div class="column">
            <label> Postcode / Zip code * </label>
            <input type="text" name="postcode" id="postcode" size="30"/>
          </div>
          
          <div class="column">
            <label> State/Province * </label>
            <input type="text" name="state" id="state" size="30"/>
          </div>
          
          <div class="column">
            <label> Country</label>
            <input type="text" name="country" id="country" size="30"/>
          </div>
          
           <div class="column">
            <label> Phone Number</label>
            <input type="text" name="phone" id="phone" size="30"/>
          </div>
          
          
           <div class="column">
            <label> Email * </label>
            <input type="text" name="email" id="email" size="30"/>
          </div>
          
          
          <div class="column">
            <input type="checkbox" name="same" id="same"/> My billing and shipping address are the same
          </div>
          
          
         
		  
		
		  
		  
		  
		  
          
        </div>
        
        <div class="row small-up-4">
          
          <div class="column">
           
          </div>
        
        </div>
        
        <hr>
      
      </div>
      <div class="medium-6 large-5 columns">
      
      
        <div class="login_in_shipping">
    
      
           <h3>Checkout using account </h3>
        <p> Please login using saved details</p>

        <div class="row">
        
          <div class="column">
          
               Email *
             <input type="text" id="email" name="email" size="30"/> 
             
             Password *
             <input type="password" id="password" name="password" size="30"/>  
             <a href="/loginThroughCheckout?order_total=<%=orderTotal%>" class="button large expanded">Login</a>
          </div>
           
       </div>

      </div>
      
      <br>
      
        <h3>Order Summary </h3>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             
            <label for="middle-label" class="middle" id="cart_total_label">£<%=orderTotal %></label>
           </div>
           
       </div>



         <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Postage and Packaging: </label>
           </div>
           <div class="small-3 columns">
           <input type="hidden" name="order_total" id="postage" value="<%=2.51%>"/>
            <label for="middle-label" class="middle" id="postage">£<%=2.51%></label>
           </div>
           
        </div>
        
        
    
        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Order Total  </label>
          </div>
          <div class="small-3 columns">
          
            <label for="middle-label" class="middle" id="order_total_label">£<%=orderTotal+2.51%></label>
           </div>
      
        </div>

		  
		<input type="hidden" name="order_total" value="<%=orderTotal %>"/>   
        
        
              
    <script   src="https://checkout.stripe.com/checkout.js" class="stripe-button"
		    data-key="pk_test_eFI25UMD5O7O9cJln9RlbDO5"
		    data-amount="<%=(orderTotal + 2.51 )* 100%>"
		    data-name="Diversity Books"
		    data-description="Book Order"
		    data-image="https://st2.depositphotos.com/3102403/7923/v/950/depositphotos_79232506-stock-illustration-flat-books-with-bookmarks-circle.jpg"
		    data-locale="auto"
		    data-currency="gbp">
    </script>
    <script>
        // Hide default stripe button, be careful there if you
        // have more than 1 button of that class
        document.getElementsByClassName("stripe-button-el")[0].style.display = 'none';
    </script>

        <input type="submit" class="button large expanded" value="Checkout"/>
       
      </div>  
      
      
      </div>
      
      
      
      
     
   
      <!--<!-- Footer -->
  <div class="footer">
<h3><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </h3>
	<p>This website is proudly brought to you by Team Diversity. &copy; 2018 Team Diversity</p>
</div>

   
 </div>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    
    <script src="js/validations.js"></script>
    <script>
      $(document).foundation();
    </script> 
    
   </form>
  </body>
</html>


    
