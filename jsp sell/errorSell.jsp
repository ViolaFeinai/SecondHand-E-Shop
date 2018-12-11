<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, ss_lib.* " %>
<%@ page isErrorPage="true" %>

<% request.setCharacterEncoding("ISO-8859-7"); %>

<!DOCTYPE html>
<html lang="en">
<head>


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


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
			    <h1><center><i>Συμπληρώστε τα απαραίτητα στοιχεία για την πώληση</i></center></h1>
				<br>
				<br>
				<br>
				<div class="col-sm-4 col-sm-offset-4">
					<div class="login-form"><!--login form-->
						<form name="form1" method="post" action="sellController.jsp" >   
								<legend>Πληροφορίες για το προϊόν</legend>
								<table>
									<tr>
										<th>Όνομα προϊόντος:</th>
										<td><input name="name" id="productname" type="text" size="30" placeholder="Όνομα" required="required"> </td>
									</tr>
				
									<tr>
										<th>Κατηγορία προϊόντος:</th>
										<td>
										<select required name="category" >
											<option value="">Δεν έχει επιλεχθεί</option>
											<option value="Ρουχα">Ρούχα</option>
											<option value="Τσαντες">Τσάντες</option>
											<option value="Παπουτσια">Παπούτσια</option>
											<option value="Κοσμηματα">Κοσμήματα</option>
											<option value="Smartphones-Κινητα-Αξεσουαρ Κινητων">Smartphones-Κινητά-Αξεσουάρ Κινητών</option>
											<option value="Υπολογιστες-Laptop-Tablets">Υπολογιστές-Laptop-Tablets</option>
											<option value="Ψηφιακες Μηχανες">Ψηφιακές Μηχανές</option>
											<option value="Τηλεορασεις">Τηλεοράσεις</option>
											<option value="Ποδηλατα">Ποδήλατα</option>
											<option value="Όργανα Γυμναστικης">Όργανα Γυμναστικής</option>
											<option value="Επιτραπεζια">Επιτραπέζια</option>
											<option value="Κονσολες & Video Games">Κονσόλες & Video Games</option>
											<option value="Κουζινα">Κουζίνα</option>
											<option value="Υπνοδωματιο">Υπνοδωμάτιο</option>
											<option value="Σαλονι">Σαλόνι</option>
											<option value="Κηπος">Κήπος</option>
											<option value="Έγχορδα">Έγχορδα</option>
											<option value="Κρουστα">Κρουστά</option>
											<option value="Εργαλεια">Εργαλεία</option>
											<option value="Βιβλια">Βιβλία</option>
											<option value="Ταινιες & CD">Ταινίες & CD</option>
										</select>
										</td>
									</tr>
									<tr>
										<th>Tιμή προϊόντος:</th>
										<td ><input name="price" id="price" type="number" step="0.01" size="30" min="0.01" placeholder="Τιμή" > </td>
									</tr>
									
									<tr>
										<th>Κατάσταση:</th>
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
							<textarea name="description" cols="55" rows="3"></textarea>
						</p>
						<br>
						
						   <br>
								<legend>Στοιχεία Λογαριασμού</legend>
								<table>
									<tr>
										<th>Αριθμός Λογαριασμού:</th>
										<td><input name="account" id="account" type="number" size="30" placeholder="Αριθμός Λογαριασμού" required="required" > </td>
									</tr>
								</table>
								<br>
							<script type="text/javascript" src="js/checkAccount.js"></script>
							<script type="text/javascript">
							checkAccount();
							</script>
							
							
							<table>
								<tr>
									<th><label for="imageupload">Προσθέστε μια φωτογραφία του προϊόντος σας:</label></th>
								</tr>
								<tr>
									<td ><input name="imageupload" id="imageupload" type="file" enctype="multipart/form-data" /></td>
								</tr>
							</table>
							
							
						<p><font color=red>*</font> Όλα τα πεδία είναι υποχρεωτικά</p>
							<span>
								<input type="checkbox" class="checkbox" required="required">
								Αποδέχομαι τους όρους χρήσης
							</span>
							<br>
							<button type="submit" class="btn btn-primary">Υποβολή</button>
						</form>
						<br>
						<br>


					</div><!--/login form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	
	
	<style>
#myBtn {
    width: 300px;
    padding: 10px;
    font-size:20px;
    position: absolute;
    margin: 0 auto;
    right: 0;
    left: 0;
    bottom: 50px;
    z-index: 9999;
}
</style>
<div class="container">

  <!-- Modal -->
  <div class="modal fade" id="mySecondModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <p>Πας να κάνεις ζαβολιά ατιμούτσικο; Συμπλήρωσε τα στοιχεία σου πριν σε καταγγείλω στην δίωξη ηλεκτρονικού εγκλήματος. Για να συνεχίσεις ζήτα <strong>"Συγγνώμη"</strong> .</p>
        </div>
		<div class="modal-footer">
	 <form id="fform" method="post" action="index.jsp" > 
        <button type="submit" class="btn btn-default get">Συγγνώμη</button>
	 </form>	
        </div>
      </div>
      
    </div>
  </div>
</div>
 
<script>
$(document).ready(function(){
    // Show the Modal on load
    $("#mySecondModal").modal("show");
});
</script>


 <jsp:include page="footer.jsp" />



    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>