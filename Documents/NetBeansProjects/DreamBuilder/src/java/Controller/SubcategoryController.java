package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.categoryDAO;
import DAO.countryDAO;
import DAO.stateDAO;
import DAO.subcategoryDAO;
import VO.categoryVO;
import VO.countryVO;
import VO.stateVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class SubcategoryController
 */
@WebServlet("/SubcategoryController")
public class SubcategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubcategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		
		if(f!=null && f.equals("subcategory"))
			{
				subcategory(request,response);
	}
		if(f!=null && f.equals("searchSubcategory"))
		{
			searchsubcategory(request,response);
			
		}
		if(f!=null && f.equals("edit"))
		{
				edit(request,response);
				
		}
		if(f!=null && f.equals("loadsubcategory"))
		{
				loadsubcategory(request,response);
				
		}
		if(f!=null && f.equals("delete"))
		{
				delete(request,response);
				
		}
	}
	private void loadsubcategory(HttpServletRequest request,
			HttpServletResponse response) throws IOException 
	{
		categoryVO cVO=new categoryVO();
		cVO.setCategoryId(Integer.parseInt(request.getParameter("categoryId")));
		
		subcategoryVO subcategoryVO=new subcategoryVO();
		subcategoryVO.setCategoryId(cVO);
		subcategoryDAO subcategoryDAO=new subcategoryDAO();
		List l=subcategoryDAO.loadsubcategory(subcategoryVO);
		HttpSession hs=request.getSession();
		hs.setAttribute("loadsubcategory", l);
	
		response.sendRedirect("Admin/loadsubcategory.jsp");
	}
	
	
	private void edit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("subcategoryId"));
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		
		categoryDAO cdao=new categoryDAO();
		List ls2=cdao.searchCategory();
		
		subcategoryDAO scd=new subcategoryDAO();
		List ls=scd.edit(id);
		
		HttpSession session=request.getSession();
		session.setAttribute("subcategory", ls);
		session.setAttribute("category", ls2);
		response.sendRedirect("Admin/edit-subcategory.jsp");

	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("subcategoryId"));
		
		subcategoryVO cvo=new subcategoryVO();
		cvo.setSubcategoryId(id);
		
		subcategoryDAO sd=new subcategoryDAO();
		sd.delete(cvo);
		
		
		response.sendRedirect("SubcategoryController?flag=searchSubcategory");

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
			
			update(request,response);
		}
}
	protected void subcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		categoryDAO scd=new categoryDAO();
		List ls=scd.searchCategory();
		
		HttpSession session=request.getSession();
		session.setAttribute("key", ls);
		
		response.sendRedirect("Admin/form-managesubcategory.jsp");
	}

	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String subcategoryName = request.getParameter("subcategoryName");
		String subcategoryDescription = request.getParameter("subcategoryDescription");
	
		
		subcategoryVO st=new subcategoryVO();
	
		st.setSubcategoryName(subcategoryName);
		st.setSubcategoryDescription(subcategoryDescription);
	
		int catId=Integer.parseInt(request.getParameter("categoryId"));
		categoryVO cv=new categoryVO();
		cv.setCategoryId(catId);
		
		st.setCategoryId(cv);
		
		subcategoryDAO d=new subcategoryDAO();
		d.insert(st);
		
		response.sendRedirect("Admin/form-managesubcategory.jsp");
	}

	protected void searchsubcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		subcategoryDAO c=new subcategoryDAO();
		List ls=c.searchsubcategory();
		
		HttpSession session=request.getSession();
		session.setAttribute("subcategory", ls);
		response.sendRedirect("Admin/search-subcategory.jsp");
	}

	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("update called");
		int subcategoryId=Integer.parseInt(request.getParameter("subcategoryId"));
		System.out.println("1111");
		int categoryId=Integer.parseInt(request.getParameter("categoryId"));
		System.out.println(categoryId);
		String subcategoryName = request.getParameter("subcategoryName");
		System.out.println("1111");
		String subcategoryDescription = request.getParameter("subcategoryDescription");
	
		System.out.println(subcategoryName);
		System.out.println(subcategoryId);
		
		
		
		categoryVO cvo=new categoryVO();
		cvo.setCategoryId(categoryId);
     
		
		subcategoryVO scvo=new subcategoryVO();
		
		scvo.setSubcategoryId(subcategoryId);
		scvo.setSubcategoryName(subcategoryName);
		scvo.setSubcategoryDescription(subcategoryDescription);
		scvo.setCategoryId(cvo);
		
		System.out.println("successfully set");
		subcategoryDAO scdao=new subcategoryDAO();
		scdao.update(scvo);
			response.sendRedirect("SubcategoryController?flag=searchSubcategory");	
		}
}

