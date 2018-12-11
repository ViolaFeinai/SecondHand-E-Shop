<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Payment | Second Shop</title>
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
  <jsp:param name="active" value="login" /> 
</jsp:include> 
 
    <section id="form"><!--form-->
		<div class="container">
			<div class="row">
			    <h1><center><i>Συμπληρώστε τα παρακάτω στοιχεία για να ολοκληρωθεί η διαδικασία</i></center></h1>
				<br>
				<br>
				<br>
				<div class="col-sm-4 col-sm-offset-4">
					<div class="login-form"><!--payment form-->
						<form name="form2" method="post" action="paymentView.jsp">        
								<legend>Στοιχεία απαραίτητα για την αποστολή του προϊόντος</legend>
								<table>
									<tr>
										<th>Πόλη:</th>
										<td><input name="city"  id="city" type="text" size="30" placeholder="Πόλη" required="required"> </td>
									</tr>
									<tr>
										<th>Διεύθυνση:</th>
										<td ><input name="address"  id="address" type="text" size="30" placeholder="Διεύθυνση" required="required"> </td>
									</tr>
									<tr>
										<th>Ταχυδρομικός Κώδικας:</th>
										<td ><input name="tk"  id="tk" type="text" size="30" placeholder="Τ.Κ." required="required"> </td>
									</tr>
								</table>
								<br>
								<script type="text/javascript" src="js/checkPostal.js"></script>
								<script type="text/javascript">
								checkPostal();
								</script>
								<br>
								
								<legend>Στοιχεία απαραίτητα για την πραγματοποίηση της συναλλαγής</legend>
								<table>
									<tr>
										<th>Επιλέξτε τρόπο πληρωμής:</th>
										<td>
										<select required name="means" >
											<option value="">Δεν έχει επιλεχθεί</option>
											<option value="katathesi">Κατάθεση</option>
											<option value="adikatavoli">Αντικαταβολή</option>
										</select>
										</td>
									</tr>
								</table>
						<br>
						<br>
						<br>
						   		
							<p><font color=red>*</font> Όλα τα πεδία να είναι υποχρεωτικά</p>
							
							<button type="submit" class="btn btn-default">Τέλος</button>
						</form>
					</div><!--/payment form-->
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