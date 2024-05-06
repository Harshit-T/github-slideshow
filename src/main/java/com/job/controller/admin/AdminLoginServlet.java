package com.job.controller.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.job.DAO.UserDAO;
import com.job.DB.DBConnect;
import com.job.entity.User;

@WebServlet("/adminlogin")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email = req.getParameter("email");
			String pass = req.getParameter("password");
			User u = new User();
			HttpSession session = req.getSession();
			
			if(email.equals("admin") && pass.equals("admin123")){
				session.setAttribute("userobj", u);
				u.setRole("admin");
				session.setAttribute("admin-login-success", true);
				resp.sendRedirect("admin/admin-index.jsp");
				
			} else {
				UserDAO dao = new UserDAO(DBConnect.getConn());
				User user = dao.login(email, pass);
				if(user != null) {
					session.setAttribute("userobj", user);
					resp.sendRedirect("user/user-index.jsp");
				}
				else {
					session.setAttribute("succMsg", "Invalid Email & Password");
					resp.sendRedirect("user/user-login.jsp");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
