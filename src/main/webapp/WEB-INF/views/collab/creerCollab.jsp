
<%@ include file="../sides/header.jsp" %>
        <h1> Nouveau Collaborateur</h1>
<!-- <form  action ="viewCollab.jsp" method="post"> pour acces direct-->
<form  method="post">
        <div class="container">
            <div class="row">
                <div class="col-5">Nom</div>
                <div class="col-7"><input type="text" name="Name" required></div>
                <br>
            </div>
            <div class="row-1">
            </div>
            <div class="row">
                <div class="col-5">Prenom</div>
                <div class="col-7"><input type="text" name="FirstName" required></div>
                <br>
            </div>
            <div class="row">
                <div class="col-5">Date de naissance</div>
                <div class="col-7"><input type="text" name="BirthDate" required></div>
                <br>
            </div>
            <div class="row">
                <div class="col-5">Adresse</div>
                <div class="col-7"><input type="text" name="Address"required></div>
                <br>
            </div>
            <div class="row">
                <div class="col-5">Numéro de sécurité sociale</div>
                <div class="col-7"><input type="text" name="ssNumber" required></div>
                <br>
            </div>
            <div class="row mt-2">
                    <div class="col-6"></div>
                    
                    <input type="submit" formmethod="post" value="Créer Collaborateur" class="btn btn-success">
                  
                    <br>
                </div>
</div>
</form>
<!--  
	<a href="<c:url value="/collaborateurs/lister"/>" var="path">Lister Utilisateurs</a> 
	-->
	<a class="btn btn-dark mt-5" href="<c:url value='/collaborateurs/lister'/>">Lister utilisateurs </a>
<%@ include file="../sides/footer.jsp" %>