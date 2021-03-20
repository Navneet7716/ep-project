package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Signup
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection con;
	PreparedStatement smt;
    /**
     * Default constructor. 
     * @throws ClassNotFoundException 
     * @throws SQLException 
     */
    public Login() throws ClassNotFoundException, SQLException {
    	Class.forName("com.mysql.cj.jdbc.Driver");
    	String url="jdbc:mysql://localhost:3306/ep";
    	System.out.println("Connecting to MySQL...");
    	
    	this.con=DriverManager.getConnection(url,"root","password");
    	System.out.println("Connected to m MySQL\n");
    	
    	this.smt=this.con.prepareStatement("select Email,Password from signup where Email=? and Password=?");
    	
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			this.smt.setString(1, request.getParameter("email"));
			this.smt.setString(2, request.getParameter("password"));
			
			System.out.print(request.getParameter("email"));
			ResultSet i=this.smt.executeQuery(); 
			if(i.next()) {
				RequestDispatcher rd=request.getRequestDispatcher("Homepage.html");  
				rd.forward(request, response);
				response.getWriter().append("You are logged in!");
				}
			else{
				response.getWriter().append("incorrect credentials");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
