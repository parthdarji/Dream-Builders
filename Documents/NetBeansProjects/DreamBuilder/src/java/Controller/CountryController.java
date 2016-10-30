package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;


import DAO.categoryDAO;
import DAO.countryDAO;
import DAO.subcategoryDAO;
import VO.categoryVO;
import VO.countryVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class StateController
 */

@WebServlet("/CountryController")
public class CountryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**00
     * Default constructor. 
     */
    public CountryController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String f=request.getParameter("flag");
		
		if(f!=null && f.equals("searchCountry"))
			{
				search(request,response);
			}
		if(f!=null && f.equals("edit"))
		{
			edit(request,response);
		}	
		
		if(f!=null && f.equals("delete"))
		{
			delete(request,response);
		}	

	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("countryId"));
		countryDAO cd=new countryDAO();
		List ls=cd.edit(id);
		
		HttpSession session=request.getSession();
		session.setAttribute("country", ls);
		response.sendRedirect("Admin/edit-country.jsp");

	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("countryId"));
		
		countryVO cvo=new countryVO();
		cvo.setCountryId(id);
		
		countryDAO cd=new countryDAO();
		cd.delete(cvo);
		
		
		response.sendRedirect("CountryController?flag=searchCountry");

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		
		
		
		
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
		String countryName = request.getParameter("countryName");
		String countryDescription = request.getParameter("countryDescription");
		System.out.println("dao called");
		countryVO c=new countryVO();
		c.setCountryName(countryName);
		c.setCountryDescription(countryDescription);
		countryDAO d=new countryDAO();
		d.insert(c);
		System.out.println("dao returned");
	//	response.sendRedirect("form-CountryController.jsp");
		
	}
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int countryId=Integer.parseInt(request.getParameter("countryId"));
		String countryName=request.getParameter("countryName");
		String countryDescription=request.getParameter("countryDescription");
		
		
		System.out.println(countryId);
		
		countryVO cvo=new countryVO();
		cvo.setCountryName(countryName);
		cvo.setCountryDescription(countryDescription);
		cvo.setCountryId(countryId);
		
		countryDAO cdao=new countryDAO();
		cdao.update(cvo);
			response.sendRedirect("CountryController?flag=searchCountry");	
		}
		
	
	
	protected void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		countryDAO c=new countryDAO();
		List ls=c.searchCountry();
		
		HttpSession session=request.getSession();
		session.setAttribute("key", ls);
		response.sendRedirect("Admin/search-country.jsp");
	}
}