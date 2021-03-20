package com.employee;

public class Employee {
	private String name;
	private int id;
	private String username;
	private String email;
	private String phone;
	
	public Employee(String name, int id, String username, String email, String phone) {
		super();
		this.name = name;
		this.id = id;
		this.username = username;
		this.email = email;
		this.phone = phone;
	}
	
	public String getName() {
		return name;
	}
	public int getId() {
		return id;
	}
	public String getUsername() {
		return username;
	}
	
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
}
