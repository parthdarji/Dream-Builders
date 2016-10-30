package DAO;

import org.hibernate.Session;
import org.hibernate.Transaction;

import Iscd.MyUtility;
import VO.propertyVO;
import VO.sliderVO;

public class sliderDAO {
		public void insertSlider(sliderVO sv){
	
	Session session = null;
	
	 try{
		  
		 session = MyUtility.getSession();// Static Method which makes only one object as method is static 
		  
		  Transaction tr= session.beginTransaction();
		
		  session.save(sv);
		  
		  tr.commit();
		
		
    }catch(Exception e){
	e.printStackTrace();
		  
		  }finally{
		        
			      session.close();
		  
		          }
		  
		  			  

}
			

}
