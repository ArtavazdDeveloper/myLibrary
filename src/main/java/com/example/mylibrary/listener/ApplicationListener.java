package com.example.mylibrary.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.Date;

public class ApplicationListener implements ServletContextListener {
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("Server started at " + new Date());
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("Server stopped at " + new Date());
    }
}
