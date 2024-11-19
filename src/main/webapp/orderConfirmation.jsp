<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookRepository" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String cartId=session.getId();
	
	String shippint_cartId="";
	String shippint_name="";
	String shippint_shippingDate="";
	String shippint_country="";
	String shippint_zipCode="";
	String shippint_addressName="";
	
	Cookie[] cookies=request.getCookies();
	
	if (cookies!=null) {
		for(int i=0; i <cookies.length; i++) {
			Cookie thisCookie=cookies[i];
			String n= thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId =URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name=URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_"))
				shipping_=URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_"))
				shipping_=URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_"))
				shipping_=URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_"))
				shipping_=URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}