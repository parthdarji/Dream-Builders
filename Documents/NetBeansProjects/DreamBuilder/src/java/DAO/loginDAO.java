package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.cityVO;
import VO.loginVO;


public class loginDAO {

	
	public List search(loginVO l) {
		List ls=null;
		SessionFactory s =new Configuration().configure().buildSessionFactory();
		
		Session session = s.openSession();
		 Query q=session.createQuery("from loginVO where emailId='"+l.getEmailId()+"' and password='"+l.getPassword()+"'");
		 ls=q.list();
		
		 return ls;
	
	}
	
	
	public List forgotpd(loginVO l) {
		List ls=null;
		SessionFactory s =new Configuration().configure().buildSessionFactory();
		
		Session session = s.openSession();
		 Query q=session.createQuery("from loginVO where emailId='"+l.getEmailId()+"'");
		 ls=q.list();
		System.out.println("jjjjjjjjjjjjj"+ls.size());
		 return ls;
	
	}
	
	public void inserttime(loginVO login) {

		try
		{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
		Query q=session.createQuery("Update loginVO set date='"+login.getDate()+"' where loginId='"+login.getLoginId()+"'");
		q.executeUpdate();
			tr.commit();
		}
		catch (Exception exception) {
			// TODO: handle exception
			exception.printStackTrace();
		}


	}

	
	
	
}
