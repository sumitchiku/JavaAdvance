package com.readingURLparameter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ParameterSevlet
 */
public class ParameterSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ParameterSevlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	
		PrintWriter out = response.getWriter();
		out.print("Sumit Sharma <br/>");
		out.println("as in URL we pass '/ParameterSevlet?getValue1=testingParam'");
		out.println(" <br/>now we will get parameter from URL <br/> <br/>");
		//http://localhost:8080/Reading_URL_Parameter/ParameterSevlet?getValue1=testingParam&getValue2=fetchingParam
		out.print("Value of First Parameter : " + request.getParameter("getValue1") + "<br/>"); // give value of URL
		out.print("Value of Second Parameter : " + request.getParameter("getValue2") + "<br/>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
