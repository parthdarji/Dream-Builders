package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.cityDAO;
import DAO.visitorDAO;
import VO.cityVO;
import VO.countryVO;
import VO.stateVO;
import VO.visitorVO;

/**
 * Servlet implementation class VisitorController
 */
@WebServlet("/VisitorController")
public class VisitorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VisitorController() {
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
		String country = request.getParameter("country");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		String email = request.getParameter("email");
		int contact = Integer.parseInt(request.getParameter("contact"));
	
		visitorVO vsvo=new visitorVO();
		vsvo.setFirstname(firstname);
		vsvo.setLastname(lastname);
		vsvo.setCountry(country);
		vsvo.setState(state);
		vsvo.setCity(city);
		vsvo.setEmail(email);
		vsvo.setContact(contact);
		
		visitorDAO vdao = new visitorDAO();
		vdao.insert(vsvo);
		
		//System.out.println("dao returned");
		response.sendRedirect("User/form-visitor.jsp");
		
	}
}
