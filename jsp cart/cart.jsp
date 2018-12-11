<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html;  charset=UTF-8" %>

<% //request.setCharacterEncoding("ISO-8859-7"); %>

<%// request.setCharacterEncoding("utf-8"); %>

 <%if (session.getAttribute("user_object")== null) { %>
	<jsp:forwardpage="loginView.jsp"/> 
<%} %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | Second Shop</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>

<jsp:include page="headerdokimi.jsp"> 
  <jsp:param name="active" value="cart" /> 
</jsp:include>

<%if (session.getAttribute("cart")!=null) { 
	List<Integer> productlist = (List)session.getAttribute("cart");	
	int counter = productlist.size();
	if (counter>0){ 
	DB_SS database = new DB_SS();
	database.open();
	List<GetProduct> myProducts =database.getProduct();
	database.close(); %>
		<section id="cart_items">
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Προϊόν</td>
							<td class="description">Όνομα</td>
							<td class="price">Τιμή</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<% float totalprice=0; %>
						<%for(int i=0;i<counter;i++){ %>
						<%for(GetProduct product : myProducts){ %>
						<%   if (productlist.get(i)==product.getProductID()) { %>
						<tr>
							<td class="cart_product">
								<a href=""><img src="images/home/imagecomingsoon.png" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href=""><%=product.getProductName()%></a></h4>
							</td>
							<td class="cart_price">
								<p><%= product.getPrice()%> €</p>
							</td>
						<form name="form1" method="post" action="addtocart.jsp" >
							<input type = "hidden" name = "removeproduct" value = <%= product.getProductID() %> />
							<td class="cart_delete">
								<button type="submit" class="cart_quantity_delete"><i class="fa fa-times"></i></button>
							</td>
						</form>
						</tr>
						<% totalprice = totalprice + product.getPrice() ; %>
						<% }
						}
						} %>
						<form id="main-contact-form" class="contact-form row" name="contact-form" method="post" action="payment.jsp">
							<input type = "hidden" name = "totalPrice" value =<%= totalprice %> />
						</form>
					</tbody>
					<thead>
						<tr class="cart_menu">
							<td class="image"><b>Συνολικό Ποσό :</b></td>
							<td class="description"></td>
							<td class="price"><b><%= totalprice%>  €</b></td>
							<td></td> 
						</tr>
						 <tr >
							<td class="image" ></td>
							<td class="description"></td>
							<td class="price"></td>
							<td></td> 
						</tr>
							 
							<td class="image"><a href="index.jsp" <button type="submit" class="btn btn-default">Συνέχεια Αγορών</button></a></td>
							<td class="description"></td>
							<td class="price"><a href="payment.jsp" <button type="submit" class="btn btn-default">Πληρωμή</button></a></td>
							<td></td> 
						
					</thead>
				</table>
				
			</div>
		</div>
	</section> <!--/#cart_items-->
<%} else { %>
<br>
<br>
<br>
<br>
<br>
	<section id="cart_items">
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Το καλάθι σας είναι άδειο</td>
							<td class="price"><a href="index.jsp" <button type="submit" class="btn btn-default">Επιστροφή στην αρχική</button></a></td>
						</tr>
					</thead>
				</table>	
			</div>
		</div>
</section> <!--/#cart_items-->	
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<% } 
} else {%>
	<section id="cart_items">
		<div class="container">
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Το καλάθι σας είναι άδειο!</td>
							<td></td>
						</tr>
					</thead>
				</table>	
			</div>
		</div>
</section> <!--/#cart_items-->	
<% } %>

	
 <jsp:include page="footer.jsp" />

    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>