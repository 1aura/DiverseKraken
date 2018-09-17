<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Price</title>
</head>
<body>

<%
double calculatedPrice = (Double) request.getAttribute("total_price");
out.println(calculatedPrice);
System.out.println("Called");
%>

      <!-- Footer -->
  <div class="footer">
<h3><img src="images/DiverseBooks.jpg" width="100" height="100"/> Diverse Books </h3>
	<p>This website is proudly brought to you by Team Diversity. &copy; 2018 Team Diversity</p>
</div>

</body>
</html>