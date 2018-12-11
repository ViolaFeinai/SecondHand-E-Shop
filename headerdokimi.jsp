<%-- A header, included in top of every jsp page. --%>
<%--   Set content type --%>
<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page errorPage="headerErrorPage.jsp" %>

<% String active = request.getParameter("active");%>
<% String name = request.getParameter("name");%>
<% String surname = request.getParameter("surname");%>

 <%! String username = null ;
	 User userr = null ;
 %>

	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="navbar-collapse collapse">
								<li><a href="https://el-gr.facebook.com/"><i class="fa fa-facebook"></i></a></li>
								<li><a href="https://twitter.com/?lang=el"><i class="fa fa-twitter"></i></a></li>
								<li><a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="https://accounts.google.com/ServiceLogin?service=oz&passive=1209600&continue=https://plus.google.com/?gpsrc%3Dgplp0#identifier#"><i class="fa fa-google-plus"></i></a></li>
								
								<%if (session.getAttribute("user_object")== null) { %>
									<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" ><span class="fa fa-lock"></span> Σύνδεση | Εγγραφή <span class="caret"></span></a>
									<ul class="dropdown-menu">
									<li><a href="login.jsp"> Σύνδεση </a> </li>
									<br>
									<li><a href="signup.jsp"> Εγγραφή </a> </li>
									</li>
									</ul>
								<% }else {
									userr = (User) session.getAttribute("user_object");
									username = userr.getName(); %>
								
									<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" ><span class="glyphicon glyphicon-user"></span> <%=username%> <span class="caret"></span></a>
									<ul class="dropdown-menu">
									<li><a href="logoutView.jsp"> Έξοδος </a> </li>
									</li>
									</ul>
								
								<%} %>
							
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->

		<div class="header-bottom"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.jsp"><img src="images/home/logo.png" alt="" height="130" width="360" /></a>
						</div>
				</div>
			</div>
		</div><!--/header-middle-->
		</br>

		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9 ">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">

							<ul class="nav navbar-nav collapse navbar-collapse">
							<% if (active.equals("index")) { %>
								<li><a href="index.jsp" class="active">Αρχική</a></li>
							<% } else { %>
								<li><a href="index.jsp">Αρχική</a></li>
							<% } %>
								<li><a href=""><i class="fa fa-star"></i> Αγαπημένα</a></li>
							<% if (active.equals("cart")) { %>
								<li><a href="cart.jsp" class="active"><i class="fa fa-shopping-cart"></i> Καλάθι</a></li>
							<% } else { %>
								<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Καλάθι</a></li>
							<% } %>
							<% if (active.equals("sell")) { %>
								<li><a href="sell.jsp" class="active"><i class="fa fa-eur"></i> Πούλησε</a></li>
							<% } else { %>
									<li><a href="sell.jsp"><i class="fa fa-eur"></i> Πούλησε</a></li>
							<% } %>
							<% if (active.equals("contact-us")) { %>
								<li><a href="contact-us.jsp" class="active"><i class="fa fa-user"></i> Επικοινωνία</a></li>
							<% } else { %>
								<li><a href="contact-us.jsp"><i class="fa fa-user"></i> Επικοινωνία</a></li>
							<% } %>
					
							</ul>
						</div>
					</div>
						<form  method="post" action="searchController.jsp">
							<div class="social-icons pull-right">
								<div id="imaginary_container"> 
									<div class="input-group stylish-input-group">
										<input name ="search" type="text" class="form-control"  placeholder="Αναζήτηση" >
										<span class="input-group-addon">
											<button type="submit">
												<span class="glyphicon glyphicon-search"></span>
											</button>  
										</span>
									</div>
								</div> 
							</div>
						</form>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->