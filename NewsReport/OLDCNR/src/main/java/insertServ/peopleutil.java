package insertServ;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class peopleutil {
	
	private static SessionFactory sessionFactory;
	
	public static SessionFactory getSessionFactory() {
		if(sessionFactory==null) {
			Configuration configuration=new Configuration();
			configuration.configure("hibernate.cfg.xml");
			 ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().
					 applySettings(configuration.getProperties()).build();
			 
			 configuration.addAnnotatedClass(people.class);
			 
			 sessionFactory=configuration.buildSessionFactory(serviceRegistry);
			 
			 
		}
		return sessionFactory;
	}
	
}
