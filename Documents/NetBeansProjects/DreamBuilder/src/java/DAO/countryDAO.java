package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.categoryVO;
import VO.countryVO;
import VO.stateVO;
import VO.subcategoryVO;

public class countryDAO {
	public void insert(countryVO c) {
		try
		{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			session.save(c);
			tr.commit();
		}
		catch (Exception exception) {
			// TODO: handle exception
			exception.printStackTrace();
		}
	}
		public List searchCountry() {
			try{
				SessionFactory s = new Configuration().configure().buildSessionFactory();
				Session session = s.openSession();
				Transaction tr = session.beginTransaction();
				Query q=session.createQuery("from countryVO");
				List ls = q.list();
				return ls;
			}
			catch(Exception exception)
			{
				exception.printStackTrace();
				}
			return null;
			}

		public List searchState() {
			try{
				SessionFactory s = new Configuration().configure().buildSessionFactory();
				Session session = s.openSession();
				Transaction tr = session.beginTransaction();
				Query q=session.createQuery("from stateVO");
				List ls = q.list();
				return ls;
			}
			catch(Exception exception)
			{
				exception.printStackTrace();
				}
			return null;
			}
		public List edit(int id)
		{
			try{
				SessionFactory s = new Configuration().configure().buildSessionFactory();
				Session session = s.openSession();
				Transaction tr = session.beginTransaction();
				Query q=session.createQuery("from countryVO where countryId='"+id+"'");
				List ls = q.list();
				return ls;
			}
			catch(Exception exception)
			{
				exception.printStackTrace();
				}
			return null;
			
		}

public void update(countryVO cvo) {

	try
	{
		SessionFactory s = new Configuration().configure().buildSessionFactory();
		Session session = s.openSession();
		Transaction tr = session.beginTransaction();
		session.saveOrUpdate(cvo);
		tr.commit();
	}
	catch (Exception exception) {
		// TODO: handle exception
		exception.printStackTrace();
	}

}

public void delete(countryVO cvo) {
	try
	{
		SessionFactory s = new Configuration().configure().buildSessionFactory();
		Session session = s.openSession();
		Transaction tr = session.beginTransaction();
		session.delete(cvo);
		tr.commit();
	}
	catch (Exception exception) {
		// TODO: handle exception
		exception.printStackTrace();
	}
}
}
