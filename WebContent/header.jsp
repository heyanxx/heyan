<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
  <script type="text/javascript" src=" https://code.jquery.com/jquery-3.6.0.js"></script>

</head>
<body>
<!-- Header -->
					<header id="header">
						<h1><a href="${pageContext.request.contextPath}/index.jsp">クラッカー KAWAGUCHI</a></h1>
						<nav class="links">
							<ul>
								<li><a href="#">${empty sessionScope.user.userName?'用户中心':sessionScope.user.userName}</a></li>
								<li><a href="#">商品一览</a></li>
								<li><a href="#">各种工具</a></li>
								<li><a href="#">快捷充值</a></li>
								<li><a href="${pageContext.request.contextPath}/about">联系我们</a></li>
							</ul>
						</nav>
						<nav class="main">
							<ul>
								<li class="search">
									<a class="fa-search" href="#search">Search</a>
									<form id="search" method="get" action="#">
										<input type="text" name="query" placeholder="Search" />
									</form>
								</li>
								<li class="menu">
									<a class="fa-bars" href="#menu">Menu</a>
								</li>
							</ul>
						</nav>
					</header>
</body>
</html>