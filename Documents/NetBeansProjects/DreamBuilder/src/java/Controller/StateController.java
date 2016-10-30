
package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;

import DAO.countryDAO;
import DAO.stateDAO;

import VO.countryVO;
import VO.stateVO;

/**
 * Servlet implementation class StateController
 */
@WebServlet("/StateController")
public class StateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	String f=request.getParameter("flag");
		
	if(f!=null && f.equals("country"))
	{
		country(request,response);
	}
	if(f!=null && f.equals("searchstate"))
	{
		searchState(request,response);
	}	
	if(f!=null && f.equals("edit"))
	{
		edit(request,response);
	}	
	if(f!=null && f.equals("loadState"))
	{
		loadState(request,response);
	}
	if(f!=null && f.equals("delete"))
	{
		delete(request,response);
	}	
	
	
}

	private void loadState(HttpServletRequest request,
			HttpServletResponse response) throws IOException 
	{
		countryVO cVO=new countryVO();
		cVO.setCountryId(Integer.parseInt(request.getParameter("countryId")));
		
		stateVO stateVO=new stateVO();
		stateVO.setCountryId(cVO);
		stateDAO stateDAO=new stateDAO();
		List l=stateDAO.loadState(stateVO);
		HttpSession hs=request.getSession();
		hs.setAttribute("loadState", l);
		response.sendRedirect("Admin/loadState.jsp");
	}
	
	
	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("stateId"));
		stateDAO cd=new stateDAO();
		List ls=cd.edit(id);
		System.out.println("edit method");
		HttpSession session=request.getSession();
		session.setAttribute("state", ls);
		response.sendRedirect("Admin/edit-state.jsp");

	}
	protected void country(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		countryDAO std=new countryDAO();
		List ls=std.searchCountry();
		
		HttpSession session=request.getSession();
		session.setAttribute("key", ls);
		
		response.sendRedirect("Admin/form-managestate.jsp");
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("stateId"));
		
		stateVO cvo=new stateVO();
		cvo.setStateId(id);
		System.out.println(id);
		stateDAO sd=new stateDAO();
		sd.delete(cvo);
		
		
		response.sendRedirect("StateController?flag=searchstate");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		
	
		
		if(f!=null && f.equals("insert"))
		{
			insert(request, response);
		}
		if(f!=null && f.equals("update"))
		{
			update(request,response);
	}	
	
	
	}

	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String stateName = request.getParameter("stateName");
		String stateDescription = request.getParameter("stateDescription");
		String countryID=request.getParameter("country");
		
		
		stateVO st=new stateVO();
		countryVO cv=new countryVO();
		st.setStateDescription(stateDescription);
		st.setStateName(stateName);
		cv.setCountryId(Integer.parseInt(countryID));
		st.setCountryId(cv);
//		st.setCountryID(countryID);
		
		stateDAO d=new stateDAO();
		d.insert(st);
		
		response.sendRedirect("Admin/form-managestate.jsp");
	}
	protected void searchState(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		stateDAO std=new stateDAO();
		List ls=std.searchState();
		
		HttpSession session=request.getSession();
		session.setAttribute("key", ls);
		
		response.sendRedirect("Admin/search-state.jsp");
	}
	
	

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	//	int countryId=Integer.parseInt(request.getParameter("countryId"));
		int stateId=Integer.parseInt(request.getParameter("stateId"));
		String stateName=request.getParameter("stateName");
		String stateDescription=request.getParameter("stateDescription");
		
		
		System.out.println(stateId);
		
		stateVO cvo=new stateVO();
		cvo.setStateId(stateId);
		cvo.setStateName(stateName);
		cvo.setStateDescription(stateDescription);

		//		cvo.setCountryId(stateId);
		
		stateDAO cdao=new stateDAO();
		cdao.update(cvo);
			response.sendRedirect("StateController?flag=searchstate");	
		}
		
}