<%@ include file="../sides/header.jsp" %>

	<h2 class="mt-3 ml-5">Statistiques</h2> <br/>

	<div class="container">
		<table class="table table-striped table-bordered">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Chemin</th>
					<th scope="col">Nombre de visites</th>
					<th scope="col">Min (ms)</th>
					<th scope="col">Max (ms)</th>
					<th scope="col">Moyenne (ms)</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${statistiques}" var='s'>
					<tr>
						<th><c:out value="${s.chemin}"/></th>
						<td><c:out value="${s.nbreVisites}"/></td>
						<td><c:out value="${s.tempsExecutionMin}"/></td>
						<td><c:out value="${s.tempsExecutionMax}"/></td>
						<td><c:out value="${s.tempsExecutionMoyenne}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

   <a class="btn btn-info" href="<c:url value='/collaborateurs/lister'/>">Lister utilisateurs </a>

<%@ include file="../sides/footer.jsp" %>