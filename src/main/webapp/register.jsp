
<%--
  Created by IntelliJ IDEA.
  User: 82530
  Date: 17.10.2020
  Time: 14:27
  To change this template use File | Settings | File Templates.

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

                <jsp:useBean id="session" scope="request" type="User"/>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <style>
        body{
            background-color: #B0C4DE;
            background-image: url("img/a.jpg");
        }
    </style>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Register</title>
</head>
<body>
<header>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <c:choose>
                <c:when test="${session == null}">
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Sign-up</a></li>
                </c:when>
                <c:when test="${session != null}">
                    <li><a href="LogoutServlet" style="color: #F24638;">Logout</a></li>
                    <li><a href="MyAccountServlet">My Account(<c:out value="${username }"></c:out>)</a></li><%--jstl--%>
                </c:when>
            </c:choose>
            <li><a href="cart.jsp">Cart(<c:out value="${x}"/>)</a></li>
        </ul>
    </nav>
</header>
<form  method="post" action="${pageContext.request.contextPath}/Servlet" >
    <input type="hidden" name="page" value="login-form">
    <div class="signup-header">
        <h2>Sign-Up to <mark>Q</mark></h2>
    </div>
    <div class="signup-group">
    <label>Email</label>
    <input  type="text" name="email">
    <label>Phone</label>
    <input phone type="text" name="phone">
    <label>Username</label>
    <input username type="text" name="username">
    <label>Password</label>
    <input password type="password" name="password">
        <input type="submit" name="submit" placeholder="Submit" value="Submit">
    </div>
</form>
</body>
</html>
