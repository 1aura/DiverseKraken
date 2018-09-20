<!doctype html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.elsevier.models.Book"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>All books | Diverse Books</title>
<link rel="stylesheet" href="css/style.css" />
</head>
<body>
	<!-- Just an image -->

	<!-- Just an image -->

	<div class="header">
		<a href="/"> <img class="img" src="/images/DiverseBooks.jpg"
			alt="DiverseBooks" width=400 />
		</a>
	</div>
	<!-- Start Top Bar -->
	<div class="navbar">
		<div class="navbar-left">
			<ul class="menu">
				<li><a href="/">Home</a></li>
				<li><a href="/bestSellers">Bestsellers</a></li>
				<li><a href="/newBooksIn">New In</a></li>
				<li><a href="/allBookDetails">All Books</a></li>
			</ul>



		</div>

		<div class="navbar-right">

			<ul class="dropdown menu" data-dropdown-menu>

				<li class="has-submenu"><a href="/viewCart"><img
						src="images/shopping_cart.jpg" width="30" height="30" /></a>
					<ul class="submenu menu vertical" data-submenu>
						<li><a href="/viewCart"><img
								src="images/shopping_cart.jpg" width="50" height="50" /></a></li>
						<li><a href="/login"> Register | Login</a></li>
					</ul></li>
				<li><a href="html/about.html">About Us</a></li>
				<li><a href="html/contactus.html">Contact</a></li>
			</ul>

		</div>
	</div>
	<!-- End Top Bar -->



	<div class="row column text-center">

		<h2>All the filtered books</h2>


		<%
			Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
		%>




	</div>


	<div class="row small-up-2 large-up-4">
		<%
			String filterValue = request.getParameter("filterValue");
			int val = Integer.parseInt(filterValue);
			for(Book book: books){
				if(book.getPageCount() < val){
		
			
		%>

		<div class="column">

			<a href="/bookDetails?bookId=<%=book.getBookId()%>"><img
				class="thumbnail" src="<%=book.getBookImage()%>"></a>
			<h5><%=book.getTitle()%></h5>
			<p>
				£<%=book.getPrice()%></p>
			<p><%=book.getPageCount()%> pages</p>

			<a href="/bookDetails?bookId=<%=book.getBookId()%>"
				class="button expanded">View book details</a> <a
				href="/addToCart?bookId=" class="button expanded">Add to Cart</a>
		</div>

		<%
				}
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
		<h3>
			<img src="images/DiverseBooks.jpg" width="100" height="100" />
			Diverse Books
		</h3>
		<p>This website is proudly brought to you by Team Diversity.
			&copy; 2018 Team Diversity</p>
	</div>

</body>
</html>
