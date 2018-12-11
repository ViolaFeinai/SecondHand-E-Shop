<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.sql.*,java.util.*, ss_lib.* " %>

<% request.setCharacterEncoding("utf-8"); %>

<% 	List<Integer> productlist = null;
	productlist = (List)session.getAttribute("cart");
	if (request.getParameter("code")!=null) { 
		String kwdikos = request.getParameter("code");
		int code= Integer.parseInt(kwdikos);
		if(productlist == null) {
			productlist  = new ArrayList<Integer>();	
		} 	
		productlist.add(code);
		session.setAttribute("cart", productlist);
	}
	if (request.getParameter("removeproduct")!=null) {
		String removekwd = request.getParameter("removeproduct");
		int removeproduct= Integer.parseInt(removekwd);
		for(int i=0;i<productlist.size();i++){
			if (productlist.get(i)==removeproduct) {
				productlist.remove(i);
			}
		}
	}
%>


<jsp:forward page="cart.jsp"/> 


 