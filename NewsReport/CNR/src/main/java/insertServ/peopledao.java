package insertServ;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;



public class peopledao {
	public int addBook(people book) {
		try {
		SessionFactory sessionFactory = peopleutil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(book);
		transaction.commit();
		session.close();
		}
		catch(Exception e) {
			return 1; 
			
		}
		return 0;
	}
	

}
