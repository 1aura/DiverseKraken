<!doctype html>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.elsevier.models.Book"%>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Search Books | Diverse Books</title>
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
				<li><a href="/allBookDetails">Search Books</a></li>
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


	<hr>
	<div class="row column text-center">

		<h2>Browse Search Books in stock here</h2>

		<form action="">
			<input type="radio" name="searchby" value="price"
				onclick="createPriceBar();"> Price <input type="radio"
				name="searchby" value="pages" onclick="createPageBar();">
			Pages
		</form>
		<p id="searchBySelected"></p>
		<script>
			function createPriceBar() {
				document.getElementById("searchBySelected").innerHTML = "<p>Prices less than"
						+ "<input type=\"range\" min=\"1\" max=\"30\" value=\"10\" onchange=\"updateTextInput(this.value);\">"
						+ "<input type=\"text\" id=\"slidebar\" value=\"10\">"
						+ "</p>";
			}

			function createPageBar() {
				document.getElementById("searchBySelected").innerHTML = "<p>Pages less than"
						+ "<input type=\"range\" min=\"100\" max=\"550\" value=\"300\"onchange=\"updateTextInput(this.value);\">"
						+ "<input type=\"text\" id=\"slidebar\" value=\"200\">"
						+ "</p>";
			}

			function updateTextInput(val) {
				document.getElementById("slidebar").value = val;
			}
		</script>


		<%
			Iterable<Book> books = (Iterable<Book>) session.getAttribute("books");
		%>




	</div>
	<div class="row column text-center">
	<script>
		function filterPrice() {
			var slideBarValue = document.getElementById("slidebar").value;
			window.location.replace("http://localhost:8080/filteredBooks?pages=0&price=" + slideBarValue);
		}
		
		function filterPage() {
			var slideBarValue = document.getElementById("slidebar").value;
			window.location.replace("http://localhost:8080/filteredBooks?pages=" + slideBarValue+"&price=0.0");
		}
		
		
	</script>
	<input type="button" value="search by price" onclick="filterPrice();">
	<input type="button" value="search by page" onclick="filterPage();">
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
