package dev.sgp.filtre;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import dev.sgp.entite.VisiteWeb;
import dev.sgp.util.Constantes;

public class FrequentationFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain filterChain) throws IOException, ServletException {
        String url = ((HttpServletRequest)req).getRequestURI();
        long before = System.currentTimeMillis();
        filterChain.doFilter(req, resp);
        long after = System.currentTimeMillis();
        Constantes.WEB_SERVICE.addVisiteWeb(new VisiteWeb(url, (int)(after - before)));
    }

    @Override
    public void destroy() {

    }

}
