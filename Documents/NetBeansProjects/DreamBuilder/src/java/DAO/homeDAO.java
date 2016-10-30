package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class homeDAO {

	
	public List getSlider() {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from sliderVO as a RIGHT OUTER JOIN a.propertyId ");
			List ls = q.list();
			return ls;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
		}	
}
