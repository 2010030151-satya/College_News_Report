package insertServ;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;



public class peopledao {
	public void addUpdateBook(people book) {

		SessionFactory sessionFactory = peopleutil.getSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		session.saveOrUpdate(book);
		transaction.commit();
		session.close();

	}

}
