package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.cityVO;
import VO.countryVO;
import VO.stateVO;
import VO.subcategoryVO;

import DAO.cityDAO;
import DAO.countryDAO;
import DAO.stateDAO;
import DAO.subcategoryDAO;

/**
 * Servlet implementation class CityController
 */
@WebServlet("/CityController")
public class CityController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		
		
		if(f!=null && f.equals("searchcity"))
		{
			searchCity(request,response);
		}	
		if(f!=null && f.equals("edit"))
		{
			edit(request,response);
		}	
		if(f!=null && f.equals("city"))
		{
			city(request,response);
		}
		if(f!=null && f.equals("loadCity"))
		{
			loadcity(request,response);
		}
		if(f!=null && f.equals("delete"))
		{
			delete(request,response);
		}
}
	private void loadcity(HttpServletRequest request,
			HttpServletResponse response) throws IOException 
	{
		stateVO stVO=new stateVO();
		stVO.setStateId(Integer.parseInt(request.getParameter("stateId")));
		
		cityVO ctVO=new cityVO();
		ctVO.setStateId(stVO);
		cityDAO ctDAO=new cityDAO();
		List l=ctDAO.loadCity(ctVO);
		HttpSession hs=request.getSession();
		hs.setAttribute("loadCity", l);
		response.sendRedirect("Admin/loadcity.jsp");
	}
	

	
	
	private void city(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		countryDAO cdao = new countryDAO();
		List ls=cdao.searchCountry();
		List ls2=cdao.searchState();
		
		HttpSession session=request.getSession();
		session.setAttribute("country", ls);
		session.setAttribute("state", ls2);
		response.sendRedirect("Admin/form-managecity.jsp");
		
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("cityId"));
		cityDAO scd=new cityDAO();
		List ls=scd.edit(id);
		
		HttpSession session=request.getSession();
		session.setAttribute("city", ls);
		response.sendRedirect("Admin/edit-city.jsp");

	}

	
	protected void searchCity(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		cityDAO std=new cityDAO();
		List ls=std.searchCity();
		
		HttpSession session=request.getSession();
		session.setAttribute("city", ls);
		
		response.sendRedirect("Admin/search-city.jsp");
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("cityId"));
		
		cityVO cvo=new cityVO();
		cvo.setCityId(id);
		System.out.println(id);
		cityDAO cd=new cityDAO();
		cd.delete(cvo);
		
		
		response.sendRedirect("CityController?flag=searchcity");

	}

	
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		String cityName = request.getParameter("cityName");
		String cityDescription = request.getParameter("cityDescription");
		
		cityVO ctv=new cityVO();
		ctv.setCityName(cityName);
		ctv.setCityDescription(cityDescription);
		
		
		
		if(f!=null && f.equals("insert"))
		{	
			insert(request, response);
		
		}
		if(f!=null && f.equals("update"))
		{	
			update(request, response);
		
		}
		
	}
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		int stateId=Integer.parseInt(request.getParameter("stateId"));
		
		
		String cityName = request.getParameter("cityName");
		String cityDescription = request.getParameter("cityDescription");
		
		cityVO ctv=new cityVO();
		ctv.setCityName(cityName);
		ctv.setCityDescription(cityDescription);
		
		
		countryVO cv=new countryVO();
		cv.setCountryId(countryId);
		
		stateVO st=new stateVO();
		st.setStateId(stateId);

		
		ctv.setCountryId(cv);
		ctv.setStateId(st);
		
		
		
		cityDAO d=new cityDAO();
		d.insert(ctv);
		//System.out.println("dao returned");
		response.sendRedirect("Admin/form-managecity.jsp");
		
	}
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int cityId=Integer.parseInt(request.getParameter("cityId"));
		String cityName=request.getParameter("cityName");
		String cityDescription=request.getParameter("cityDescription");
		
		cityVO scvo=new cityVO();
		scvo.setCityId(cityId);
		scvo.setCityName(cityName);
		scvo.setCityDescription(cityDescription);
		
		
		cityDAO scdao=new cityDAO();
		scdao.update(scvo);
			response.sendRedirect("CityController?flag=searchcity");	
		}
}
