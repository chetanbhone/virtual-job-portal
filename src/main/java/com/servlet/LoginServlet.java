package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DB.DBConnect;
import com.dao.UserDAO;
import com.entity.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {

			String em = req.getParameter("email");
			String ps = req.getParameter("password");
			User u = new User();
			HttpSession session=req.getSession();

			if ("admin@gmail.com".equals(em) && "admin".equals(ps)) 
			{
				session.setAttribute("userobj", u);
				u.setRole("admin");
				resp.sendRedirect("admin.jsp");
			} else {

				UserDAO dao=new UserDAO(DBConnect.getConn());
				User user=dao.login(em, ps);
				
				if(user!=null) {
					session.setAttribute("userobj",user);
					resp.sendRedirect("home.jsp");
				}else {
					session.setAttribute("succMsg","Invalid Email & Password");
					resp.sendRedirect("Login.jsp");
				}
				
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
