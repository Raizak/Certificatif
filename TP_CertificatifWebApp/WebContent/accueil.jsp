<%@page import="raizak.session17.certificatif.service.ServiceDAO"%>
<%@page import="raizak.session17.certificatif.bean.Client"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% final String PROPERTIES = "res";%>
	<h2> Bienvenu </h2>
	<a href="<%=ServiceDAO.getValue(10,PROPERTIES)%>"> Retour à l'accueil</a>


</body>
</html>