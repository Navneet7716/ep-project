<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Check Attendance</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
  </head>
  <style>
body {
  background: url("https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378_1280.jpg");
  height: 100vh;
  }
  
  </style>
  <body>
  <% 
  String name = (String) session.getAttribute("name");
  
  
  %>
  
  
   <div class="container">
      <h1 class="title" style="margin: 10px;">
       Here is your attendance <%=name %>
      </h1>  
      </div>
 <% try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep","root","password");
	
	System.out.println("Connection Success");
	
	String empid=(String) session.getAttribute("empid");
	
	PreparedStatement pstmt = con.prepareStatement("select * from timetable where empid=?");
	pstmt.setString(1, empid);
	ResultSet rs = pstmt.executeQuery();
	
%> 
<center>
<table class="table" style="margin-top: 30px;">
<thead>
    <tr>
      <th>Sno</th>
      <th>Date</th>
      <th>Emp ID</th>
       <th>Present</th>
      </tr>
  </thead>
  <tbody>
  

<%
int i = 0;
	while(rs.next())
	{
	i++;
	%>
	<tr>
	<td><%=i %></td>
	<td><%=rs.getString("date")%></td>
	<td><%=rs.getString("empid")%></td>
	<td><%=rs.getString("present")%></td>
	</tr>
	<%}	
}
catch(Exception e)
{
	
	System.out.println(e);
	
	
}

 %> 
 </tbody>
 </table>
   </center>
  </body>
</html>