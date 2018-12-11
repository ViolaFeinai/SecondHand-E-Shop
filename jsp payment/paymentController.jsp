<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html;  charset=UTF-8" %>


<% request.setCharacterEncoding("utf-8"); %>
<%  String price = request.getParameter("totalPrice");
    String means = request.getParameter("means"); 
	float totalPrice= Float.parseFloat(price);
%>

<%
			Payment payment = new Payment(totalPrice,means);
			DB_SS database = new DB_SS();
			try {
				database.open();
				database.payment(payment);
				database.close(); 
			} catch(Exception exe){
			}
%>
			
<jsp:forward page="paymentView.jsp" />