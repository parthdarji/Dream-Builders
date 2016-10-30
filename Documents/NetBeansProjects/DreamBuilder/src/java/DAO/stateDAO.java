package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import VO.countryVO;
import VO.stateVO;

public class stateDAO {
	public void insert(stateVO st) {
		try
		{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			session.save(st);
			tr.commit();
		}
		catch (Exception exception) {
			// TODO: handle exception
			exception.printStackTrace();
		}
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
			Query q=session.createQuery("from stateVO where stateId='"+id+"'");
			List ls = q.list();
			return ls;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
		
	}
	public void update(stateVO cvo) {

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

	public List loadState(stateVO stateVO) 
	{
		SessionFactory s = new Configuration().configure().buildSessionFactory();
		List l=new ArrayList();
		Session ss=s.openSession();
		Transaction t=ss.beginTransaction();
		Query q=ss.createQuery("from stateVO where countryId = "+stateVO.getCountryId().getCountryId());
		l=q.list();
		return l;
	}
	
	public void delete(stateVO cvo) {
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