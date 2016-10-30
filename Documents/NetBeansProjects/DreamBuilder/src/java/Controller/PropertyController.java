package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.categoryVO;
import VO.cityVO;
import VO.countryVO;
import VO.propertyMappingVO;
import VO.propertyVO;
//import VO.sliderVO;
import VO.stateVO;
import VO.subcategoryVO;

import DAO.categoryDAO;
import DAO.cityDAO;
import DAO.countryDAO;
import DAO.propertyDAO;
import DAO.propertyMappingDAO;
import DAO.stateDAO;
import DAO.subcategoryDAO;

/**
 * Servlet implementation class PropertyController
 */
@WebServlet("/PropertyController")
public class PropertyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PropertyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String f=request.getParameter("flag");
		
		if(f!=null && f.equals("searchindex"))
		{
			String s1=request.getParameter("type");
			String s2=request.getParameter("status");
			String s3=request.getParameter("properties");
			
			
			System.out.println("sssssssssssssssss"+s1);
			
			if(s1!=null && s1.equals("rent"))
			{
				searchPropertyRent(request,response);
			}
			else if(s1!=null && s1.equals("sale"))
			{
				searchPropertyBuy(request,response);
			}
			
			
				
			
			
		}
		
		
		
		if(f!=null && f.equals("property"))
			{
				property(request,response);
				System.out.println("redirect to method");
			}
	/*	if(f!=null && f.equals("search"))
		{
			search(request,response);
			
		}
	*/	if(f!=null && f.equals("searchPropertyUser"))
		{
			searchPropertyUser(request,response);
				
		}
	
	if(f!=null && f.equals("searchPropertyOngoing"))
	{
		searchPropertyOngoing(request,response);
			
	}
	if(f!=null && f.equals("searchPropertyCommercial"))
	{
		searchPropertyUserCommercial(request,response);
			
	}
	
	if(f!=null && f.equals("searchPropertyUpcoming"))
	{
		searchPropertyUpcoming(request,response);
			
	}

	if(f!=null && f.equals("searchPropertyBuy"))
	{
		searchPropertyBuy(request,response);
			
	}
	if(f!=null && f.equals("searchPropertyCompleted"))
	{
		searchPropertyCompleted(request,response);
			
	}
	if(f!=null && f.equals("searchPropertySale"))
	{
		searchPropertySale(request,response);
			
	}
	if(f!=null && f.equals("searchPropertyRent"))
	{
		searchPropertyRent(request,response);
			
	}
	if(f!=null && f.equals("fulldetail"))
	{
		fulldetail(request,response);
			
	}
	if(f!=null && f.equals("sliderImg"))
	{
		sliderImg(request,response);
			
	}
	if(f!=null && f.equals("delete"))
	{
		delete(request,response);
			
	}
	if(f!=null && f.equals("getprice"))
	{
		getPrice(request,response);
			
	}
	if(f!=null && f.equals("searchPropertyBid"))
	{
		searchPropertyBid(request,response);
			
	}

}
	private void searchPropertyBid(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered searchproperty Bid");
		
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertyBid();
	
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of::::::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	
		private void searchPropertySale(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered searchproperty Method");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertySale();
		
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	
	private void searchPropertyRent(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered searchproperty Method");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertyRent();
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	private void searchPropertyBuy(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered searchproperty Method");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertyBuy();
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	
	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("propertyId"));
		
		propertyVO cvo=new propertyVO();
		cvo.setPropertyId(id);
		
		propertyDAO sd=new propertyDAO();
		sd.delete(cvo);
		
		
		response.sendRedirect("PropertyController?flag=searchProperty");

	}

	
	protected void property(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		categoryDAO ctd=new categoryDAO();
		List ls=ctd.searchCategory();
		
		subcategoryDAO scd=new subcategoryDAO();
		List ls2=scd.searchsubcategory();
		
		countryDAO cdao=new countryDAO();
		List ls3=cdao.searchCountry();
		
		stateDAO sdao=new stateDAO();
		List ls4=sdao.searchState();
	
		cityDAO ctdao=new cityDAO();
		List ls5=ctdao.searchCity();
		
		HttpSession session=request.getSession();
		session.setAttribute("category", ls);
		session.setAttribute("subcategory",ls2);
		session.setAttribute("country",ls3);
		session.setAttribute("state",ls4);
		session.setAttribute("city",ls5);
		
		System.out.println("redirected to the jsp page....!!");
		response.sendRedirect("Admin/form-manageproperties.jsp");
	}
	private void searchProperty(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("success");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchProperty();
		
		propertyMappingDAO mpg=new propertyMappingDAO();
		List ls2=mpg.showAll();
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		session.setAttribute("image", ls2);
		response.sendRedirect("Admin/search-property.jsp");
		
	}
	private void searchPropertyOngoing(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered Ongoing Method");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertyOngoing();
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of of ongoinggggg::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	private void searchPropertyCompleted(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered Ongoing Method");
		propertyDAO cd=new propertyDAO();
		List<propertyVO> ls=cd.searchPropertyCompleted();
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	private void searchPropertyUpcoming(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered Ongoing Method");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertyUpcoming();
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	private void searchPropertyUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered searchproperty Method");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertyUser();
		
		
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		System.out.println("size of::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
	private void fulldetail(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered full detail method");
		int id=Integer.parseInt(request.getParameter("id"));
		propertyVO p=new propertyVO();
		p.setPropertyId(id);
		System.out.println("property Id for full detail"+id);
		propertyDAO cd=new propertyDAO();
		List ls=cd.fullDetail(p);
		
		
		System.out.println("full detail size"+ls.size());
		
		HttpSession session=request.getSession();
		session.setAttribute("fulldetail", ls);

		response.sendRedirect("User/property-dtl.jsp");
		
	}
	private void searchPropertyUserCommercial(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("successfully entered searchproperty commercial Method");
		int id=Integer.parseInt(request.getParameter("id"));
		categoryVO c=new categoryVO();
		c.setCategoryId(id);
		propertyVO p=new propertyVO();
		p.setCategoryId(c);
		System.out.println(id);
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchPropertyUserCommercial(p);
		System.out.println("commercial property"+ls.size());		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		
		System.out.println("size of::"+ls.size());
		response.sendRedirect("User/simple-listing.jsp");
		
	}
		
	
	private void sliderImg(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("success");
		propertyDAO cd=new propertyDAO();
		List ls=cd.searchProperty();
		
		/*propertyMappingDAO mpg=new propertyMappingDAO();
		List ls2=mpg.showAll();*/
		
		HttpSession session=request.getSession();
		session.setAttribute("property", ls);
		//session.setAttribute("image", ls2);
		response.sendRedirect("Admin/form-manageslider.jsp");
		
	}
	
	private void getPrice(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("propertyId"));
		
		propertyDAO pd=new propertyDAO();
		List price=pd.getPrice(id);
		HttpSession session=request.getSession();
		session.setAttribute("propertyPrice",price );
		
		PrintWriter out = response.getWriter();
		
		for (Iterator iterator = price.iterator(); iterator.hasNext();) {
			Object object = (Object) iterator.next();
			System.out.println(object.toString());
			out.println("[{\"price\":\""+object.toString()+"\"}]");
		}
		
	}	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String flag=request.getParameter("flag");
			
			if(flag!=null && flag.equals("1")){
				insert(request, response);
			
			}
			if(flag!=null && flag.equals("addslider")){
				insertSlider(request, response);
			
			}
	}

	protected void insertSlider(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		/*String sliderDescription=request.getParameter("sliderDescription");
		int PropertyId=Integer.parseInt(request.getParameter("propertyId"));
		String price=request.getParameter("price");
		
		System.out.println(sliderDescription);
		
		propertyVO prv = new propertyVO();
		prv.setPropertyId(PropertyId);

		sliderVO sv = new sliderVO();
		sv.setSliderDescription(sliderDescription);
		sv.setPrice(price);
		sv.setPropertyId(prv);
		
		propertyDAO pdao=new propertyDAO();
		pdao.insertSlider(sv);*/
	}
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	
		String propertyName = request.getParameter("propertyName");
		String categoryId = request.getParameter("categoryName");
		String subcategoryId = request.getParameter("subcategory");
		String propertyDesc = request.getParameter("propertyDesc");
		
		int countryId = Integer.parseInt(request.getParameter("countryId"));
		String stateId = request.getParameter("state");
		String cityId = request.getParameter("city");
		String area = request.getParameter("area");
		
		String price = request.getParameter("price");
		
		
		String type = request.getParameter("type");
		
		String bid=request.getParameter("bid");
		
		
		Double longitude = Double.parseDouble(request.getParameter("longitude"));
		Double lattitude = Double.parseDouble(request.getParameter("lattitude"));
		String status = request.getParameter("status");

		System.out.println(status);
		System.out.println("sub category"+subcategoryId);
		
		categoryVO cvo=new categoryVO();
		cvo.setCategoryId(Integer.parseInt(categoryId));
		
		subcategoryVO scvo=new subcategoryVO();
		scvo.setSubcategoryId(Integer.parseInt(subcategoryId));
		
		countryVO cnvo=new countryVO();
		cnvo.setCountryId(countryId);
		
		stateVO stvo=new stateVO();
		stvo.setStateId(Integer.parseInt(stateId));
		
		cityVO ctvo=new cityVO();
		ctvo.setCityId(Integer.parseInt(cityId));
		
		
		propertyVO propertyVO=new propertyVO();
		propertyVO.setPropertyName(propertyName);
		propertyVO.setPropertyDesc(propertyDesc);
		propertyVO.setArea(area);
		
		propertyVO.setLongitude(longitude);
		propertyVO.setLattitude(lattitude);
		propertyVO.setCategoryId(cvo);
		propertyVO.setSubcategoryId(scvo);
		propertyVO.setCountryId(cnvo);
		propertyVO.setStateId(stvo);
		propertyVO.setCityId(ctvo);
		propertyVO.setType(type);
		propertyVO.setStatus(status);
		propertyVO.setBid(bid);
		
		if(price.contains("crore"))
		{
			
			String[] price1=price.split("crore");
			double d=Double.parseDouble(price1[0]);
			
			double price2=d*10000000;
			propertyVO.setPrice(price2);
			
			System.out.println(price2);
		
		}
		
		else if(price.contains("lakh"))
		{
			System.out.println(price);
			String[] price3=price.split("lakh");
			double d=Double.parseDouble(price3[0]);
			System.out.println(d);
			
			double price4=d*100000;
			propertyVO.setPrice(price4);
			System.out.println(price4);
		}
		
		propertyDAO propertyDAO=new propertyDAO();
		propertyDAO.insert(propertyVO);
		
		
		propertyMappingVO attachMPGVO = new propertyMappingVO();
		
	//attachMPGVO.setAttachmentMappingID(propertyVO);
		
		

		propertyMappingDAO attachMPG_DAO= new propertyMappingDAO();
		
		
		//getting file from Session
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 attachMPGVO.setAttachmentName("Photo"+i);
        	 attachMPGVO.setPath((String)itr.next());
        	 attachMPGVO.setPropertyId(propertyVO);
        	 attachMPGVO.setStatus(i);
        	 attachMPG_DAO.insert(attachMPGVO);
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");
		response.sendRedirect("Admin/form-manageproperties.jsp");
//		show(request, response);
		
	}
	
	
}