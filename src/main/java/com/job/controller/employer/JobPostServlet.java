package com.job.controller.employer;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.job.DAO.JobDAO;
import com.job.DB.DBConnect;

/**
 * Servlet implementation class JobPost
 */
@WebServlet("/PostJob")
public class JobPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JobPostServlet() {
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
		// TODO Auto-generated method stub
		//String cmpName=req.getParameter("name");
		String title=req.getParameter("title");
		String type=req.getParameter("type");
		String location=req.getParameter("location");
		String salary=req.getParameter("salary");
		String deadline=req.getParameter("deadline");
		String desc=req.getParameter("desc");
		String vacancy=req.getParameter("vacancy");
		String skills=req.getParameter("skills");
		String res=req.getParameter("res");
		
        HttpSession session=req.getSession();

		
		JobDAO jd= new JobDAO(DBConnect.getConn());
		boolean f = jd.addJobs(title, type, vacancy, location, salary, deadline, desc, skills, skills, res) ;
		if(f) {
   		 session.setAttribute("job-post-success", true);
            resp.sendRedirect("employer/job-post.jsp");
		}else {
   		 session.setAttribute("job-post-fail", false);
            resp.sendRedirect("employer/employer-index.jsp");
		}
	}

}
