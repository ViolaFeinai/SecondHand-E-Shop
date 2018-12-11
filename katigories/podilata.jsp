<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>

<% request.setCharacterEncoding("ISO-8859-7"); %>

<%  DB_SS database = new DB_SS();
	database.open();
	List<GetProduct> myProducts =database.getProduct();
	database.close(); 
%>

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
  <jsp:param name="active" value="index" /> 
</jsp:include> 

<jsp:include page="carousel.jsp" />
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Κατηγοριες</h2>
						<jsp:include page="katigories.jsp" />
						<div class="price-range"><!--price-range-->
						
							<h2>Ευρος Τιμων</h2>
							<form id="main-contact-form" class="contact-form row" name="contact-form" method="post" action="priceController.jsp">
										<input type = "hidden" name = "katigoria" value = "Ποδήλατα" />
										<div class="form-group col-md-6">
											<input type="number" step="0.01" size="30" min="0.01" name="apo" class="form-control"  placeholder="Από"> 
										</div>
										<div class="form-group col-md-6">
											<input type="number" step="0.01" size="30" min="0.01" name="ews" class="form-control"  placeholder="Εώς"> 
										</div>	

							<br>
							<h2>Κατασταση</h2>
									<input type="checkbox" name="aristi" /> Άριστη <br />
									<input type="checkbox" name="kali"/> Καλή <br />
									<input type="checkbox" name="metria"/> Μέτρια <br />
							<br>
									<center><button type="submit" class="btn btn-default">Εφαρμογή Φίλτρων</button></center>
							</form>
						</div>
					</div>
				</div>

				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<a name="Προσφατα Προϊοντα">
						<h2 class="title text-center">Ποδηλατα</h2>
			<% int counter = 0; 
				String descr;
				String categ;
				
			 for(GetProduct product : myProducts){ 
			  descr = product.getDescription();
			  categ = product.getCategory();
			  if(categ.equals("Ποδήλατα")){
			    
			 %>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
										<div class="productinfo text-center">
											<img src="uploads/<%= product.getImage() %>" alt="" />
											<h2><%= product.getPrice() %> €</h2>
											<p><%= product.getProductName() %></p>
											<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Προσθήκη στο καλάθι</a>
										</div>
										<div class="product-overlay">
											<div class="overlay-content">
												<p><b>Κατάσταση:</b> <%= product.getCond() %>
												<br>
												<p><b>Κατηγορία:</b> <%= product.getCategory() %>
												<br>	
												<% if (descr.length()==0) { 
													descr = "Δεν υπάρχει διαθέσιμη περιγραφή";
												} %>
												<p><b>Περιγραφή : </b><%= descr %>
												<br>
												<br>
												<h2><%= product.getPrice() %> €</h2>
												<p><%= product.getProductName() %></p>
												<% descr = product.getDescription(); %>
												<form name="form1" method="post" action="addtocart.jsp" >
													<input type = "hidden" name = "code" value = <%= product.getProductID() %> />
													<button type="submit" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Προσθήκη στο καλάθι</button>
												</form>
											</div>
										</div>
										
								</div>
								<div class="choose">
									
								</div>
							</div>
						</div>
			<% 
			}
			counter++;
			} %>
			
					</div><!--features_items-->
					
				
			</div>
		</div>
		<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-content">
				<ul class="list-inline item-details">
					<li><a href="http://themifycloud.com">ThemifyCloud</a></li>
					<li><a href="http://themescloud.org">ThemesCloud</a></li>
				</ul>
			</div>
		</div>
	</section>

	 <jsp:include page="footer.jsp" />
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
  

</body>
</html>