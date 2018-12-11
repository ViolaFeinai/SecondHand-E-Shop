	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-4">
									<h2> <i><font color=#FF8C00>Αγόρασε!</font></i></h2>
									<h2>Επωφελήσου από τις χαμηλές τιμές των μεταχειρισμένων ειδών του διαδικτυακού μας καταστήματος.</h2>
									<p>Χρησιμοποίησε την γρήγορη αναζήτηση ή επίλεξε την κατηγορία που σ' ενδιαφέρει και βρες το προϊόν που σου ταιριάζει. </p>
									<p>Δες τα νέα μας προϊόντα εδώ</p>
									<a href="#Προσφατα Προϊοντα" <button type="button" class="btn btn-default get">Αγορά</button></a>
								</div>
							    <div class="col-sm-8">
									<img src="images/home/buy.jpeg" class="girl img-responsive" alt="" />
				                </div>
							</div>
							<div class="item">
								<div class="col-sm-4">
									<h2><i><font color=#FF8C00>Πούλησε το!</font></i></h2>
									<h2>Έχεις μεταχειρισμένα είδη σε καλή κατάσταση που θες να πουλήσεις;</h2>
									<p>Ακολούθησε τις σύντομες οδηγίες μας και συμπλήρωσε τη φόρμα πώλησης.Ξεκίνα απο εδώ τη διαδικασία πώλησης του προϊόντος σου.</p>
									<%if (session.getAttribute("user_object")== null) { %>
										<a href="loginView.jsp" <button type="button" class="btn btn-default get">Πώληση</button></a>
									<%}else { %>
										<a href="sell.jsp" <button type="button" class="btn btn-default get">Πώληση</button></a>
									<%}%>
							
								</div>
								<div class="col-sm-8">
									<img src="images/home/sell.jpg" class="girl img-responsive" alt="" />
								</div>
							</div>
							
							<div class="item">
							    <div class="col-sm-4">
									<h2>Αγοράζοντας μεταχειρισμένα προϊόντα συνεισφέρεις κι εσύ στην προστασία του πλανήτη μας!</h2>
									<p>Ικανοποιώντας τις ανάγκες μας με ήδη υπάρχοντα προϊόντα που βρίσκονται σε καλή κατάσταση δεν γλιτώνουμε μόνο χρήμα αλλά συμβάλλουμε και στην μείωση της υπερκατανάλωσης.</p>
									<p>Ξεκίνα κι εσύ να συμβάλλεις στην προσπάθεια αυτή μέσω του Second Shop!</p>
								</div>
							    <div class="col-sm-8">
									<img src="images/home/recycle.jpg" class="girl img-responsive" alt="" />
				                </div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->