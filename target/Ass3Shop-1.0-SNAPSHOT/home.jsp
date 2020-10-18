<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 17.10.2020
  Time: 21:30
  To change this template use File | Settings | File Templates.
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
    <title>Homes</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

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


                    <div class="col-md-4">
                        <img src="${product.getImage() }" class="img-responsive" ><br>
                        <div class="text-center"><a style="color: black;"><c:out value="${product.getName() }"></c:out></a></div>
                    </div>


                </c:forEach>

            </div>
        </div>
        <form method="get" action="${pageContext.request.contextPath}/HomeServlet">
        <c:set var="homes" value='${requestScope["home"]}'/>
        <c:forEach items="${homes}" var="home">
            <div class="p-12 md:w-1/3 flex flex-col items-start">
                <img alt="" style="width: 25%;" src="${"img/home1.jpg"}">
                <h2 class="font-medium title-font mt-4 text-gray-900 text-lg">${"Home"}</h2>
                <div class="w-12 h-1 bg-pink-500 rounded mt-2 mb-4"></div>
                <p class="text-base text-hotpink-600">Price:  <span class="text-base text-gray-700">${500000}</span></p>
                <a class="text-white bg-pink-500 border-0 py-2 px-8 focus:outline-none hover:bg-pink-600 rounded text-lg" href="<%=request.getContextPath()%>/cart.jsp?id=${home.id}&img=${home.img}&name=${home.name}&price=${home.price}">Add to Shopping Cart</a>
            </div>
        </c:forEach>
            <c:set var="homes" value='${requestScope["home"]}'/>
            <c:forEach items="${homes}" var="home">
            <div class="p-12 md:w-1/3 flex flex-col items-start">
                <img alt="" style="width: 25%;" src="${"img/home2.jpg"}">
                <h2 class="font-medium title-font mt-4 text-gray-900 text-lg">${"Rich Home"}</h2>
                <div class="w-12 h-1 bg-pink-500 rounded mt-2 mb-4"></div>
                <p class="text-base text-hotpink-600">Price:  <span class="text-base text-gray-700">${9000000}</span></p>
                <a class="text-white bg-pink-500 border-0 py-2 px-8 focus:outline-none hover:bg-pink-600 rounded text-lg" href="<%=request.getContextPath()%>/cart.jsp?id=${home.id}&img=${home.img}&name=${home.name}&price=${home.price}">Add to Shopping Cart</a>
            </div>
            </c:forEach>
            <c:set var="homes" value='${requestScope["home"]}'/>
            <c:forEach items="${homes}" var="home">
            <div class="p-12 md:w-1/3 flex flex-col items-start">
                <img alt="" style="width: 25%;" src="${"img/home3.jpg"}">
                <h2 class="font-medium title-font mt-4 text-gray-900 text-lg">${"Richer Home"}</h2>
                <div class="w-12 h-1 bg-pink-500 rounded mt-2 mb-4"></div>
                <p class="text-base text-hotpink-600">Price:  <span class="text-base text-gray-700">${9900000}</span></p>
                <a class="text-white bg-pink-500 border-0 py-2 px-8 focus:outline-none hover:bg-pink-600 rounded text-lg" href="<%=request.getContextPath()%>/cart.jsp?id=${home.id}&img=${home.img}&name=${home.name}&price=${home.price}">Add to Shopping Cart</a>
            </div>
            </c:forEach>
    </div>
</div>
</body>
</html>
