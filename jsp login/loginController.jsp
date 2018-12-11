<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page errorPage="loginError.jsp" %>

<% request.setCharacterEncoding("ISO-8859-7"); %>
<%  String email = request.getParameter("email");
    String password = request.getParameter("password"); %>

<%
			DB_SS database = new DB_SS();
			database.open();
			User user_object = database.authenticateUser(email,password);
			session.setAttribute("user_object", user_object);
			database.close(); 
%>
			
<jsp:forward page="loginView.jsp"/> 



	
	

