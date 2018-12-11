<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, ss_lib.* " %>

<% request.setCharacterEncoding("ISO-8859-7"); %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | Second Shop</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body>

<jsp:include page="headerdokimi.jsp"> 
  <jsp:param name="active" value="login" /> 
</jsp:include> 
	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-2">
					<div class="login-form"><!--login form-->
						<h2>Συνδεθείτε στο λογαριαμό σας</h2>
						 <form name="form1" method="post" action="loginController.jsp">
							<input type="email" name="email" id="email" required="required"  placeholder="Ηλεκτρονική Διεύθυνση" />
							<input type="password" name="password" id="password" required="required"  placeholder="Κωδικός" />
							<span>
								<input type="checkbox" class="checkbox">
								Να παραμείνω συνδεδεμένος
							</span>
							<button type="submit" class="btn btn-primary">Σύνδεση</button>
						</form>
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<div style="height:300px;width:0;border:0;border-left:4px;border-style:solid;border-color:#778899"></div>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2>Δεν έχεις λογαριασμό;</h2>
						<form action="signup.jsp">
							<button type="submit" class="btn btn-primary">Εγγραφή</button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->

 <jsp:include page="footer.jsp" />   
 
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	
	
 
</body>
</html>