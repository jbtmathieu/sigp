<%@ include file="../sides/header.jsp" %>
         <h2>Aper�u Utilisateur</h2>
         
         
 
   <img src="<c:url value='/img/img_avatarM.png'/>" style="width:20%" class="mr-3" alt="..." />   

        <%--  out.print("JSP Parameters"); --%>
         
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
   <a class="btn btn-info" href="<c:url value='/collaborateurs/creer'/>">Retour cr�ation utilisateur</a> 

   <a class="btn btn-dark" href="<c:url value='/collaborateurs/lister'/>">Lister utilisateurs </a>
<%@ include file="../sides/footer.jsp" %>
