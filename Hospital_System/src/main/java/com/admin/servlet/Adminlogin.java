package com.admin.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;


@WebServlet("/adminLogin")
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	try {
		String email=request.getParameter("email");
		String password=request.getParameter("password");

		HttpSession session=request.getSession();


		if("admin@llh.com".equals(email) && "admin".equals(password) ) {
			session.setAttribute("adminObj", new User());
			response.sendRedirect("admin/index.jsp");
		}else {	
			response.sendRedirect("admin_login.jsp?invalid Credentials");
		}

	}catch(Exception e) {e.printStackTrace();}
	}

}
