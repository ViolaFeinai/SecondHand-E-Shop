<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@  page errorPage="loginError.jsp" %>

<% request.setCharacterEncoding("ISO-8859-7"); %>

<%if (session.getAttribute("product")== null) {
	throw new Exception(" Δεν έχετε πραγματοποιήσει είσοδο");
}else { 
	Product product = (Product) session.getAttribute("product");
	String category = product.getCategory();
	String name = product.getProductName(); 
	float price = product.getPrice();
	String cond = product.getCond();
	String description = product.getDescription();
	String image = product.getImage();

	%>
<img src='boutsa.png' alt="Mountain View" >
	<%=category %>
	<%=name %>
	<%=price %>
	<%=cond %>
	<%=description %>
	<%=image %>
<%} %>

