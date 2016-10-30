package Controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
import DAO.bidDAO;
import VO.bidVO;
import VO.loginVO;
import VO.propertyVO;

/**
 * Servlet implementation class BidController
 */
@WebServlet("/BidController")
public class BidController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BidController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		
		if(f!=null && f.equals("searchbids"))
		{
			searchbids(request,response);
		
				
		}
		if(f!=null && f.equals("checkbid"))
		{
			checkbid(request,response);
		
				
		}
		
	}


	protected void searchbids(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		bidDAO b=new bidDAO();
		List ls=b.searchbids();
		System.out.println(ls.size());
		
		HttpSession session=request.getSession();
		session.setAttribute("bids", ls);
		
		response.sendRedirect("Admin/search-bids.jsp");
	
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String f=request.getParameter("flag");
		if(f!=null && f.equals("insertBid"))
		{
			insertBid(request,response);
		
				
		}
		if(f!=null && f.equals("checkbid"))
		{
			checkbid(request,response);
		
				
		}
	}
	
	protected void checkbid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("u r in method");
		int pid=Integer.parseInt(request.getParameter("propertyId"));
		System.out.println("propertyId"+pid);
		
		HttpSession session=request.getSession();
		int id=(Integer)session.getAttribute("loginid");
		System.out.println("login id"+id);
		loginVO l=new loginVO();
		l.setLoginId(id);
		propertyVO p=new propertyVO();
		p.setPropertyId(pid);
		
		bidVO b=new bidVO();
		b.setLoginId(l);
		b.setPropertyId(p);
		bidDAO bdao=new bidDAO();
		List ls=bdao.checkbids(b);
		System.out.println("size in controller"+ls.size());
		
		if(ls.size()==0){
			response.sendRedirect("User/form-bid.jsp");
			}
		else if(ls.size()>=1)
		{
			response.sendRedirect("User/404.jsp");
		}
		session.setAttribute("checkbid", ls.size());
	}
	protected void insertBid(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int propertyId = Integer.parseInt(request.getParameter("propertyId"));
		String ba = request.getParameter("title");
		String baseprice = request.getParameter("baseprice1");
		String bidprice = request.getParameter("bidprice");
		
		System.out.println("basemmmm"+baseprice);
		System.out.println("dasdsad"+ba);
		
		bidVO bvo=new bidVO();
		
		if(bidprice.contains("crore"))
		{
			
			String[] price1=bidprice.split("crore");
			double d=Double.parseDouble(price1[0]);
			
			double price2=d*10000000;
			bvo.setBidprice(price2);
			
			System.out.println(price2);
		
		}
		
		else if(bidprice.contains("lakh"))
		{
			System.out.println(bidprice);
			String[] price3=bidprice.split("lakh");
			double d=Double.parseDouble(price3[0]);
			System.out.println(d);
			
			double price4=d*100000;
			bvo.setBidprice(price4);
			System.out.println(price4);
		}
		
		
		HttpSession session=request.getSession();
		int id=(Integer)session.getAttribute("loginid");
		
		loginVO l=new loginVO();
		l.setLoginId(id);
		
		
		
		bvo.setBaseprice(baseprice);
	//	bvo.setBidId(bidId);
	//	bvo.setBidprice(bidprice);

		propertyVO pvo=new propertyVO();
		pvo.setPropertyId(propertyId);
		bvo.setPropertyId(pvo);
		bvo.setLoginId(l);
		
		bidDAO bdo=new bidDAO();
		bdo.insertBid(bvo);
	}


}

