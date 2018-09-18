<!doctype html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.elsevier.models.Book"%>
<html class="no-js" lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Online Shopping</title>
    <link rel="stylesheet" href="css/style.css"/>
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
          <li><a href="/allBookDetails">All Books</a></li>
      </ul>
   
    
          
      </div>
      
      <div class="navbar-right">
        
             <ul class="dropdown menu" data-dropdown-menu>
            
            <li class="has-submenu">
              <a href="/viewCart"><img src="images/cart.jpg" width="30" height="30"/></a>
              <ul class="submenu menu vertical" data-submenu>
                <li><a href="/viewCart"><img src="images/cart.jpg" width="50" height="50"/></a></li>
                <li><a href="/login"> Register | Login</a></li>
              </ul>
            </li>
            <li><a href="html/about.html">About Us</a></li>
            <li><a href="html/contactus.html">Contact</a></li>
          </ul>
          
      </div>
    </div>
    <!-- End Top Bar -->

<div class="searchbar">
  <a class="active" href="#home"></a>
  <div class="search-container">
    <form action="/searchBooks?bookTitle">
      <input type="text" placeholder="Search.." name="title">
      <button type="submit"><i class="fa fa-search"></i></button>
    </form>
  </div>
</div>

<script type="text/javascript">
var slideimages = new Array() // create new array to preload images
slideimages[0] = new Image() // create new instance of image object
slideimages[0].src = "crazyrichasains.jpg" // set image object src property to an image's src, preloading that image in the process
slideimages[1] = new Image()
slideimages[1].src = "countrylife.jpg"
slideimages[2] = new Image()
slideimages[2].src = "Joes30minutemeals.jpg"
</script>

<div class="container">
 <ul><img src="firstcar.gif" id="slide" width=100 height=56 /></ul>
</div>

<script type="text/javascript">
var step = 0
var whichimage = 0

function slideit(){
 //if browser does not support the image object, exit.
 if (!document.images)
  return
 document.getElementById('slide').src = slideimages[step].src
 whichimage = step
 if (step<2)
  step++
 else
  step=0
 //call function "slideit()" every 2.5 seconds
 setTimeout("slideit()",2500)
}

function slidelink(){
 if (whichimage == 0)
  window.location = "crazyrichasains"
 else if (whichimage == 1)
  window.location = "countrylife.jpg"
 else if (whichimage == 2)
  window.location = "Joes30minutemeals.jpg"
}

slideit()
</script> 

    
    <div class="row column text-center">
      <h2>
      
      
      <%
         Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
          
      %>
      
      
      </h2>
      <hr>
    </div>

    <div class="row small-up-2 large-up-4">
    
    <%
    
    for(Book book: books)
    {
      
   
    %>
      <div class="column">
      
        <a href="/bookDetails?bookId=<%=book.getBookId()%>"><img class="thumbnail" src="<%=book.getBookImage()%>"></a>
        <h5><%= book.getTitle()%></h5>
        <p>£<%= book.getPrice()%></p>
        <a href="/bookDetails?bookId=<%=book.getBookId()%>" class="button expanded">View book details</a>
        <a href="/addToCart?bookId=<%=book.getBookId()%>" class="button expanded">Add to Cart</a>
      </div>
    
    <%
    }
    %>  
    </div>

    <hr>

    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <script src="js/elsevier.js"></script>
    <script>
      $(document).foundation();
    </script>
    
      <!--<!-- Footer -->
  <div class="footer">
<h3><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </h3>
	<p>This website is proudly brought to you by Team Diversity. &copy; 2018 Team Diversity</p>
</div>

  </body>
</html>
