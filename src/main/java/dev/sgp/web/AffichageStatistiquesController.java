package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.service.VisiteWebService;
import dev.sgp.util.Constantes;

public class AffichageStatistiquesController extends HttpServlet {
	
	private VisiteWebService visiteWebService = Constantes.WEB_SERVICE;

		    @Override
		    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		    	req.setAttribute("statistiques", visiteWebService.getStats(Constantes.WEB_SERVICE.listVisitesWeb()));

		        req.getRequestDispatcher("/WEB-INF/views/collab/statistiques.jsp").forward(req, resp);
		    }

		}
		
	

