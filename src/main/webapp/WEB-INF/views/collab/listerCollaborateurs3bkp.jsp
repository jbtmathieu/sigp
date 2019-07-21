<%--@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"--%>
   <%@ page language="java" pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<!-- meta charset="ISO-8859-1">-->

    <!-- Required meta tags -->
    <!-- meta charset="utf-8"> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
  <!--  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
   
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>-->
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <title>SGP App (4)</title>
  </head>
  <body>
  
  <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">SGP App</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>Basic Navbar Example</h3>
  <p>A navigation bar is a navigation header that is placed at the top of the page.</p>
</div>
  <!--  <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <a class="navbar-brand" href="#">Navbar</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>
              <a class="nav-item nav-link" href="#">Features</a>
              <a class="nav-item nav-link" href="#">Pricing</a>
              <a class="nav-item nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
            </div>
          </div>
        </nav> -->   

    <h1> Les Collaborateurs</h1>
    <div class="container">
        <div class="row">
            <div class="col" name="CollabSearch" >
              Rechercher un nom ou un prénom qui commence par : 
              
             </div>
             <div class="col">
             <input type="text"></div>
             <div class="col">
        <button type="button" class="btn btn-primary">Rechercher</button> 
            
            </div>
            <div class="col">
              <div class="custom-control custom-checkbox" name="deaCollab"></div>
            <input type="checkbox" class="custom-control-input" id="customCheck1">
            <label class="custom-control-label" for="customCheck1">Voir les collaborateurs désactivés</label>
          </div>
        </div>
            </div>
          </div>
        </div>
    
        
    </div>
    </div>
    

    <div class="container">
        <div class="row">
          <div class="col">
    Filtrer par département :
</div>
<div class="col">
    <div class="dropdown">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Tous
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="#">Comptabilité</a>
          <a class="dropdown-item" href="#">Ressources Humaines</a>
          <a class="dropdown-item" href="#">Informatique</a>
        </div>
      </div>
      </div>
      <div class="col">
       
    <a href="<c:url value='/collaborateurs/creer'/>" class="btn btn-secondary" name="AjoutCob" >Ajouter un nouveau collaborateur</a>
  
      </div>
      </div>
      </div>
      </div>
      


     

    <div class="container">
        <div class="row">
            <div class="col-sm">
                <div class="media">
                    <img src="<c:url value='/img/img_avatarM.png'/>" style="width:30%" class="mr-3" alt="...">
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





          </div><div class="row">
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



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
