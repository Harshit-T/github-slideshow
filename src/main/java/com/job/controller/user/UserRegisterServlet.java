package com.job.controller.user;

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

/**
 * Servlet implementation class UserRegisterServlet
 */
@WebServlet("/UserRegister")
public class UserRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	try {
		
		
		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String phone = req.getParameter("phone");
		String pass = req.getParameter("password");
		
		UserDAO dao = new UserDAO(DBConnect.getConn());
		User u = new User(name,email,pass,phone,"user");
		boolean f  = dao.addUser(u);
		HttpSession session = req.getSession();
		if(f) {
			session.setAttribute("resgiter-user-success",true);
			resp.sendRedirect("user/user-login.jsp");
		}else {
			session.setAttribute("succMsg","something wrong on server");
			resp.sendRedirect("user/user-register.jsp");
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	
}

}
