<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>

<jsp:include page="header.jsp" />
</head>
<body>
	<div>
	   <a href="${pageContext.request.contextPath}/user/regUser">用户注册</a><br/><br/>
	 <a href="${pageContext.request.contextPath}/user/login">用户登录</a> <br><br>
	   <a href="${pageContext.request.contextPath}/user/userlist">用户列表</a> 
	</div>
	
	<!-- 菜单栏 -->
	<div id="wrapper">
	
	</div>
	<!-- 广告栏 -->
	<div>
	</div>
	<!--  -->
	
	
</body>
</html>
