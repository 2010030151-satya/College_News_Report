package insertServ;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;



public class peopledao {
	public int addBook(people book) {
	 
		SessionFactory sessionFactory = peopleutil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		int i = 0; 
		try {
		session.save(book);
		transaction.commit();
		session.close();
		}
		catch(Exception e) {
			System.out.println("here");
			
		}
		i = (Integer)session.save(book); 
		return i; 
	}
	

}
