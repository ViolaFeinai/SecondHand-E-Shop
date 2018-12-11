<%@ page import="java.io.*, ss_lib.* " %>

<%--   Set content type --%>
<%@ page contentType="text/html; charset=utf-8" %>
    
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=windows-1253">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Singup | Second Shop</title>
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
  <jsp:param name="active" value="signup" /> 
</jsp:include> 

<section id="form"><!--form-->
		<div class="container">
			<div class="row">
			    <h1><center>Συμπληρώστε τη φόρμα Εγγραφής</center></h1>
				<br>
				<div class="col-sm-4 col-sm-offset-4">
					<div class="login-form"><!--login form-->
						<form name="form2" method="post" action="signupController.jsp">
							<input type="text" name="name"  required="required" size="30" placeholder="Όνομα" />
							
							<input type="text" name="surname" required="required" size="30" placeholder="Επώνυμο" />
							
							<input type="email" name="email" required="required" placeholder="Ηλεκτρονική Διεύθυνση" />
							
							<input type="password" name="password" id="password" required="required" placeholder="Κωδικός Πρόσβασης" />
							
							<input type="password" name="confirm_password" id="confirm_password" required="required" placeholder="Επιβεβαίωση Κωδικού Πρόσβασης" />
							<script type="text/javascript" src="js/confirmPassword.js"></script>
							<script type="text/javascript">
							validatePassword();
							</script>
							
							<input type="text" name="phone" id="phone" required="required" placeholder="Τηλέφωνο" />
							
							<script type="text/javascript" src="js/checkPhone.js"></script>
							<script type="text/javascript">
							checkPhone();
							</script>
							
							<p><font color=red>*</font> Όλα τα πεδία να είναι υποχρεωτικά</p>
							<span>
								<input type="checkbox" class="checkbox">
								Θέλω να ενημερώνομαι για νέα προϊόντα
							</span>
							<button type="submit" class="btn btn-default">Εγγραφή</button>
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