<%@ page import="java.util.List" %>
<%@ page import="dev.sgp.entite.Collaborateur" %>

<%@ page language="java" pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="fr">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <title>SGP App</title>
</head>
<body>

  <!-- Navbar -->

  <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Logo</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" href="<c:url value="/collaborateurs/lister"/>">Collaborateurs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<c:url value="/stats/afficher"/>">Statistiques</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Activités</a>
        </li>
      </ul>
    </div>
  </nav>
<section class="container-fluid">
    <div class="container-fluid mt-4">
      <div class="text-right">
        <a href="<c:url value="/collaborateurs/ajouter"/>" class="btn btn-outline-dark">Ajouter un nouveau collaborateur</a>
      </div>
    </div>

    <!-- Search form -->

    <div class="container-fluid mb-4">
      <h1 class="display-4">Les collaborateurs</h1>

      <form>

        <div class="form-group row">
          <label class="col-sm-4 col-form-label text-right" for="recherche">Recherche un nom ou un prénom qui commence par :</label>
          <input type="search" class="form-control col-sm-2" name="recherche" placeholder="Recherche"/>
          <div class="col-sm-2">
            <input type="submit" class="btn btn-dark" id="recherche" name="rechercher" value="Rechercher" />
          </div>
          <div class="form-check col-sm-4">
            <input type="checkbox" class="form-check-input" id="checkbox" name="checkbox">
            <label class="form-check-label" for="checkbox">Voir les collaborateurs désactivés</label>
          </div>
        </div>

        <div class="form-group row">
          <label class="col-sm-4 col-form-label text-right" for="departement">Filtrer par département :</label>
          <select class="form-control col-sm-2" name="departement" id="departement">
            <option selected="selected">Tous</option>
            <c:forEach items="${listeDepartements}" var="d">
              <option><c:out value="${d.name}"/></option>
            </c:forEach>
          </select>
        </div>

      </form>

    </div>
<div class="container-fluid mb-4">
      <div class="row">

        <c:forEach items="${listeCollaborateurs}" var="c">
        <div class="col-md-12 col-lg-6 col-xl-4">
          <div class="card mb-4 shadow-sm">
            <div class="card-header"><c:out value="${c.nom}"/> <c:out value="${c.prenom}"/></div>
            <div class="card-body text-dark">
              <div class="row">
                <div class="col-sm-4 mb-2">
                  <img src="<c:url value="resources/img/img_avatar.png"/>" alt="genericPhoto" class="img-fluid shadow-sm">
                </div>
                <div class="col-sm-8">
                  <dl class="row">
                  	<dt class="col-sm-5">Adresse</dt>
                    <dd class="col-sm-7"><c:out value="${c.adresse}"/></dd>
                    <dt class="col-sm-5">Date de Naissance</dt>
                    <dd class="col-sm-7"><c:out value="${c.dateDeNaissance}"/></dd>
                    <dt class="col-sm-5">Email</dt>
                    <dd class="col-sm-7"><c:out value="${c.emailPro}"/></dd>
                    <dt class="col-sm-5">E;plqce;ent photo/dt>
                    <dd class="col-sm-7"><c:out value="${c.photoLoc}"/></dd>
                    <dt class="col-sm-5">Numero SS/dt>
                    <dd class="col-sm-7"><c:out value="${c.numeroSecuriteSociale}"/></dd>
                    <dt class="col-sm-5">Date Heure de cr2ation/dt>
                    <dd class="col-sm-7"><c:out value="${c.dateHeureCreation}"/></dd>
                  </dl>
                  <a href="#" class="btn btn-dark text-right"> Modifier </a>
                </div>
              </div>
            </div>
          </div>
        </div>

        </c:forEach>

      </div>
    </div>
  </section>
    <footer>
    <div class="container">
      <p class="text-center"></p>
    </div>
  </footer>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>

