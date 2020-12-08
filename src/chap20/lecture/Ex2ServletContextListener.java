package chap20.lecture;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class Ex2ServletContextListener
 *
 */
@WebListener
public class Ex2ServletContextListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public Ex2ServletContextListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("app is running ex2");
    	ServletContext application = sce.getServletContext();
    	String val = application.getInitParameter("my-param1");
    	String url = application.getInitParameter("jdbcUrl");
    	String user = application.getInitParameter("jdbcUser");
    	String pw = application.getInitParameter("jdbcPw");
    	
    	DBUtil.setUrl(url);
    	DBUtil.setUser(user);
    	DBUtil.setPw(pw);
    	
    	System.out.println(val);
    	System.out.println(url);
    	System.out.println(user);
    	System.out.println(pw);
    	
    	try (Connection con = DriverManager.getConnection(url, user, pw);) {
    		System.out.println(con);
    	} catch (Exception e) {
    		e.printStackTrace();
    	}
    }
	
}
