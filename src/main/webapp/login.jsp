<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.10.2020
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.10.2020
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

    <style>
        body{
            background-color: #B0C4DE;
            background-image: url("img/a.jpg");
        }
    </style>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<header>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>

                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Sign-up</a></li>
                    <li><a href="LogoutServlet" style="color: #F24638;">Logout</a></li>

            <li><a href="cart.jsp">Cart(<c:out value="${x}"/>)</a></li>
        </ul>
    </nav>
</header>

<div class="signup-header">
    <h2>Login to <mark>Q</mark></h2>
</div>

<form method="post" action="${pageContext.request.contextPath}/LoginServlet">

    <input type="hidden" name="page" value="login-form">
    <div class="signup-group">
        <label>Username</label>
        <input type="text" name="username" placeholder="Your Username" value="">
    </div>
    <div class="signup-group">
        <label>Password</label>
        <input type="password" name="password" placeholder="Enter password">
    </div>
    <div class="signup-group">
        <button type="submit" name="login" class="signup-btn">Log in</button>
    </div>
    <script>
        alert("Are you wanna sign-up now?");
    </script>   <%-- When user was registered show alert message--%>
</form>


</body>
</html>
