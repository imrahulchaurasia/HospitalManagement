package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;


@WebServlet("/user_Register")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 try {

			 String fullname=request.getParameter("fullname");
			 String email=request.getParameter("email");
			 String password=request.getParameter("password");

			 User u=new User(fullname,email,password);

			 UserDao dao=new UserDao(DBConnect.getConn());
			boolean f= dao.userRegister(u);
			if(f) {
				System.out.println("register succesfull");
			}else {
				System.out.println("register not succesfull");

			}


			HttpSession sess=request.getSession(false);
			if(sess!=null) {
				sess.invalidate();
			}

	        response.sendRedirect("user_login.jsp?message=User Registered Succefully");


		 }catch(Exception e) {e.printStackTrace();}

	}

}
