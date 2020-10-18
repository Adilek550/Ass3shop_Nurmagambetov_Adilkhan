<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.10.2020
  Time: 13:18
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<c:set var="x" value="0"></c:set>
<c:forEach items="${cartlist }" var="i">
    <c:set var="x" value="${x+1 }"></c:set>
</c:forEach>

<header>
    <h1>Q</h1>
    <nav>
        <ul>
            <li><a href="index.jsp">Home</a></li>
            <c:choose>
                <c:when test="${session == null}">
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="register.jsp">Register</a></li>
                </c:when>
                <c:when test="${session != null}">
                    <li><a href="LogoutServlet" style="color: #F24638;">Logout</a></li>
                    <li><a href="MyAccountServlet">My Account(<c:out value="${username }"></c:out>)</a></li>
                </c:when>
            </c:choose>
            <li><a href="cart.jsp">Cart(<c:out value="${x}"/>)</a></li>
        </ul>
    </nav>
</header>

<div class="tiazon-content">
    <div class="container">
        <div class="row">
            <div class="col-md-4"><!-- left -->
                <div class="list-group"><!-- products -->

                    <a href="languages.jsp" class="list-group-item">Languages</a>
                    <a href="BooksServlet" class="list-group-item">Books</a>
                    <a href="clothing.jsp" class="list-group-item">Clothing</a>
                    <a href="home.jsp" class="list-group-item">Home</a>
                </div>
            </div><!-- left -->

            <div class="col-md-8"><!-- right -->

                <c:forEach items="${list }" var="product">

                    <c:if test="${product.getFeatured() == 'yes' }">

                        <div class="col-md-4">
                            <img src="${product.getImage() }" class="img-responsive" ><br>
                            <div class="text-center"><a style="color: black;"><c:out value="${product.getName() }"></c:out></a></div>
                              </div>

                    </c:if>


                </c:forEach>

            </div>
        </div>
    </div>
</div>

</body>
</html>