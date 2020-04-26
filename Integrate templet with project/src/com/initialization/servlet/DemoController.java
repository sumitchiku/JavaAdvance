package com.initialization.servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(
		urlPatterns = { "/DemoController" }, 
		initParams = {
				@WebInitParam(
							name = "message2", 
							value = "initialization from annotation", 
							description = "initialization from annotation description"
							) 
					}
			)

public class DemoController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public DemoController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServletConfig config = getServletConfig();
		String msg2 = config.getInitParameter("message2");
		response.getWriter().print(msg2);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
