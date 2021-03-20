<%@page import="java.sql.ResultSet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
    <title>Add Attendance</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
  </head>
  <body>
  <%


String uname = (String)session.getAttribute("uname");
String name = (String)session.getAttribute("name");
String id = (String)session.getAttribute("empid");

if(uname == null){
	response.sendRedirect("loginpage.jsp");

}


try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep","root","password");
	
	System.out.println("Connection Success");
	
	String empid = (String) session.getAttribute("empid");
	Date date = new Date();
	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	String todaydate = (String)formatter.format(date);
	

	PreparedStatement pstmt = con.prepareStatement("select present from timetable where empid=? and date=?");
	
	pstmt.setString(1, empid);
	pstmt.setString(2, todaydate);
	
	ResultSet rs = pstmt.executeQuery();
	
	if (rs.next() == true) {
		response.sendRedirect("welcome.jsp");
		request.setAttribute("message", "Attendance Already Added");
	}
	
	
	
}

catch(Exception e)
{
	
	System.out.println(e);
	
	
}

%>
  
    <div class="container">
    
      <div class="card" style="padding: 20px;">
        <h1 class="title">
       Add attendance
      </h1>`
     <form action="submitattendance.jsp" method="POST">
     	<input type="date" name="date">
     <input type="submit" class="button is-link is-light" onclick="submitted()"/>
     </form>
     </div>
    </div>
    <script>
    function submitted() {
    	alert("Attendance Added!");
    }
    </script>
  </body>
</html>