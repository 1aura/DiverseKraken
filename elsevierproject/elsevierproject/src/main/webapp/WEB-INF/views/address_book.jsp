<!doctype html>
<%@page import="com.elsevier.models.Customer"%>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
 
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
  
  <%!
  
  Customer c;
  
  %>
  
  
  <%
 		c = (Customer) session.getAttribute("logged_in_customer");
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
    
       
       <div class="row">
        
       
        <div class="large-6 columns">
           <h3> Billing Address </h3>
                
              <form action="/updateAddress" method="post">
               <label>Address Line1 * </label>
               <input type="text" placeholder="Enter AddressLine2" name="addressLine1" id="addressLine1"/> 
               <label>Address Line2 * </label>
               <input type="text" placeholder="Enter Address Line2" name="addressLine2" id="addressLine2"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City" name="city" id="city"/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode"/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="state"/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="county"/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber"/> 
                
                 
                <input type="hidden" name="addressType" id="addressType" value="billing"/> 
                
                
                <input type="submit" class="button create account" value="Update Billing Address">
               </form>
            </div>
            
          
               <div class="medium-6 columns">
                <h3> Shipping Address </h3>
                
                <input type="checkbox" class="ba" checked="checked" /> Different from billing address
                
              <form action="/updateAddress" method="post">
               <label>Address Line1 * </label>
               <input type="text" placeholder="Enter AddressLine2" name="addressLine1" id="addressLine1" class="tex"/> 
               <label>Address Line2 * </label>
               <input type="text" placeholder="Enter Address Line2" name="addressLine2" id="addressLine2" class="tex"/> 
               <label>City * </label>
                <input type="text" placeholder="Enter City" name="city" id="city" class="tex"/> 
                  <label>Postcode * </label>
                <input type="text" placeholder="Enter Postcode" name="postcode" id="postcode" class="tex"/> 
                
                
                  <label>State/County * </label>
                <input type="text" placeholder="Enter State/County" name="state" id="state" class="tex"/> 
                
                
                  <label>Country * </label>
                <input type="text" placeholder="Enter Country" name="country" id="county" class="tex"/> 
                
                
                  <label>Phone Number * </label>
                <input type="text" placeholder="Enter Phone number" name="phoneNumber" id="phoneNumber" class="tex"/> 
                
                 
                <input type="hidden" name="addressType" id="addressType" value="shipping"/> 
                
                
                <input type="submit" class="button create account" value="Update Shipping Address">
               </form>
            </div>
             
     
      </div>
      
  
       
       
  <!--   </div> -->
    
      <!-- Footer -->
  <div class="footer">

  <h3><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </h3>
	<p>This website is proudly brought to you by Team Diversity. &copy; 2018 Team Diversity</p>
</div>
         
       
    </div>
    
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier2.js"></script>
    <script>
      $(document).foundation();
    </script>
  </body>
</html>


    