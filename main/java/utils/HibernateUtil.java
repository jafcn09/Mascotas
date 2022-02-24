package utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	
public static SessionFactory getSessionFactory() {
		
		SessionFactory sessionFactory;
		
		try
		{
			sessionFactory = new Configuration().configure().buildSessionFactory();			
			
		} catch (Throwable ex) {
			
			System.err.println("Error al crear la factoria de sessiones." + ex);
			throw new ExceptionInInitializerError(ex);
		}
		return sessionFactory; 
		
	} 


}
