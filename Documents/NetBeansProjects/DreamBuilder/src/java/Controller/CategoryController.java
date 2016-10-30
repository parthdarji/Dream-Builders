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
import VO.categoryVO;

/**
 * Servlet implementation class CategoryController
 */
@WebServlet("/CategoryController")
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String f=request.getParameter("flag");

		if(f!=null && f.equals("searchCategory"))
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
		int id=Integer.parseInt(request.getParameter("categoryId"));
		categoryDAO cd=new categoryDAO();
		List ls=cd.edit(id);
		
		HttpSession session=request.getSession();
		session.setAttribute("category", ls);
		response.sendRedirect("Admin/edit-category.jsp");

	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("545454");
		int id=Integer.parseInt(request.getParameter("categoryId"));
		System.out.println(id);
		categoryVO cvo=new categoryVO();
		cvo.setCategoryId(id);
		
		categoryDAO cd=new categoryDAO();
		cd.delete(cvo);
		
		
		response.sendRedirect("CategoryController?flag=searchCategory");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flag=request.getParameter("flag");
		
		
		if(flag!=null && flag.equals("insert"))
		{
			insert(request,response);
		}
		if(flag!=null && flag.equals("edit"))
		{
			
			update(request,response);
		}
	}

	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String categoryName=request.getParameter("categoryName");
		String categoryDescription=request.getParameter("categoryDescription");
		categoryVO cvo=new categoryVO();
		
		cvo.setCategoryName(categoryName);
		cvo.setCategoryDescription(categoryDescription);
		
		categoryDAO cdao=new categoryDAO();
		cdao.insert(cvo);
		System.out.println("values are going");
		response.sendRedirect("Admin/form-managecategory.jsp");
		
	}

	protected void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		categoryDAO c=new categoryDAO();
		List ls=c.searchCategory();
		
		HttpSession session=request.getSession();
		session.setAttribute("key", ls);
		response.sendRedirect("Admin/search-category.jsp");
	}
	protected void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	int categoryId=Integer.parseInt(request.getParameter("categoryId"));
	String categoryName=request.getParameter("categoryName");
	String categoryDescription=request.getParameter("categoryDescription");
	
	categoryVO cvo=new categoryVO();
//	cvo.setCategoryId(categoryId);
	cvo.setCategoryName(categoryName);
	cvo.setCategoryDescription(categoryDescription);
	
	categoryDAO cdao=new categoryDAO();
	cdao.update(cvo);
		response.sendRedirect("CategoryController?flag=searchCategory");	
	}
	}

