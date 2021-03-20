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
	
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	PreparedStatement pstmt = con.prepareStatement("select * from registeration where username=? and password=? ");
	pstmt.setString(1, username);
	pstmt.setString(2,password);	
	ResultSet rs = pstmt.executeQuery();
	if(rs.next())
	{
		session.setAttribute("uname",rs.getString(4));
		session.setAttribute("name",rs.getString(3));
		session.setAttribute("empid", rs.getString(2));
		
		response.sendRedirect("welcome.jsp");
	}
	
	else {
		out.println("Login Failed");
	}
			
	
	
	
}

catch(Exception e)
{
	
	System.out.println(e);
	
	
}


%>