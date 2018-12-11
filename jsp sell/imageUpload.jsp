<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, ss_lib.* " %>

<% request.setCharacterEncoding("utf-8"); %>

 <%if (session.getAttribute("user_object")== null) { %>
	<jsp:forwardpage="loginView.jsp"/> 
<%} %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=windows-1253">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Sell | Second Shop</title>
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
  <jsp:param name="active" value="sell" /> 
</jsp:include> 
 <br>
 <br>
		<center><img src="images/home/newpoulise.png" alt="" /></center>
	
<section id="form"><!--form-->
		<div class="container">
			<div class="row">
			    <h1><center><i>1o Βήμα : Ανέβασε την φωτογραφία του προϊόντος</i></center></h1>
				<br>
				<br>
				<br>
				<div class="col-sm-4 col-sm-offset-4">
					<div class="login-form"><!--login form-->
						<form id="secondform" method="post" action="uploads" enctype="multipart/form-data" > 
							<h2>Προσθέστε μια φωτογραφία του προϊόντος σας</h2>
							<table>
								<tr>
									<td ><input name="imageupload" type="file"  /></td>
								</tr>
							</table>
							<br>
							<button type="submit" class="btn btn-default">Υποβολή</button>
						</form>	
						
					</div><!--/login form-->
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