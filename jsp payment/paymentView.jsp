<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@  page errorPage="loginError.jsp" %>

<% request.setCharacterEncoding("ISO-8859-7"); %>

 <%! String firstName = null ;
     String lastName = null;
	 User user = null ;
 %>
 
<%if (session.getAttribute("user_object")== null) {
	throw new Exception(" Δεν έχετε πραγματοποιήσει είσοδο");
}else {
	user = (User) session.getAttribute("user_object");
	firstName = user.getName();
	lastName = user.getSurname();
} %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="index.jsp" />  

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
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Η αγορά των προϊόντων σου πραγματοποιήθηκε με επιτυχία!</h4>
        </div>
        <div class="modal-body">
          <p>Ευχαριστούμε που μας επέλεξες! Θα ενημερωθείς σύντομα για την πορεία της παραγγελίας σου. Για να συνεχίσεις πάτησε <strong>"Κλείσιμο".</strong></p>
        </div>
		<div class="modal-footer">
		 <form id="fform" method="post" action="index.jsp" > 
          <button type="submit" class="btn btn-default get" >Κλείσιμο</button>
		  </form>
        </div>
      </div>
      
    </div>
  </div>
</div>
 
<script>
$(document).ready(function(){
    // Show the Modal on load
    $("#myModal").modal("show");
});
</script>

    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	
</html>