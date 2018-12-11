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
			    <h1><center><i>2ο Βήμα : Συμπληρώστε τα απαραίτητα στοιχεία για την πώληση</i></center></h1>
				<br>
				<br>
				<br>
				<div class="col-sm-4 col-sm-offset-4">
					<div class="login-form"><!--login form-->
						<form id="firstform" method="post" action="sellController.jsp" >   
								<h2>Πληροφορίες για το προϊόν</h2>
								<table>
									<tr>
										<th><font color=red>*</font>  Όνομα προϊόντος:</th>
										<td><input name="name" id="productname" type="text" size="30" placeholder="Όνομα" required="required"> </td>
									</tr>
									<tr>
										<th><font color=red>*</font>  Όνομα εικόνας προϊόντος :</th>
										<td><input name="image" id="productname" type="text" size="30" placeholder="π.χ image.png" required="required"> </td>
									</tr>
				
									<tr>
										<th><font color=red>*</font>  Κατηγορία προϊόντος:</th>
										<td>
										<select required name="category" >
											<option value="">Δεν έχει επιλεχθεί</option>
											<option value="Ρούχα">Ρούχα</option>
											<option value="Τσάντες">Τσάντες</option>
											<option value="Παπούτσια">Παπούτσια</option>
											<option value="Κοσμήματα">Κοσμήματα</option>
											<option value="Smartphones-Κινητά-Αξεσουάρ Κινητών">Smartphones-Κινητά-Αξεσουάρ Κινητών</option>
											<option value="Υπολογιστές-Laptop-Tablets">Υπολογιστές-Laptop-Tablets</option>
											<option value="Ψηφιακές Μηχανές">Ψηφιακές Μηχανές</option>
											<option value="Τηλεοράσεις">Τηλεοράσεις</option>
											<option value="Ποδήλατα">Ποδήλατα</option>
											<option value="Όργανα Γυμναστικής">Όργανα Γυμναστικής</option>
											<option value="Επιτραπέζια">Επιτραπέζια</option>
											<option value="Κονσόλες & Video Games">Κονσόλες & Video Games</option>
											<option value="Κουζίνα">Κουζίνα</option>
											<option value="Υπνοδωμάτιο">Υπνοδωμάτιο</option>
											<option value="Σαλόνι">Σαλόνι</option>
											<option value="Κήπος">Κήπος</option>
											<option value="Έγχορδα">Έγχορδα</option>
											<option value="Κρουστά">Κρουστά</option>
											<option value="Πνευστά">Πνευστά</option>
											<option value="Εργαλεία">Εργαλεία</option>
											<option value="Βιβλία">Βιβλία</option>
											<option value="Ταινίες & CD">Ταινίες & CD</option>
										</select>
										</td>
									</tr>
									<tr>
										<th><font color=red>*</font>  Tιμή προϊόντος:</th>
										<td ><input name="price" id="price" type="number" step="0.01" size="30" min="0.01" max="10000" placeholder="Τιμή" > </td>
									</tr>
									
									<tr>
										<th><font color=red>*</font>  Κατάσταση:</th>
										<td>
										<select required name="condition" >
											<option value="">Δεν έχει επιλεχθεί</option>
											<option value="Άριστη">Άριστη</option>
											<option value="Καλη">Καλή</option>
											<option value="Μετρια">Μέτρια</option>
										</select>
										</td>
									</tr>
								</table>
						<br>
						<p>
							<span class="question"><b>Δώστε επιπλέον στοιχεία για το προϊόν:</b></span>
							<br>
							<textarea name="description" cols="55" rows="3"  maxlength="45"></textarea>
						</p>
						<br>
						
						   <br>
								<h2>Στοιχεία Λογαριασμού</h2>
								<table>
									<tr>
										<th><font color=red>*</font>  Αριθμός Λογαριασμού:</th>
										<td><input name="account" id="account" type="text" size="30" placeholder="Αριθμός Λογαριασμού"> </td>
									</tr>
								</table>
								<br>
							<script type="text/javascript" src="js/checkAccount.js"></script>
							<script type="text/javascript">
							checkAccount();
							</script>
							<p> Όλα τα πεδία με <font color=red>*</font> είναι υποχρεωτικά.</p>
							<span>
				  				<input type="checkbox" class="checkbox" required="required">
								Αποδέχομαι τους όρους χρήσης.
							</span>
						<button type="submit" class="btn btn-default">Υποβολή</button>
						</form>						
						<br>
						<br>


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