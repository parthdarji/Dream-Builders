package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.complainVO;

public class complainDAO {

	public void insert(complainVO cvo) {
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
	public List searchComplain() {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from complainVO");
			List ls = q.list();
			return ls;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
		}
	public List searchComplainAdmin() {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("select c.loginId.register_id.firstname,c.loginId.register_id.lastname,c.title,c.description,c.loginId.emailId from complainVO as c ");
			List ls = q.list();
			System.out.println("List size @ DAO"+ls.size());
			return ls;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
		}

}
