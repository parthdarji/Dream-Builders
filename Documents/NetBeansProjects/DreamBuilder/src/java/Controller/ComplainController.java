package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.FeedbackDAO;
import DAO.complainDAO;
import VO.complainVO;
import VO.feedbackVO;
import VO.loginVO;

/**
 * Servlet implementation class ComplainController
 */
@WebServlet("/ComplainController")
public class ComplainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ComplainController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		
		
		if(f!=null && f.equals("searchcomplain"))
		{
			searchcomplain(request,response);
			System.out.println("redirect to method");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String f=request.getParameter("flag");
		
		if(f!=null && f.equals("insertComplain"))
			{
			insertComplain(request,response);
				System.out.println("redirect to method");
			}
		
		
		
	}
	
	protected void insertComplain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int id=(Integer)session.getAttribute("loginid");
	
		System.out.println("login Id"+id);
	String title=request.getParameter("title");
	String description=request.getParameter("description");
	
	System.out.println(title);
	
	loginVO l=new loginVO();
	l.setLoginId(id);
	
	complainVO cvo=new complainVO();
	cvo.setTitle(title);
	cvo.setDescription(description);
	cvo.setLoginId(l);

	System.out.println(title);	
	System.out.println(description);	
	complainDAO c=new complainDAO();
	c.insert(cvo);
	
	response.sendRedirect("User/form-complain.jsp");
	}

	protected void searchcomplain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		complainDAO cdao=new complainDAO();
		List complain=cdao.searchComplainAdmin();
		
		System.out.println("complain size"+complain);
		
		HttpSession session=request.getSession();
		session.setAttribute("complain", complain);
		
		response.sendRedirect("Admin/search-complain.jsp");
	
	}
	
	
}
