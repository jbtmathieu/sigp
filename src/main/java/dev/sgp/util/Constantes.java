package dev.sgp.util;

import dev.sgp.entite.Departement;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.DepartementService;
import dev.sgp.service.VisiteWebService;

public abstract class Constantes {
	public static final DepartementService DEP_SERVICE = new DepartementService();
    public static final VisiteWebService WEB_SERVICE = new VisiteWebService();
    public static final CollaborateurService COLLAB_SERVICE = new CollaborateurService();

    static {
        DEP_SERVICE.addDepartement(new Departement(1, "Comptabilité"));
        DEP_SERVICE.addDepartement(new Departement(2, "Ressources humaines"));
        DEP_SERVICE.addDepartement(new Departement(3, "Informatique"));
        DEP_SERVICE.addDepartement(new Departement(4, "Administratif"));
    }
	// constante a ajouter
	

}
