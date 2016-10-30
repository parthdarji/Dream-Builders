package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import Iscd.MyUtility;
import VO.propertyMappingVO;


public class propertyMappingDAO {
	
	
	public void insert(propertyMappingVO attachMPGVO){
		
		Session session = null;
		
		 try{
			  
			 session = MyUtility.getSession();
			 // Static Method which makes only one object as method is static 
			  
			  Transaction t= session.beginTransaction();
			
			  session.save(attachMPGVO);
			  
			  t.commit();
			
			
	    }catch(Exception e){
			  System.out.println(e.getMessage());
			  
			  }finally{
			        
				      session.close();
			  
			          }
			  
			  
		
	}
	
	
	
  public List getElementByID(propertyMappingVO attachMPGVO){
		
		Session session = null;
		List temp = null;
		
		
		try{
		  
			 session = MyUtility.getSession();// Static Method which makes only one object as method is static
		
		    Transaction tr = session.beginTransaction();
		 
		    Query q = session.createQuery("FROM AttachmentMappingVO WHERE attachmentMappingID = '"+attachMPGVO.getAttachmentMappingID()+"'");
		    temp = q.list();
		
		    tr.commit();
		 
		 }catch(Exception e){
			                 System.out.println(e.getMessage());
		  					}finally{
		  							
		  							session.close();
		  
		  							}
		  
		 return temp;
		
			
	}
  
  public void update(propertyMappingVO attachMPGVO){
	  
		Session session = null;
		
		  try{
		  
			  session = MyUtility.getSession();// Static Method which makes only one object as method is static
		
			  Transaction tr = session.beginTransaction();
		 
			  session.update(attachMPGVO);
		 
			  tr.commit();
		 
		  }catch(Exception e){
			  				
			  				System.out.println(e.getMessage());
		  					}finally{
		  						    session.close();
		  							}
		  
		}
  
  	
	

  
	public void delete(propertyMappingVO attachMPGVO){
		
		Session session = null;
		
		 try{
			  
			 session = MyUtility.getSession();// Static Method which makes only one object as method is static
			 
			  Transaction t= session.beginTransaction();

			  session.delete(attachMPGVO);
			
			  t.commit();
			
			
			  }catch(Exception e){
				  	
				  				System.out.println(e.getMessage());
			  					}finally{
			  							session.close();
			  
			  							}
			  
			  
		
	}
	
  public List showAll(){
		
		Session session = null;
		List temp = null;
		  try{
		  
			  session = MyUtility.getSession();// Static Method which makes only one object as method is static
		
			  Query q = session.createQuery("FROM propertyMappingVO ");
		 
			  temp = q.list();
		  	
		  }catch(Exception e){
			  				  System.out.println(e.getMessage());
		  					 }finally{
		  						     session.close();
		  					 		 }
		 return temp;
		
		}	
  
 	
	

}
