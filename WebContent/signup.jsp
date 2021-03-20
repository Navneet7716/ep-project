<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Sign Up</title>
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
   <style type="text/css">
   * {
  font-family: 'Nunito Sans', sans-serif;
}

:root {
  --shadowDark: #D9DDE6;
  --background: #E4E9F2;
  --shadowLight: #EFF5FE;
}

body {
  background: var(--background);
}

.hero-body {
  justify-content: center;
}

.login {
  border-radius: 25px;
  padding: 1.5rem;
  box-shadow: 8px 8px 15px var(--shadowDark), -8px -8px 15px var(--shadowLight);
}

input {
  background: var(--shadowDark) !important;
}

a {
  font-weight: 600;
}

.login-home {
	
	font-size: 40px;
	margin: 10px;

}
   
   </style>
</head>
<body>

<%


String uname = (String)session.getAttribute("uname");

if(uname != null){
	response.sendRedirect("welcome.jsp");
}

%>
<div class="hero-head">
            <nav class="navbar">
                <div class="container">
                    <div class="navbar-brand">
                        <a class="navbar-item" href="../">
                            Employee Attendance Management System 
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
                                    <li ><a href="index.jsp">Home</a></li>
                                    <li><a href="loginpage.jsp">Login</a></li>
                                    <li class="is-active"><a href="signup.jsp">Sign Up</a></li>
                                    <li><a href="about.jsp">About Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    <section class="hero is-fullheight">
      <div class="hero-body has-text-centered">
        <div class="login">
          <h1 class="login-home">Sign Up</h1>
          <form action="Registration.jsp" method="POST">
            <div class="field">
            <label>User Name: </label>
              <div class="control">
                <input class="input is-medium is-rounded" name="username" type="email" placeholder="hello@example.com" autocomplete="username" required />
              </div>
            </div>
             <div class="field">
             <label>Name: </label>
              <div class="control">
                <input class="input is-medium is-rounded" name="name"type="text" autocomplete="name" required />
              </div>
            </div>
             <div class="field">
             <label>ID Number:</label>
              <div class="control">
                <input class="input is-medium is-rounded" name="empid" type="text"  autocomplete="id" required />
              </div>
            </div>
            <div class="field">
            <label>Password :</label>
              <div class="control">
                <input class="input is-medium is-rounded" name="password" type="password" placeholder="**********" autocomplete="current-password" required />
              </div>
            </div>
            <br />
            <button class="button is-block is-fullwidth is-primary is-medium is-rounded" type="submit">
              Sign Up
            </button>
          </form>
          <br>
          <nav class="level">
            <div class="level-item has-text-centered">
              <div>
                <a href="loginpage.jsp">Already have an Account ?</a>
              </div>
            </div>
          </nav>
        </div>
      </div>
    </section>
      <script>
(function() {
    var burger = document.querySelector('.burger');
    var menu = document.querySelector('#'+burger.dataset.target);
    burger.addEventListener('click', function() {
        burger.classList.toggle('is-active');
        menu.classList.toggle('is-active');
    });
})();
if(uname) {
	window.location("/welcome.jsp");
}
</script>

</body>
</html>