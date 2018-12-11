<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, ss_lib.* " %>
<%@ page errorPage="errorSell.jsp" %>

<% request.setCharacterEncoding("utf-8"); %>

<%if (session.getAttribute("product")== null) {
	throw new Exception(" Δεν έχετε πραγματοποιήσει είσοδο");
}
%>

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
  <div class="modal fade" id="mySecondModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-body">
          <p>Το προϊόν σας καταχωρήθηκε επιτυχώς.Για να συνεχίσετε πατήστε <strong>"Κλείσιμο"</strong> .</p>
        </div>
		<div class="modal-footer">
		 <form id="fform" method="post" action="index.jsp" > 
         <a href="index.jsp" <button type="button" class="btn btn-default get">Κλείσιμο</button></a>
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


 

    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	
	
 
</body>
</html>