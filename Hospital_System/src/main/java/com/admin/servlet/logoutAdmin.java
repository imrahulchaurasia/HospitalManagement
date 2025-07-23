//package com.admin.servlet;
//
//
//
//import java.io.IOException;
//
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//
//@WebServlet("admin/Logout")  // Mapping it explicitly to /admin/logout
//public class logoutAdmin extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
////		doGet(request, response);
//
//
//		HttpSession sess=request.getSession(false);
//		if(sess!=null) {
//			sess.invalidate();
//		}
//
//        response.sendRedirect("admin_login.jsp?message=LoggedOut");
//
//
//
//	}
//
//}
