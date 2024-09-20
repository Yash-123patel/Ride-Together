package com.nit.configuration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRegistration;

public class WebServletConfig implements WebApplicationInitializer {

    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
    
        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
        
       
        context.register(WebMvcConfiuration.class, ApplicationConfiguration.class);
        

        context.setServletContext(servletContext);

     
        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher", new DispatcherServlet(context));
        

        dispatcher.setLoadOnStartup(1);
        
      
        dispatcher.addMapping("/");
    }
}
