package com.job.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Timestamp;
import java.util.Date;

public class JobDAO {
	private Connection conn;
	
	public JobDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean addJobs(String title,String type,String vacancy,String location,String salary,String deadline,String job_desc,String skills,String posteddate,String responsbility) {
		Timestamp date = new Timestamp(new Date().getTime());
		boolean f = false;
		try {
			String sql = "insert into job_post(job_title,job_type,job_vacancy,job_location,salary,deadline,job_desc,skills,posted_date,res) values(?,?,?,?,?,?,?,?,?,?)";
		    PreparedStatement ps = conn.prepareStatement(sql);
		    ps.setString(1, title);
		    ps.setString(2, type);
		    ps.setString(3, vacancy);
		    ps.setString(4, location);
		    ps.setString(5, salary);
		    ps.setString(6, deadline);
		    ps.setString(7, job_desc);
		    ps.setString(8, skills);
		    ps.setTimestamp(9, date);
		    ps.setString(10, responsbility);
		    int i = ps.executeUpdate();
		    if(i==1) {
		    	f = true;
		    }
		}catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
