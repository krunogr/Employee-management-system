package project.ems;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ApplicationListener implements ServletContextListener {

//    Podaci za korištenje lokalne baze podataka
//    public static String URL_FOR_DB = "jdbc:mysql://127.0.0.1/company_x";
//    public static String USERNAME_FOR_DB = "root";
//    public static String PASSWORD_FOR_DB = "";
    public static String URL_FOR_DB = "jdbc:mysql://eu-cdbr-cb-west-01.cleardb.net:3306/cb_mnarudzbe_db";
    public static String USERNAME_FOR_DB = "be57c910dd7384";
    public static String PASSWORD_FOR_DB = "fd3be959";
    private ServletContext context;

    @Override
    public void contextInitialized(ServletContextEvent sce) {

        System.out.println("Aplication started");

        sce.getServletContext().setAttribute("URL_FOR_DB", URL_FOR_DB);
        sce.getServletContext().setAttribute("USERNAME_FOR_DB", USERNAME_FOR_DB);
        sce.getServletContext().setAttribute("PASSWORD_FOR_DB", PASSWORD_FOR_DB);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        ServletContext sc = sce.getServletContext();
        System.out.println("Aplication ended");
    }
}
