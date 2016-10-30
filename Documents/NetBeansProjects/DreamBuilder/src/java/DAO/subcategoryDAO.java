package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.categoryVO;
import VO.stateVO;
import VO.subcategoryVO;


public class subcategoryDAO {
	public void insert(subcategoryVO st) {
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
	public List searchsubcategory() {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from subcategoryVO");
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
			Query q=session.createQuery("from subcategoryVO where subcategoryId='"+id+"'");
			List ls = q.list();
			return ls;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
	}
	public void update(subcategoryVO scvo) {

		try
		{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			session.saveOrUpdate(scvo);
			tr.commit();
		}
		catch (Exception exception) {
			// TODO: handle exception
			exception.printStackTrace();
		}


	}
	
	public List loadsubcategory(subcategoryVO subcategoryVO) 
	{
		try{
		SessionFactory s = new Configuration().configure().buildSessionFactory();
		List l=new ArrayList();
		Session ss=s.openSession();
		Transaction t=ss.beginTransaction();
		Query q=ss.createQuery("from subcategoryVO where categoryId = "+subcategoryVO.getCategoryId().getCategoryId());
		l=q.list();
		System.out.println(l.size() +" List in DAO");
		return l;
		
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	
	public void delete(subcategoryVO cvo) {
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

