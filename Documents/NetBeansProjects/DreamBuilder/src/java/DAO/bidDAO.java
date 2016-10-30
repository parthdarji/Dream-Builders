package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.bidVO;

public class bidDAO {
	public void insertBid(bidVO bvo) {
		try
		{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			session.save(bvo);
			tr.commit();
		}
		
		catch (Exception exception) {
			// TODO: handle exception
			exception.printStackTrace();
		}
	}
	
	public List searchbids() {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("select d.firstname,d.lastname,b.propertyName,a.bidprice,b.price,c.emailId from bidVO as a, propertyVO as b, loginVO as c,registrationVO as d WHERE b.propertyId= a.propertyId AND a.loginId= c.loginId AND c.register_id= d.register_id ORDER BY a.bidprice DESC");
			List ls = q.list();
			
			return ls;
		}
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
		}
	public List checkbids(bidVO b) {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from bidVO WHERE loginId='"+b.getLoginId().getLoginId()+"' and propertyId='"+b.getPropertyId().getPropertyId()+"' ");
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
