package com.job.controller.employer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.job.DB.DBConnect;
import com.job.entity.Employer;
import com.job.DAO.EmployerDAO;
/**
 * Servlet implementation class UpdateProfile
 */
@MultipartConfig
@WebServlet("/updateprofile")
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		String size=req.getParameter("size");
		String dec=req.getParameter("dec");
		String city=req.getParameter("city");
		String state=req.getParameter("state");
		String country=req.getParameter("country");
		String email=req.getParameter("email");
		String linkedin=req.getParameter("linkedin");
		String web=req.getParameter("web");
	
		Employer ed = new Employer();
		ed.setId(id);
		ed.setCompany_size(size);
		ed.setCompany_desc(dec);
		ed.setCompany_city(city);
		ed.setCompany_state(state);
		ed.setCompany_country(country);
		ed.setCompany_email(email);
		ed.setLinkedin_url(linkedin);
		ed.setCompany_website(web);
		HttpSession session = req.getSession();
		EmployerDAO e_dao = new EmployerDAO(DBConnect.getConn());
		int i = e_dao.updateProfile(ed);
		if(i>0) {
	   		 session.setAttribute("recrutier-profile-success", true);
	            resp.sendRedirect("employer/employer-profile.jsp");
			}else {
	   		 session.setAttribute("recrutier-profile-fail", false);
	            resp.sendRedirect("employer/employer-profile.jsp");
			}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		}

	}


