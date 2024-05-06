package com.job.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;

import com.job.entity.Employer;

public class EmployerDAO {

	private Connection conn;

	public EmployerDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public int addEmp(String email, String name, String cmpName, String phone, String password) {
		int i = 0;
		try {
			String sql = "insert into employer(email,company_name,hr_name,hr_phone,password,role) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, email);
			ps.setString(2, cmpName);
			ps.setString(3, name);
			ps.setString(4, phone);
			ps.setString(5, password);
			ps.setString(6, "employer");
			i = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return i;
	}

	public Employer empLogin(String email, String password) {
		Employer u = null;
		try {
			String sql = "select * from employer where email = ? and password = ?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Employer();
				u.setId(rs.getInt(1));
				u.setEmail(rs.getString(2));
				u.setCompany_name(rs.getString(3));
				u.setHr_name(rs.getString(4));
				u.setHr_phone(rs.getString(5));
				u.setPassword(rs.getString(6));
				u.setRole(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public Employer getEmployerById(int id) {
		Employer u = null;
		try {
			String sql = "select * from employer where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				u = new Employer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10),
						rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15));
			  /*  u.setId(rs.getInt(1));
				u.setEmail(rs.getString(2));
				u.setCompany_name(rs.getString(3));
				u.setHr_name(rs.getString(4));
				u.setHr_phone(rs.getString(5));
				u.setPassword(rs.getString(6));
				u.setRole(rs.getString(7));
			    u.setCompany_size(rs.getString(8));
				u.setCompany_desc(rs.getString(9));
				u.setCompany_city(rs.getString(10));
				u.setCompany_state(rs.getString(11));
				u.setCompany_country(rs.getString(12));
				u.setCompany_email(rs.getString(13));
				u.setLinkedin_url(rs.getString(14));
				u.setCompany_website(rs.getString(15));*/

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return u;
	}

	public int updateProfile(Employer u) {
		int i = 0;
		try {
			String sql = "update employer set company_size=?,company_desc=?,company_city=?,company_state=?,company_country=?,company_email=?,linkedin_url=?,company_website=? where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, u.getCompany_size());
			ps.setString(2, u.getCompany_desc());
			ps.setString(3, u.getCompany_city());
			ps.setString(4, u.getCompany_state());
			ps.setString(5, u.getCompany_country());
			ps.setString(6, u.getCompany_email());
			ps.setString(7, u.getLinkedin_url());
			ps.setString(8, u.getCompany_website());
			ps.setInt(9, u.getId());
			i = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}

}
