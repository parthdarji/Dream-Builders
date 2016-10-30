package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Iscd.MyUtility;
import VO.loginVO;
import VO.visitorVO;
import VO.registrationVO;

public class registrationDAO {
public void insert(registrationVO rvo){
		
		Session session = null;
		
		 try{
			  
			 session = MyUtility.getSession();// Static Method which makes only one object as method is static 
			  
			  Transaction tr= session.beginTransaction();
			Query qry = session.createQuery("insert into user_registration_mst(Register_Id, FirstName, LastName, gender, Country, State, City, area, BirthDate, Contact) select r.register_id, r.firstname, r.lastname, r.gender,r.country, r.state,r.city, r.area, r.date, r.contact from registrationVO r where r.register_id= ?");
                        int res = qry.executeUpdate();
                        session.save(res);
                       // session.save(rvo);
			  
			  tr.commit();
			
			
	    }catch(Exception e){
		e.printStackTrace();
			  
			  }finally{
			        
				      session.close();
			  
			          }

}

public void insertlogin(loginVO lvo){
	
	Session session = null;
	
	 try{
		  
		 session = MyUtility.getSession();// Static Method which makes only one object as method is static 
		  
		  Transaction tr= session.beginTransaction();
		
		  session.save(lvo);
		  
		  tr.commit();
		
		
    }catch(Exception e){
	e.printStackTrace();
		  
		  }finally{
		        
			      session.close();
		  
		          }

}
public List loaduser(String usertypeuser)
{
	try{
		SessionFactory s = new Configuration().configure().buildSessionFactory();
		Session session = s.openSession();
		Transaction tr = session.beginTransaction();
		Query q=session.createQuery("from cityVO where logintype='"+usertypeuser+"'");
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
