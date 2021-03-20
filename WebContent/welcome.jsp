<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.1/css/bulma.min.css">
<body>
<%


String uname = (String)session.getAttribute("uname");
String name = (String)session.getAttribute("name");
String id = (String)session.getAttribute("empid");
String message = (String) request.getParameter("message");

if(uname == null){
	response.sendRedirect("loginpage.jsp");
}

%>
<% if (message != null) { %>
         <p> <%=message %></p>
      <% } else { %>
        
      <% } %>

  <div class="hero-head" style="margin-bottom: 10px;">
            <nav class="navbar">
                <div class="container">
                    <div class="navbar-brand">
                        <a class="navbar-item" href="#">
                            Welcome <%=name %> !!
                        </a>
                        <span class="navbar-burger burger" data-target="navbarMenu">
                            <span></span>
                            <span></span>
                            <span></span>
                        </span>
                    </div>
                    <div id="navbarMenu" class="navbar-menu">
                        <div class="navbar-end">
                            <div class="tabs is-right">
                                <ul>
                                    <li class="is-active"><a href="logout.jsp">Logout <%=uname %></a></li>
                                    </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
<div class="card" style="width: 500px; margin-left: 300px;">
  <div class="card-content">
    <div class="media">
      <div class="media-left">
        <figure class="image is-48x48">
          <img src="https://tleliteracy.com/wp-content/uploads/2017/02/default-avatar.png" alt="Placeholder image">
        </figure>
      </div>
      <div class="media-content">
        <p class="title is-4"><%=name %></p>
        <p class="subtitle is-6">@<%=uname %></p>
      </div>
    </div>

    <div class="content">
    <li>
    Email ID: <%=uname %>
    </li>
    <li>
    ID Number: <%=id %>
    </li>
     <a class="button is-primary is-light" href="attendanceform.jsp">Add Attendance</a>
     <a class="button is-link is-light" href="checkattendance.jsp">Check Attendance</a>
    </div>
  </div>
</div>
 <script>
(function() {
    var burger = document.querySelector('.burger');
    var menu = document.querySelector('#'+burger.dataset.target);
    burger.addEventListener('click', function() {
        burger.classList.toggle('is-active');
        menu.classList.toggle('is-active');
    });
})();


</script>
</body>
</html>