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
import VO.feedbackVO;
import VO.loginVO;

/**
 * Servlet implementation class FeedbackController
 */
@WebServlet("/FeedbackController")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String f=request.getParameter("flag");
		
		if(f!=null && f.equals("searchFeedback"))
			{
			searchFeedback(request,response);
				System.out.println("redirect to method");
			}
	
	
	
	}

	protected void searchFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		FeedbackDAO cdao=new FeedbackDAO();
		List feedback=cdao.searchFeedback();
		
		System.out.println("feedback size"+feedback);
		
		HttpSession session=request.getSession();
		session.setAttribute("feedback", feedback);
		
		response.sendRedirect("Admin/search-complain.jsp");
	
	}
	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String f=request.getParameter("flag");
		
		if(f!=null && f.equals("insertFeedback"))
			{
			insertFeedback(request,response);
				System.out.println("redirect to method");
			}
	}
	protected void insertFeedback(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int id=(Integer)session.getAttribute("loginid");
	
		System.out.println("login Id"+id);
	String title=request.getParameter("title");
	String description=request.getParameter("description");
	
	System.out.println(title);
	
	loginVO l=new loginVO();
	l.setLoginId(id);
	feedbackVO fvo=new feedbackVO();
	fvo.setTitle(title);
	fvo.setDescription(description);
	fvo.setLoginid(l);
	
	FeedbackDAO f=new FeedbackDAO();
	f.insert(fvo);
	
	
	}
}
