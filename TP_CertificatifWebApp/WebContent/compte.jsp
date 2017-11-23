<%@page import="raizak.session17.certificatif.service.ServiceDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

span{
	color:red;
}

#info{
	color:black;
}



</style>
</head>
<body>

	<% final String PROPERTIES = "res";%>
	<form method="POST" action="controller?action=<%=ServiceDAO.getValue(9,PROPERTIES)%>">
	
		<p><label for="lblNom"> Nom : </label><input type="text" id="lblNom" placeholder="EXEMPLE" name="<%=ServiceDAO.getValue(1,PROPERTIES)%> "/>
		<span><%=(String)request.getAttribute(ServiceDAO.getValue(1,PROPERTIES)) %></span></p>    
		                                             
		<p><label for="lblPrenom"> Prénom : </label><input type="text" id="lblPrenom" placeholder="Exemple" name="<%=ServiceDAO.getValue(2,PROPERTIES)%>"/>
		<span><%=(String)request.getAttribute(ServiceDAO.getValue(2,PROPERTIES)) %></span></p>
		
		<p><label for="lblEmail"> Email : </label><input type="text" id="lblEmail" placeholder="exemple01" name="<%=ServiceDAO.getValue(3,PROPERTIES)%>"/><span id="info">@certificatif.com</span>
		<span><%=(String)request.getAttribute(ServiceDAO.getValue(3,PROPERTIES)) %></span></p>
		
		<p><label for="lblEmailSecour"> Email de secour (Facultatif) : </label><input type="text" id="lblEmailSecour" placeholder="exemple02@gmail.com" name="<%=ServiceDAO.getValue(4,PROPERTIES)%>"/>
		<span><%=(String)request.getAttribute(ServiceDAO.getValue(4,PROPERTIES)) %></span></p>
		
		<p><label for="lblTelephone"> Téléphone : </label><input  type="text" id="lblTelephone" placeholder="(438)498-9879" name="<%=ServiceDAO.getValue(5,PROPERTIES)%>"/>
		<span><%=(String)request.getAttribute(ServiceDAO.getValue(5,PROPERTIES)) %></span></p>
		
		
		<p> Mot de passe : premiere lettre en majuscule et contient au minimum 1 chiffre</p>
		
		<p><label for="lblMdp"> Mot de passe : </label><input type="password" id="lblMdp"  name="<%=ServiceDAO.getValue(6,PROPERTIES)%>"/>
		<span><%=(String)request.getAttribute(ServiceDAO.getValue(6,PROPERTIES)) %></span></p>
		
		<p><label for="lblMdpValide"> Confirmer votre mot de passe : </label><input type="password" id="lblMdpValide"  name="<%=ServiceDAO.getValue(7,PROPERTIES)%>"/>
		<span><%=(String)request.getAttribute(ServiceDAO.getValue(7,PROPERTIES)) %></span></p>
	
		<input type="submit" value="Confirmer"/>
		<input type="reset" value="Annuler"/>
	</form>
	
	<a href="<%=ServiceDAO.getValue(10,PROPERTIES)%>">Retour à l'accueil</a>


</body>
</html>