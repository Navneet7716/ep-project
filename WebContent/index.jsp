<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home Page</title>
    <link rel="shortcut icon" href="../images/fav_icon.png" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <!-- Bulma Version 0.9.0-->
    <link rel="stylesheet" href="https://unpkg.com/bulma@0.9.0/css/bulma.min.css" />
    <style type="text/css">
        html,
        body {
            font-family: 'Open Sans';
        }

        img {
            padding: 5px;
            border: 1px solid #ccc;
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
    <section class="hero is-fullheight is-default is-bold">
        <div class="hero-head">
            <nav class="navbar">
                <div class="container">
                    <div class="navbar-brand">
                        <a class="navbar-item" href="#">
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
                                    <li class="is-active"><a>Home</a></li>
                                    <li><a href="loginpage.jsp">Login</a></li>
                                    <li><a href="signup.jsp">Sign Up</a></li>
                                    <li><a href="about.jsp">About Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
        <div class="hero-body">
            <div class="container has-text-centered">
                <div class="columns is-vcentered">
                    <div class="column is-5">
                        <figure class="image is-4by3">
                            <img src="https://images.unsplash.com/photo-1606857521015-7f9fcf423740?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80" alt="Description">
                        </figure>
                    </div>
                    <div class="column is-6 is-offset-1">
                        <h1 class="title is-2">
                           Employee Attendance Management System 
                        </h1>
                        <h2 class="subtitle is-4">
                           
                        </h2>
                        <br>
                        <p class="has-text-centered">
                            <a class="button is-medium is-info is-outlined">
                                Learn more
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

       <!--  <div class="hero-foot">
            <div class="container">
                <div class="tabs is-centered">
                    <ul>
                        <li><a>And this is the bottom</a></li>
                    </ul>
                </div>
            </div>
        </div> -->
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




