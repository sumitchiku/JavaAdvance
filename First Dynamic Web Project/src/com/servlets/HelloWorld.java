package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//package > create servlets > now after this we see error on lines,
// we have to build the path  project(right-click)>build path pop-UP > libraries > ADDexternalJAR > Tomcat9.0 >lib > sservlets-api.jar > apply and close
/**
 * Servlet implementation class HelloWorld
 */
@WebServlet("/HelloWorld")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public HelloWorld() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		System.out.println("wallaaaaaaaaaa");
		response.getWriter().println("<h1>This is First Servlet Program to display web Templet on HTML Page</h1>");
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
