package Controller;

import java.io.IOException;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.loginDAO;
import VO.loginVO;

/**
 * Servlet implementation class forgotpasswordController
 */
@WebServlet("/forgotpasswordController")
public class forgotpasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public forgotpasswordController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub


		System.out.println("forgot password POST method invocked!!!!!!!");
		
		String email=request.getParameter("emailId");
		System.out.println(email);
		loginVO l=new loginVO();
		l.setEmailId(email);
		
		loginDAO ldao=new loginDAO();
		List ls=ldao.forgotpd(l);
		System.out.println("emil sizeeeeeeee"+ls.size());
		
		
		java.util.Iterator itr = ls.iterator();
		loginVO uservo=(loginVO)itr.next();
		
		int loginid=uservo.getLoginId();
		String mailId=uservo.getEmailId();
		String password=uservo.getPassword();
		
		
		System.out.println("UserID issssssssssss :"+loginid+"  Password issssssssssss :"+password);
		
		int n=sendMail(loginid,mailId,password,request);
		
		response.sendRedirect(request.getContextPath()+ "/login.jsp");
	
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
	}

	
	public int sendMail(int id , String email,String password, HttpServletRequest request)
    {
        java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        String emailId =email;//request.getParameter("email");

        if(emailId == null)
            return 0;
        
        try {
            MimeMessage message = new MimeMessage(mailSession);

            
            
            //message.setContent("<a href='http:\\\\"+request.getRemoteHost()+"\\"+request.getContextPath()+"\\register\\loadRegistrationPage.htm?random="+ id +"'>Please click here to Activate SwapMeTv Account</a> ", "text/html");
            message.setContent( "Dear Customer, your DownTownRetails account Username is:"+email+" password is:"+password+"  Thank you for using this website!! ", "text/html");
            message.setSubject("Confirm your  account");
            
            InternetAddress sender = new InternetAddress("vvthakkar.3894@gmail.com", "Activation Link");
            InternetAddress receiver = new InternetAddress(emailId);
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
            message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "vvthakkar.3894@gmail.com", "vvt@3894");
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();

            
            
            return 1;
        } catch (Exception e) {
            return 0;
        }
        
    }
}
