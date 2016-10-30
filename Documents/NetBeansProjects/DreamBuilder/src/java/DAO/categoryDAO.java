package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.categoryVO;


public class categoryDAO {
	public void insert(categoryVO cvo) {
		try
		{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			session.save(cvo);
			tr.commit();
		}
		catch (Exception exception) {
			// TODO: handle exception
			exception.printStackTrace();
		}
	}
	public List searchCategory() {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from categoryVO");
			List ls = q.list();
			return ls;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
		}
public List edit(int categoryId)
{
	try{
		SessionFactory s = new Configuration().configure().buildSessionFactory();
		Session session = s.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("from categoryVO where categoryId='"+categoryId+"'");
		List ls = q.list();
		return ls;
	}
	catch(Exception exception)
	{
		exception.printStackTrace();
		}
	return null;
}
public void update(categoryVO cvo) {

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


public void delete(categoryVO cvo) {
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

	
