<!doctype html>
<%@page import="java.util.Map"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.elsevier.models.Book"%>
<%@page import="com.elsevier.models.Shipping"%>
<%@page import="com.stripe.Stripe"%>
<%@page import="com.stripe.exception.StripeException"%>
<%@page import="com.stripe.model.Charge"%>




<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping Cart </title>
    <link rel="stylesheet" href="css/style.css">
    
    
  </head>
  <body>
    
    <form action="/" method="post">
  

    <%
    System.err.println(request.getAttribute("order_total"));
    //There was a comma being stored for this value when going
    //from the checkout page to the payment processed page.
    //E.g. order_total = ,2.99 not 2.99
    //So it was passed to this as a string from 
    //public ModelAndView checkoutProcess
    //and stripped here - Monica
    String orderTotalString = (String) request.getAttribute("order_total");
    orderTotalString = orderTotalString.substring(1);
    double orderTotal = Double.parseDouble(orderTotalString);
    
    %>
    
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
    <br>
    <!-- You can now combine a row and column if you just need a 12 column row -->
    <div class="row columns">
      <nav aria-label="You are here:" role="navigation">
        <ul class="breadcrumbs">
         
          <li><a href="/">Home</a></li>
          <li>
            <span class="show-for-sr">Current: </span> Payment Processed
          </li>
        </ul>
      </nav>
    </div>

    <div class="row">
 
      <div class="medium-6 columns">
    <h3>Thank you for your order.</h3>
        <div class="row small-up-shiping">
          <div class="columns"></div>
 <!--          <div class="columns"></div>--> 
        </div>
        
        <div class="row small-up-4">
          
          <div class="column">
           
          </div>
        
        </div>
        
              
      </div>
      <div class="medium-6 large-5 columns">
        <h3>Order Summary </h3>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             
            <label for="middle-label" class="middle" id="cart_total_label">�<%=orderTotal %></label>
           </div>
           
       </div>



          <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Postage and Packaging </label>
          </div>
          <div class="small-3 columns">
            <label for="middle-label" class="middle">�2.50</label>
           </div>
           
        </div>
    
        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Order Total  </label>
          </div>
          <div class="small-3 columns">
          
            <label for="middle-label" class="middle" id="order_total_label">�<%=orderTotal%></label>
           </div>
      
        </div>

		  
		<input type="hidden" name="order_total" value="<%=orderTotal %>"/>   
        <input type="submit" class="button large expanded" value="Continue Shopping"/>

      </div> 
      </div> 
      
      <!-- Footer -->
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


    
