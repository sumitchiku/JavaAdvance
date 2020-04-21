package com.session.servlet.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SiteController
 */
@WebServlet("/SiteController")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SiteController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equals("sumitchiku") && password.equals("1234567890")) {
			
			request.getSession().invalidate();  	//destroy any session in java
			HttpSession newSession = request.getSession(true);
			newSession.setMaxInactiveInterval(300);		//wait for 300ms to redirect the request
			
			/*before send redirect we create cookies*/
			Cookie cookieUsername = new Cookie("username", username);
			response.addCookie(cookieUsername);
			
			response.sendRedirect("welcome.jsp");	//go to welcome page
		} else {
			response.sendRedirect("login.jsp");		// stays at login page
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
