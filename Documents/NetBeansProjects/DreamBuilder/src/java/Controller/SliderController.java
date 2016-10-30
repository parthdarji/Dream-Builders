package Controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.propertyDAO;
import DAO.registrationDAO;
import DAO.sliderDAO;

import VO.propertyVO;

import VO.sliderVO;

/**
 * Servlet implementation class SliderController
 */
@WebServlet("/SliderController")
public class SliderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SliderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
String flag=request.getParameter("flag");
		
		if(flag!=null && flag.equals("loaduser")){
//			loaduser(request, response);
		
		}

	
		
		
	}

	/*private void loaduser(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
	
		HttpSession session=request.getSession();
		
		String usertypeuser="user";
		registrationDAO usermstdao=new registrationDAO();
		List l=usermstdao.loaduser(usertypeuser);
		
		Iterator itr=l.iterator();
		
		while(itr.hasNext())
		
		{   int i=0;
			UsermstVO usermstvo=(UsermstVO)itr.next();
			String lastlogintime=usermstvo.getLogintime();
			System.out.println("login time of vendors"+lastlogintime);
			DateFormat dateFormat1 = new SimpleDateFormat("yy/MM/dd HH:mm:ss");
			String currenttime=dateFormat1.format(Calendar.getInstance().getTime());
			System.out.println("current time"+currenttime);
			
			SimpleDateFormat format = new SimpleDateFormat("yy/MM/dd HH:mm:ss");

		    Date d1 = null;
		    Date d2 = null;
		    try {
		        d1 = format.parse(lastlogintime);
		        d2 = format.parse(currenttime);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    // Get msec from each, and subtract.
		    long diff= d2.getTime() - d1.getTime();
		    long diffSeconds = diff / 1000 % 60;
		    long diffMinutes = diff / (60 * 1000) % 60;
		    long diffHours = diff / (60 * 60 * 1000);
		    LoginTimeVO logintimevo=new LoginTimeVO();
		    logintimevo.setDiffSeconds(diffSeconds);
		    logintimevo.setDiffMinutes(diffMinutes);
		    logintimevo.setDiffHours(diffHours);
		    System.out.println("Time in seconds: " + diffSeconds + " seconds.");
		    System.out.println("Time in minutes: " + diffMinutes + " minutes.");
		    System.out.println("Time in hours: " + diffHours + " hours.");
		    List timeList=null;
		    timeList= (List)session.getAttribute("logintime");
		    if(timeList==null)
		    {
		    	timeList=new ArrayList();
		    	timeList.add(logintimevo);
		    }
		    else
		    {
		    	timeList.add(logintimevo);
		    }
		    session.setAttribute("logintime",timeList);
		    System.out.println("Login times"+timeList.size());
		    }
		    session.setAttribute("diffSeconds",diffSeconds+i);
		    session.setAttribute("diffMinutes",diffMinutes+i);
		    session.setAttribute("diffHours",diffHours+i);
	    System.out.println("NUmber of Vendors"+l.size());
		session.setAttribute("loadvendor",l);
		
		
	}
*/
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flag=request.getParameter("flag");
		
		if(flag!=null && flag.equals("addslider")){
			insertSlider(request, response);
		
		}

		
		
	}
	protected void insertSlider(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String sliderDescription=request.getParameter("sliderDescription");
		int PropertyId=Integer.parseInt(request.getParameter("propertyId"));
		String price=request.getParameter("price");
		
		System.out.println("descrption is:"+sliderDescription);
		System.out.println("price is:"+price);
		propertyVO prv = new propertyVO();
		prv.setPropertyId(PropertyId);

		sliderVO sv = new sliderVO();
		sv.setSliderDescription(sliderDescription);
		sv.setPrice(price);
		sv.setPropertyId(prv);
		
	
		
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		Iterator itr =  myList.iterator();
        
        System.out.println("Reading for session");
        int i =0;
        while (itr.hasNext()) {
    
        //	smpg.setSliderImgName("photo"+i);
        	sv.setSliderImgName((String)itr.next());
        //	smpg.setPropertyId(prv);
       	 
    /*    	sliderMappingDAO smdao=new sliderMappingDAO();
        	
       	 smdao.insert(smpg);
    */
        	
        	sliderDAO sdao=new sliderDAO();
    		sdao.insertSlider(sv);
    	
       	 i++;
			}
		

		
		session.removeAttribute("fileList");
	}
}
