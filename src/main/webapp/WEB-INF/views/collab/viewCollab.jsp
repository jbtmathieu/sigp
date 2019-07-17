
<%@ page import = "java.io.*,java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
  <title>Creation window</title>
</head>
<body>
         <h2>Aperçu Utilisateur</h2>
         
         
 
   <img src="<c:url value='/img/img_avatarM.png'/>" style="width:20%" class="mr-3" alt="..." />   

        <%--  out.print("JSP Parameters"); --%>
         <br>
        <table class="table">
  <thead>

  </thead>
     <!--    <tbody>     <tr>
      <th scope="col">Name</th>
      <th scope="col">Value</th> 
      -->
    </tr>   
            <%
            Enumeration paramNames = request.getParameterNames(); %>
            <%-- JSP Parameters exploitation--%>
            <% 
            
            while(paramNames.hasMoreElements()) {
               String paramName = (String)paramNames.nextElement();
               out.print("<tr><th scope=\"row\"><td>"+paramName 
            		   + "</th>\n : <td>" 
               		   + request.getParameter(paramName) + "</td></tr>\n");
               }
            %>

		</tbody>
		</table>
   <a class="btn btn-info" href="<c:url value='/collaborateurs/creer'/>">Retour création utilisateur</a> 

   <a class="btn btn-dark" href="<c:url value='/collaborateurs/lister'/>">Lister utilisateurs </a>
   </body>
</html>
