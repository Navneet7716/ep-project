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
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	int empid = Integer.parseInt(request.getParameter("empid"));
	
	PreparedStatement pstmt = con.prepareStatement("insert into registeration(empid, username, password, name) values (?,?,?,?)");
	pstmt.setInt(1, empid);
	pstmt.setString(2,username);
	pstmt.setString(3, password);
	pstmt.setString(4, name);
	
	
	
	int n = pstmt.executeUpdate();
	
	if(n > 0) {
		response.sendRedirect("loginpage.jsp");
	}
	else {
		out.println("Registeartion Failed Due to some reason!!");
	}
	
}

catch(Exception e)
{
	
	System.out.println(e);
	
	
}


%>