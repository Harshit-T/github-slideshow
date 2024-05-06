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
 * Servlet implementation class EmployerRegister
 * 
 */
@WebServlet("/EmpRegister")
public class EmployerRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployerRegisterServlet() {
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
			String cmpname = req.getParameter("cmpname");
			String hrname = req.getParameter("hrname");
			String hrphone = req.getParameter("hrphone");
			String pass = req.getParameter("password");
			
			HttpSession session = req.getSession();
			
			EmployerDAO dao = new EmployerDAO(DBConnect.getConn());
			int i  = dao.addEmp(email, hrname,cmpname, hrphone, pass) ;
			
			if(i>0) {
				session.setAttribute("resgiter-user-success",true);
				resp.sendRedirect("employer/employer-login.jsp");
			}else {
				session.setAttribute("succMsg","something wrong on server");
				resp.sendRedirect("employer/employer-register.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
