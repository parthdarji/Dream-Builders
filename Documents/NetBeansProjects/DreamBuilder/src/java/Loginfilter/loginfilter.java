package Loginfilter;

import java.io.IOException;
import java.net.URI;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.categoryDAO;
import DAO.complainDAO;
import DAO.loginDAO;

import VO.complainVO;
import VO.loginVO;
import VO.registrationVO;

/*import dao.logindao;

 import vo.loginvo;*/
/**
 * Servlet Filter implementation class loginController
 */
//@WebFilter("/*")
public class loginfilter implements Filter {

    /**
     * Default constructor.
     */
    public loginfilter() {
        // TODO Auto-generated constructor stub
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
        // TODO Auto-generated method stub
    }

    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
        // place your code here

		// pass the request along the filter chain
        HttpSession session = ((HttpServletRequest) request).getSession();
        RequestDispatcher requestDispatcher;
        String logout = request.getParameter("logout");
        String reg = request.getParameter("reg");
        System.out.println("registration flag===" + reg);
		//	int i = (Integer)session.getAttribute("userID");
        //System.out.println("id = = = = =" + i);
        String uri = ((HttpServletRequest) request).getRequestURI();

        System.out.println("link =  = = = = " + uri);

        if (uri.contains("realhomes.jsp") || uri.contains("form-registration") || uri.contains("HomeController") || uri.contains("UploadServlet") || uri.contains("fileupload.jsp") || uri.contains("/css") || uri.contains("/js") && !uri.contains("/jsp") || uri.contains("/img") || uri.contains("/fonts") || uri.contains("Controller")) {

			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
            //requestDispatcher.forward(request,response);  
            chain.doFilter(request, response);

        } else if (logout != null) {
            //session.removeAttribute("userID");
            System.out.println("logout in else if");

            session.invalidate();
            System.out.println("after session invalidates");
            ((HttpServletResponse) response).sendRedirect("login.jsp");
            RequestDispatcher rd;
//			rd = request.getRequestDispatcher("/login.jsp");
//			rd.forward(request, response);
//			
        } else if (request.getParameter("flag") != null && request.getParameter("flag").equals("login")) {
            String email = request.getParameter("email");
            String pd = request.getParameter("password");
            System.out.println(email);
            System.out.println(pd);
            loginVO l = new loginVO();
            l.setEmailId(email);

            l.setPassword(pd);

            complainDAO cdao = new complainDAO();
            List complain = cdao.searchComplain();

            loginDAO ld = new loginDAO();

            List list = ld.search(l);
            System.out.println("list" + list.size());

            if (list != null && list.size() >= 1) {

                Iterator itr = list.iterator();

                //while(itr.hasNext()){
                loginVO user = (loginVO) itr.next();

                int y = (Integer) user.getLoginId();

                System.out.println("login idd" + y);
                session.setAttribute("loginId", y);
                String name = user.getRegister_id().getFirstname();
                String type = user.getLogintype();
                String email12 = user.getEmailId();
                String pwd = user.getPassword();
                System.out.println("type" + type);

                session.setAttribute("email12", email12);
                session.setAttribute("pwd", pwd);
                session.setAttribute("regid", user.getRegister_id());
                session.setAttribute("loginid56", y);
                session.setAttribute("fn", name);
                session.setAttribute("complainlstfl", complain);
                if (type.equals("user")) {

                    DateFormat dateFormat = new SimpleDateFormat("yy/MM/dd HH:mm:ss");
                    Date date = new Date();
                    String time = dateFormat.format(date);
                    int loginid123 = (Integer) session.getAttribute("loginid56");
                    String email23 = (String) session.getAttribute("email12");
                    String pwd12 = (String) session.getAttribute("pwd");
                    System.out.println("Date isssssss:" + date);
	//		int userid1=(Integer) session.getAttribute("regid");

                    registrationVO regVO = new registrationVO();
                    regVO.setRegister_id(loginid123);

                    loginVO login = new loginVO();
                    login.setLoginId(loginid123);
                    login.setDate(time);
                    /*login.setEmailId(email23);
                     login.setPassword(pwd12);
                     login.setLogintype(type);
                     login.setRegister_id(regVO);
                     */
                    loginDAO logindao = new loginDAO();
                    logindao.inserttime(login);

                    categoryDAO c = new categoryDAO();
                    List ls = c.searchCategory();

                    System.out.println("cat. size" + ls.size());
                    session.setAttribute("category", ls);

                    requestDispatcher = request.getRequestDispatcher("/User/index.jsp");
                    requestDispatcher.forward(request, response);

                } else if (type.equals("admin")) {

                    requestDispatcher = request.getRequestDispatcher("/Admin/index.jsp");
                    requestDispatcher.forward(request, response);

                }
            } //	System.out.println(session.getAttribute("userId"));
            //	String type = user.getUserType();
            //				session.setAttribute("usertype",type);
            //				System.out.println(y);
            //				if(type.equals("user"))
            //				{
            //				requestDispatcher = request.getRequestDispatcher("/user/user-private-timeline.jsp");  
            //				requestDispatcher.forward(request,response);  
            //				}
            //				else
            //				{
            //			
            //				requestDispatcher = request.getRequestDispatcher("/admin/dashboard.jsp");  
            //				requestDispatcher.forward(request,response);  
            //				}
            //				}
            else {
                requestDispatcher = request.getRequestDispatcher("/login.jsp");
                requestDispatcher.forward(request, response);
            }
        } else if (session.getAttribute("loginid") != null) {
            chain.doFilter(request, response);
        } else {

            RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
            rd.forward(request, response);

        }

    }

    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
        // TODO Auto-generated method stub
    }

}
