<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>
<%@ page contentType="text/html;  charset=UTF-8" %>
<%@ page errorPage="signupError.jsp" %>

<% request.setCharacterEncoding("utf-8"); %>
<%  String name = request.getParameter("name");
    String surname = request.getParameter("surname"); 
	String email = request.getParameter("email"); 
	String password = request.getParameter("password"); 
	String phone = request.getParameter("phone"); 
%>

<%
			User user_object = new User(email,password,name,surname,phone);
			DB_SS database = new DB_SS();
			try {
				database.open();
				database.registerUser(user_object);
				database.close(); 
			} catch(Exception exe){
			}
%>
			
<jsp:forward page="loginView.jsp" />