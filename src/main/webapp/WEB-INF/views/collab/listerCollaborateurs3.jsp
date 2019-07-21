<%@ include file="../sides/header.jsp" %>
   <h1> Les Collaborateurs</h1>
    <div class="container">
        <div class="row">
            <div class="col-5" name="CollabSearch" >
              Rechercher un nom ou un prénom qui commence par : 
              
             </div>
             <div class="col-3">
             <input type="text">
             </div>
             <div class="col">
       
 <button type="button" class="btn btn-primary">Rechercher</button> 
            <div class="right">
           
              <div class="custom-control custom-checkbox" name="deaCollab"></div>
              
              
            <input type="checkbox" class="custom-control-input" id="customCheck1">
            <label class="custom-control-label" for="customCheck1" >Voir les collaborateurs désactivés</label>
          </div>
     
        </div> 
        </div>
          
<div class="row mt-2">
  
</div>
        <div class="row">
          <div class="col-4">Filtrer par département :
			</div>
		<div class="col-3">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Tous
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton" color="blue">
          <a class="dropdown-item" href="#">Comptabilité</a>
          <a class="dropdown-item" href="#">Ressources Humaines</a>
          <a class="dropdown-item" href="#">Informatique</a>
        </div>
      </div>
      </div>
      <div class="col-5">
       
    <a href="<c:url value='/collaborateurs/creer'/>" class="btn btn-warning" name="AjoutCob" >Ajouter</a>
  
      </div>
      </div>
</div>
      
  
  

     

    <div class="container">
        <div class="row mt-3">
            <div class="col-sm">
                <div class="media">
                    <img src="<c:url value='/img/img_avatarM.png'/>" style="width:30%" class="mr-3" alt="...">
                    <div class="media-body">
                     <!-- <h5 class="mt-0">Media heading</h5> -->
                     <div class="row">Fonction : XXXXXXX </div>
                     <div class="row">Departement : XXXXXXX</div>
                     <div class="row">Email : XXXXXXXXXXXX</div>
                     <div class="row">Téléphone : XXXXXXX</div>
                      
                    </div>
                  </div>
            </div>
            <div class="col-sm">
                <div class="media">
                    <img src="<c:url value='/img/img_avatarF.png'/>" style="width:30%" class="mr-3" alt="...">
                    <div class="media-body">
                     <div class="row">Fonction : XXXXXXX</div>
                     <div class="row">Departement : XXXXXXX</div>
                     <div class="row">Email : XXXXXXXXXXXX</div>
                     <div class="row">Téléphone : XXXXXXX</div>
                     
                    </div>
                  </div>
            </div>
            <div class="col-sm">
                <div class="media">
                    <img src="<c:url value='/img/img_avatarM.png'/>" style="width:30%" class="mr-3" alt="...">
                    <div class="media-body">
                     <div class="row">Fonction : XXXXXXX</div>
                     <div class="row">Departement : XXXXXXX</div>
                     <div class="row">Email : XXXXXXXXXXXX</div>
                     <div class="row">Téléphone : XXXXXXX</div>
                      
                    </div>
                  </div>
            </div>
 </div>

 
		<div class="row mt-3">
              <div class="col-sm">
                  <div class="media">
                      <img src="<c:url value='/img/img_avatarF.png'/>" style="width:30%" class="mr-3" alt="...">
                      <div class="media-body">
                       <!-- <h5 class="mt-0">Media heading</h5> -->
                       <div class="row">Fonction : XXXXXXX</div>
                       <div class="row">Departement : XXXXXXX</div>
                       <div class="row">Email : XXXXXXXXXXXX</div>
                       <div class="row">Téléphone : XXXXXXX</div>
                        
                      </div>
                    </div>
              </div>
              <div class="col-sm">
                  <div class="media">
                      <img src="<c:url value='/img/img_avatarF.png'/>" style="width:30%" class="mr-3" alt="...">
                      <div class="media-body">
                          <div class="row">Fonction : XXXXXXX</div>
                       <div class="row">Departement : XXXXXXX</div>
                       <div class="row">Email : XXXXXXXXXXXX</div>
                       <div class="row">Téléphone : XXXXXXX</div>
                       
                      </div>
                    </div>
              </div>
              <div class="col-sm">
                  <div class="media">
                      <img src="<c:url value='/img/img_avatarM.png'/>" style="width:30%" class="mr-3" alt="...">
                      <div class="media-body">
                          <div class="row">Fonction : XXXXXXX</div>
                       <div class="row">Departement : XXXXXXX</div>
                       <div class="row">Email : XXXXXXXXXXXX</div>
                       <div class="row">Téléphone : XXXXXXX</div>
                        
                      </div>
                    </div>
              </div>
            </div>
        
         
 </div>


<%@ include file="../sides/footer.jsp" %>
