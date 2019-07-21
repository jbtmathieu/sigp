<%@page import="dev.sgp.service.CollaborateurService"%>
<%@page import="dev.sgp.entite.*"%>
<%@page import="dev.sgp.util.*"%>
<%@page import="java.util.List"%>
<%@page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c-rt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-4.3.1-dist/css/bootstrap.css">
	<title>SGP - App</title>
	</head>
	<body>
	<h1>Les collaborateurs</h1>
		<ol>
	
			<%--
			
			Collaborateur collab = null;
			//creating arraylist object of type category class
			List<Collaborateur> listeCollab = new ArrayList<Collaborateur>();
			//storing passed value from jsp
			listeCollab = request.getAttribute("listeCollab");

			for(int i = 0; i < listeCollab.size(); i++) {

			collab = listeCollab.get(i);

			
			%>
			<li><%=collab.getNom() %></li>
			<li><%=collab.getPrenom() %></li>
			<li><%=collab.getDateDeNaissance() %></li>
			<li><%=collab.getAdresse() %></li>
			<li><%=collab.getEmailPro() %></li>
			<li><%=collab.getMatricule() %></li>
			<li><%=collab.getDateHeureCreation() %></li>
			<li><%=collab.getNumeroSecuriteSociale() %></li>
			<li><%=collab.getPhotoLoc() %></li>
			<%
			}
			--%>
			<% 
			List<Collaborateur> collaborateurs = Constantes.COLLAB_SERVICE.listerCollaborateurs();
		
			 %> 
			 <%-- 
			 <c:forEach var="collab" items="${Constantes.COLLAB_SERVICE.listeCollaborateurs}" >
     			${collaborateur}
     			<li><ul><li><c:out value="${listeCollab.get(collab).getNom()}"/></li>
     			<%=collaborateurs.get(0).getPrenom() %>
				<li><c:out value="${collab.getPrenom}"/></li>
				<li><c:out value="${collab.DDN"/></li>
				<li>${collab}.getAdresse()</li>
				<li><c:out value="${collab.getEmailPro()"/></li>
				<li>${collab.Matricule}</li>
				<li><c:out value="${listeCollab}.get(collab).getDateHeureCreation()"/></li>
				<li>${collab.getNumeroSecuriteSociale()}</li>
				<li>${collab.getPhotoLoc()}</li></ul></li>
			</c:forEach>
			--%>
			<%
		 %>
		<%--
		out.print("<li> Attribut ciblé:"+collaborateurs.get(0).getNom()+"</li>");
		--%>
				</ol>
		
<a href="<c:url value="/collaborateurs/creer"/>">Retour création utilisateur</a> 
	

	</body>
</html>