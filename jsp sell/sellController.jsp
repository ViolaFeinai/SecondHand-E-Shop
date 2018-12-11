<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page errorPage="errorSell.jsp" %>


<% request.setCharacterEncoding("utf-8"); %>

<%  	
	String name = request.getParameter("name");
    String category = request.getParameter("category");
	String timi = request.getParameter("price");
	String cond = request.getParameter("condition");
	String description = request.getParameter("description");
	float price= Float.parseFloat(timi);
	String image = request.getParameter("image");
	%>


<%
			//name = new String(name.getBytes("ISO-8859-7"), "UTF-8");
			//category = new String(category.getBytes("ISO-8859-7"), "UTF-8");
			//cond = new String(cond.getBytes("ISO-8859-7"), "UTF-8");
			//description = new String(description.getBytes("ISO-8859-7"), "UTF-8");
			DB_SS database = new DB_SS();
			Product product = new Product(name,category,cond,price,description,image);
			session.setAttribute("product", product);
			try {
				database.open();
				database.insertProduct(product);
				database.close(); 
			} catch(Exception exe){
			}
%>
			
<jsp:forward page="sellView.jsp"/> 



	
	

