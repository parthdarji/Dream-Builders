package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.registrationDAO;
import DAO.visitorDAO;
import VO.loginVO;
import VO.registrationVO;
import VO.visitorVO;

/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		if(flag.equals("insert"))
		{
			insert(request,response);
		}
	}

	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String gender = request.getParameter("gender");
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String area = request.getParameter("area");
		String date = request.getParameter("date");
		int contact = Integer.parseInt(request.getParameter("contact"));
		
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type=request.getParameter("regtype");
		System.out.println("email:"+email+"type:"+type+"password:"+password);
		registrationVO rvo=new registrationVO();
		rvo.setFirstname(firstname);
		rvo.setLastname(lastname);
		rvo.setGender(gender);
		rvo.setCountry(country);
		rvo.setState(state);
		rvo.setCity(city);
		rvo.setArea(area);
		rvo.setDate(date);
		
		rvo.setContact(contact);
		
		loginVO lvo=new loginVO();
		
		lvo.setRegister_id(rvo);
		lvo.setEmailId(email);
		lvo.setPassword(password);
		lvo.setLogintype(type);
		
		
		registrationDAO rdao = new registrationDAO();
		rdao.insert(rvo);
		rdao.insertlogin(lvo);
		
		
		
		//System.out.println("dao returned");
		response.sendRedirect("User/login.jsp");
		
	}
}
