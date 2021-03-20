<%@ page import="java.sql.* , java.util.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>


<%
try
{
	
	Class.forName("com.mysql.jdbc.Driver");
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ep","root","password");
	
	System.out.println("Connection Success");
	
	String empid = (String) session.getAttribute("empid");
	String date = request.getParameter("date");
	System.out.println(date);
	
	PreparedStatement pstmt = con.prepareStatement("insert into timetable(empid,date,present) values(?,?,?)");
	
	pstmt.setString(1, empid);
	pstmt.setString(2,date);
	pstmt.setBoolean(3, true);
	
	int n = pstmt.executeUpdate();
	
	if(n > 0) {
		response.sendRedirect("welcome.jsp");
	}
	else {
		out.println("500 Error");
	}
	
	
	
	
	
	
}

catch(Exception e)
{
	
	System.out.println(e);
	
	
}


%>