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
    <title>Shopping Cart | Welcome </title>
    <link rel="stylesheet" href="css/style.css">
    
   
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
    
      ArrayList<Book> books;
    
      Map<Integer,Integer> bookCounts;
    
      
    %>
    
    
    <%
    

    
    books  = (ArrayList<Book>) session.getAttribute("filtered_books");
    
    bookCounts = (Map<Integer,Integer>)  session.getAttribute("book_counts");
    
    double cartTotal = 0.0;
    
    double orderTotal = 0.0;
    
    double totalPrice =  0.0;
    %>
    
   
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
      <% 
     
      int i = 0;
      for(Book book : books)
      {
    	  
    	  int quantity = bookCounts.get(book.getBookId());
    	  double price = book.getPrice();
    	  totalPrice = book.getPrice() * quantity;
    	  cartTotal = cartTotal + book.getPrice() * quantity;
    	  System.out.println("Cart Total "+cartTotal);
       
      %>
      
         			
        
        <div class="row small-up-4">
        <p>
        <img class="thumbnail" src="<%=book.getBookImage()%>" style="width:113px;height:175px;"/>
        
        </p>

          <p>
           
          <div class="column" style="width:200px"><%= book.getTitle()%></div>
           

          </p>
          <p>
           <div class="column">
          Total Price: <label type="hidden" id="price_label<%=i%>">�<%=totalPrice%></label>
            	<!--  <input type="hidden" name="cart_total" value=""/> -->
           </div>
          </p>
          <div class="column">
            <form name="f1">
            	<input type="hidden" name="price" value="<%=price%>"/>
            	<input type="hidden" name="cart_total" value="<%=cartTotal%>"/>
            	
            	Quantity <input type="number"  min="1" name="quantity" value="<%=quantity%>" onchange="calculateTotalPrice(price.value,this.value,price_label<%=i%>)"/>
            </form>
            
            <div class="special"><a href="/removeFromCart?bookId=<%=book.getBookId() %>"> Remove </a></div> 
          
           
          </div>
          
       
         
        </div>
      
         
       <hr>
      <%
      i++;
      }
      %>
     
      </div>
      
      <div class="medium-6 large-5 columns">
      
        <h3>Order Summary </h3>
        <p> </p>

        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Cart Total</label>
          </div>
          <div class="small-3 columns">
             <input type="hidden" name="order_total" id="cart_total" value="<%=cartTotal %>"/> 
            <label for="middle-label" class="middle" id="cart_total_label">�<%=cartTotal %> </label>
           </div>
       </div>
           
      

          <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Postage and Packaging: </label>
           </div>
           <div class="small-3 columns">
           <input type="hidden" name="order_total" id="postage"/>
            <label for="middle-label" class="middle" id="newpostage"></label>
           </div>
           
        </div>
    
        <div class="row">
          <div class="small-3 columns">
            <label for="middle-label" class="middle">Order Total  </label>
          </div>
          <div class="small-3 columns">
            <input type="hidden" name="order_total" id="order_total" value="<%=cartTotal %>"/> 
            <label for="middle-label" class="middle" id="order_total_label">�<%=cartTotal + 2.50%></label>
           </div>
      
        </div>

		<form action="/newcheckoutProcess" method="post" id="checkout_form">   
		<input type="hidden" name="order_total" value="<%=cartTotal %>"/>   
        <input type="submit" class="button large expanded" value="Proceed to Checkout"/>
        </form> 
      </div>  
 </div>
 
   <!-- Footer -->
  <div class="footer">

  <h3><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </h3>
	<p>This website is proudly brought to you by Team Diversity. &copy; 2018 Team Diversity</p>
</div>
 
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script src="js/update_cart.js"></script>
    <script>
      $(document).foundation();
    </script> 
    
    <!-- START FORMATTING PP -->
    <script>
   var pp = 2.50;
   var rpp = "�"+pp.toFixed(2);
   document.getElementById('newpostage').innerHTML = rpp;
    </script>
        <!-- END FORMATTING PP -->
    
    
  </body>
</html>