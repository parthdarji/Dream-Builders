package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import Iscd.MyUtility;
import VO.categoryVO;
import VO.propertyMappingVO;
import VO.propertyVO;
//import VO.sliderVO;
import VO.stateVO;

public class propertyDAO {

    public void insert(propertyVO propertyVO) {

        Session session = null;

        try {

            session = MyUtility.getSession();// Static Method which makes only one object as method is static 

            Transaction tr = session.beginTransaction();

            session.save(propertyVO);

            tr.commit();

        } catch (Exception e) {
            e.printStackTrace();

        } finally {

            session.close();

        }
    }

    public List searchProperty() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyVO");
            //List ls = q.list();
            List<propertyVO> ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public List searchPropertyUser() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public List searchPropertyOngoing() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where a.status='2'");
            
            List ls = q.list();
            
            if(ls.isEmpty()){
            System.out.print("Null value");
            }
                else{
                System.out.println("try again!!!!!!!");
                }
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    
    public List searchPropertyCompleted() {
		try{
			SessionFactory s = new Configuration().configure().buildSessionFactory();
			Session session = s.openSession();
			Transaction tr = session.beginTransaction();
			Query q=session.createQuery("from propertyMappingVO a RIGHT OUTER JOIN a.propertyId where a.status = '1' ");
			List ls = q.list();
		if(ls.isEmpty()){
            System.out.print("Null value");
            }
                else{
                System.out.println("try again!!!!!!!");
                }
                        
                        return ls;
		}
                
                
		catch(Exception exception)
		{
			exception.printStackTrace();
			}
		return null;
		}	
    
    public List searchPropertyUpcoming() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where a.status='3'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public List searchPropertyUserCommercial(propertyVO p) {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where a.propertyId.categoryId='" + p.getCategoryId().getCategoryId() + "'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public List edit(int propertyId) {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyVO where propertyId='" + propertyId + "'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public void delete(propertyVO cvo) {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            session.delete(cvo);
            tr.commit();
        } catch (Exception exception) {
            // TODO: handle exception
            exception.printStackTrace();
        }
    }

    public List getPrice(int id) {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("select price from propertyVO where propertyId='" + id + "'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            // TODO: handle exception
            exception.printStackTrace();
        }
        return null;
    }

    public List fullDetail(propertyVO p) {
        // TODO Auto-generated method stub
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where a.propertyId='" + p.getPropertyId() + "'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            // TODO: handle exception
            exception.printStackTrace();
        }
        return null;

    }

    public List searchPropertySale() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where a.type='buy'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public List searchPropertyRent() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where a.type='rent'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public List searchPropertyBuy() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where type='buy'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }

    public List searchPropertyBid() {
        try {
            SessionFactory s = new Configuration().configure().buildSessionFactory();
            Session session = s.openSession();
            Transaction tr = session.beginTransaction();
            Query q = session.createQuery("from propertyMappingVO as a RIGHT OUTER JOIN a.propertyId where a.bid='yes'");
            List ls = q.list();
            return ls;
        } catch (Exception exception) {
            exception.printStackTrace();
        }
        return null;
    }
}
