package dev.sgp.service;

import dev.sgp.entite.Departement;

import java.util.ArrayList;
import java.util.List;

public class DepartementService {
    private List<Departement> listeDepartements = new ArrayList<>();

    public List<Departement> listDepartements() {
        return listeDepartements;
    }

    public void addDepartement(Departement d) {
        listeDepartements.add(d);
    }
}
