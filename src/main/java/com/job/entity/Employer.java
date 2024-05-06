package com.job.entity;

public class Employer {
	private int id;
	private String email;
	private String company_name;
	private String hr_name;
	private String hr_phone;
	private String password;
	private String role;
	private String company_size;
	private String company_desc;
	private String company_city;
	private String company_state;
	private String company_country;
	private String company_email;
	private String linkedin_url;
	private String company_website;

	public Employer(int id,String email, String company_name, String hr_name, String hr_phone, String password, String role,
			String company_size, String company_desc, String company_city, String company_state, String company_country,
			String company_email, String linkedin_url, String company_website) {
		super();
		this.id = id;
		this.email = email;
		this.company_name = company_name;
		this.hr_name = hr_name;
		this.hr_phone = hr_phone;
		this.password = password;
		this.role = role;
		this.company_size = company_size;
		this.company_desc = company_desc;
		this.company_city = company_city;
		this.company_state = company_state;
		this.company_country = company_country;
		this.company_email = company_email;
		this.linkedin_url = linkedin_url;
		this.company_website = company_website;
	}

	public Employer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getHr_name() {
		return hr_name;
	}
	public void setHr_name(String hr_name) {
		this.hr_name = hr_name;
	}
	public String getHr_phone() {
		return hr_phone;
	}
	public void setHr_phone(String hr_phone) {
		this.hr_phone = hr_phone;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getCompany_size() {
		return company_size;
	}
	public void setCompany_size(String company_size) {
		this.company_size = company_size;
	}
	public String getCompany_desc() {
		return company_desc;
	}
	public void setCompany_desc(String company_desc) {
		this.company_desc = company_desc;
	}
	public String getCompany_city() {
		return company_city;
	}
	public void setCompany_city(String company_city) {
		this.company_city = company_city;
	}
	public String getCompany_state() {
		return company_state;
	}
	public void setCompany_state(String company_state) {
		this.company_state = company_state;
	}
	public String getCompany_country() {
		return company_country;
	}
	public void setCompany_country(String company_country) {
		this.company_country = company_country;
	}
    public String getCompany_email() {
		return company_email;
	}
    public void setCompany_email(String company_email) {
		this.company_email = company_email;
	}
	public String getLinkedin_url() {
		return linkedin_url;
	}
	public void setLinkedin_url(String linkedin_url) {
		this.linkedin_url = linkedin_url;
	}
	public String getCompany_website() {
		return company_website;
	}
	public void setCompany_website(String company_website) {
		this.company_website = company_website;
	}
}
