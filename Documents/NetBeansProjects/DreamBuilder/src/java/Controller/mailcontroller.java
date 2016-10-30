package Controller;

import java.io.IOException;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.mail.iap.Response;

/**
 * Servlet implementation class MailController
 */
@WebServlet("/mailController")
public class mailcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mailcontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		String emailId=request.getParameter("emailId");
		System.out.println(emailId);
		if(flag.equals("approvement"))
		{
			sendapprovement(emailId,request);
		}
	//	sendMail(1L, request);
	}

	public void sendapprovement(String emailId,HttpServletRequest request)
    {
		for(int i=0;i<1;i++)
		{	
			java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");
	        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	       System.out.println("mail");
	        String emailId2 = emailId;
	        System.out.println(emailId2);
	       
	        
	        try {
	            MimeMessage message = new MimeMessage(mailSession);
	
	            
	            
	            //message.setContent("<a href='http:\\\\"+request.getRemoteHost()+"\\"+request.getContextPath()+"\\register\\loadRegistrationPage.htm?random="+ id +"'>Please click here to Activate SwapMeTv Account</a> ", "text/html");
	            message.setContent( "Dear customer, You are the winner as u had applied for the bid.please come at our office for further discussion. Thank you", "text/html");
	            message.setSubject("Bid Winner");
	            
	            InternetAddress sender = new InternetAddress("vvthakkar.3894@gmail.com","Dream Builders");
	            InternetAddress receiver = new InternetAddress(emailId2);
	            message.setFrom(sender);
	            message.setRecipient(Message.RecipientType.TO, receiver);
	            message.saveChanges();
	            
	            javax.mail.Transport transport = mailSession.getTransport("smtp");
	            transport.connect("smtp.gmail.com", 587, "vvthakkar.3894@gmail.com", "vvt@3894");
	            transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	
	           
	           
	           
	        	} catch (Exception e) {
	        		
	        }
	        
    }
        
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	/*public void sendMail(Long id,HttpServletRequest request)
    {
		for(int i=0;i<1;i++)
		{	
			java.util.Properties properties = new java.util.Properties();
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");
	        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
	       System.out.println("mail");
	        String emailId = "harshpanchal12345@gmail.com";
	        System.out.println(emailId);
	       
	        
	        try {
	            MimeMessage message = new MimeMessage(mailSession);
	
	            
	            
	            //message.setContent("<a href='http:\\\\"+request.getRemoteHost()+"\\"+request.getContextPath()+"\\register\\loadRegistrationPage.htm?random="+ id +"'>Please click here to Activate SwapMeTv Account</a> ", "text/html");
	            message.setContent( "Dear customer, You are successfully registered with US!", "text/html");
	            message.setSubject("Confirm your account");
	            
	            InternetAddress sender = new InternetAddress("vvthakkar.3894@gmail.com","Dream Builders");
	            InternetAddress receiver = new InternetAddress(emailId);
	            message.setFrom(sender);
	            message.setRecipient(Message.RecipientType.TO, receiver);
	            message.saveChanges();
	            
	            javax.mail.Transport transport = mailSession.getTransport("smtp");
	            transport.connect("smtp.gmail.com", 587, "vvthakkar.3894@gmail.com", "vvt@3894");
	            transport.sendMessage(message, message.getAllRecipients());
	            transport.close();
	
	           
	            
	            	
	        	} catch (Exception e) {
	        		
	        }
	        
    }
        
    }
*/

}
