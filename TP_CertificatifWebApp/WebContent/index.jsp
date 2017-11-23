<%@page import="raizak.session17.certificatif.service.ServiceDAO"%>
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
	<form method="POST" action="controller?action=<%=ServiceDAO.getValue(8,PROPERTIES)%>">
		
		<label for="pseudo">Pseudo : </label><input type="text" id="pseudo" name="<%=ServiceDAO.getValue(3,PROPERTIES)%>"/><br>
		<label for="mdp">Mot de passe : </label><input type="password" id="mdp" name="<%=ServiceDAO.getValue(6,PROPERTIES)%>"/><br>
		<input type="submit" value="Connexion"/><br>
	</form>

	<a href="<%=ServiceDAO.getValue(12,PROPERTIES)%>">Créer un nouveau compte</a>
</body>
</html>