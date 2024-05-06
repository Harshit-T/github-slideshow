package com.job.controller.employer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.job.DAO.EmployerDAO;
import com.job.DB.DBConnect;
import com.job.entity.Employer;


/**
 * Servlet implementation class EmployerLogin
 */
@WebServlet("/emplogin")
public class EmployerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerLoginServlet() {
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
			String pass = req.getParameter("password");
			Employer e = new Employer();
			HttpSession session = req.getSession();
			
			if(email.equals("admin") && pass.equals("admin123")){
				session.setAttribute("empobj", e);
				e.setRole("admin");
				session.setAttribute("admin-login-success", true);
				resp.sendRedirect("admin/admin-index.jsp");
				
			} else {
				EmployerDAO dao = new EmployerDAO(DBConnect.getConn());
				Employer emp = dao.empLogin(email, pass);
				if(emp != null) {
					session.setAttribute("empobj", emp);
					resp.sendRedirect("employer/employer-index.jsp");
				}
				else {
					session.setAttribute("succMsg", "Invalid Email & Password");
					resp.sendRedirect("employer/employer-register.jsp");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
