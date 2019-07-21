package dev.sgp.service;

import dev.sgp.entite.Statistiques;
import dev.sgp.entite.VisiteWeb;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.IntSummaryStatistics;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class VisiteWebService {
    private List<VisiteWeb> visitesWeb = new ArrayList<>();

    public List<VisiteWeb> listVisitesWeb() {
        return visitesWeb;
    }

    public void addVisiteWeb (VisiteWeb v) {
        visitesWeb.add(v);
    }
    
    private List<VisiteWeb> listeVisiteWebs = new ArrayList<>();
    private List<Statistiques> listeStatistiques = new ArrayList<>();
    private List<String> listeChemins = new ArrayList<>();

    public List<VisiteWeb> listerVisites() {
        return listeVisiteWebs;
    }

    public void sauvegarderVisite(VisiteWeb visite) {
        listeVisiteWebs.add(visite);
        calculerStatistiques();
    }

    public void sauvegarderChemin(String path) {
        if (!listeChemins.contains(path))
            listeChemins.add(path);
    }

    public List<Statistiques> listerStatistiques() {
        return listeStatistiques;
    }

    public void calculerStatistiques() {
        Statistiques stat;
        List<Statistiques> temp = new ArrayList<>();

        for (String chemin : listeChemins) {
            stat = new Statistiques();
            stat.setChemin(chemin);
            stat.setNbreVisites(
                    (int) listeVisiteWebs.stream().filter(visite -> chemin.equals(visite.getChemin())).count());
            stat.setTempsExecutionMin(listeVisiteWebs.stream().filter(visite -> chemin.equals(visite.getChemin()))
                    .mapToInt(visiteWeb -> visiteWeb.getTempsExecution()).summaryStatistics().getMin());
            stat.setTempsExecutionMax(listeVisiteWebs.stream().filter(visite -> chemin.equals(visite.getChemin()))
                    .mapToInt(visiteWeb -> visiteWeb.getTempsExecution()).summaryStatistics().getMax());
            stat.setTempsExecutionMoyenne(
                    (int) listeVisiteWebs.stream().filter(visite -> chemin.equals(visite.getChemin()))
                            .mapToInt(visiteWeb -> visiteWeb.getTempsExecution()).summaryStatistics().getAverage());
            temp.add(stat);
        }

        listeStatistiques = temp;
    }

    public List<Statistiques> getStats (List<VisiteWeb> visites) {
        Map<String, List<Integer>> map = new HashMap<>();

        for (VisiteWeb v : visites) {
            if (!map.containsKey(v.getChemin())) {
                map.put(v.getChemin(), new ArrayList<>());
            }
            map.get(v.getChemin()).add(v.getTempsExecution());
        }

        List<Statistiques> liste = new ArrayList<>();
        for (Map.Entry<String, List<Integer>> e : map.entrySet()) {
            IntSummaryStatistics stats = e.getValue().stream()
                    .mapToInt(i -> i)
                    .summaryStatistics();
            liste.add(new Statistiques(e.getKey(), e.getValue().size(), stats.getMin(), stats.getMax(), (int)stats.getAverage()));
        }
        liste = liste.stream()
                .sorted(Comparator.comparing(Statistiques::getChemin))
                .collect(Collectors.toList());

        return liste;
    }
}
