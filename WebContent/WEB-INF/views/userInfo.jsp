<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户基本信息</title>
</head>
<body>
  <form name="userInfo" action="${pageContext.request.contextPath}/user/updateUser" method="post">
	<table>	  
	  <tr>
	   <td>用户名：</td>
	   <td><input type="text" name="userName" readonly value="${requestScope.getuser.userName }"/></td>
	  </tr>
	  <tr>
	   <td>密码：</td>
	   <td><input type="password" name="passWord" value="${requestScope.getuser.passWord}"></td>
	  </tr>
	  <tr>
	   <td>ID：</td>
	   <td><input type="text" name="userId" value="${requestScope.getuser.userId }" readonly="readonly"/></td>
	  </tr>
	  <tr>
	    <td><input type="submit" value="修改"></td>
	    <td><a href="${pageContext.request.contextPath}/user/userlist">返回用户列表</a> <br></td>
	  </tr>	
	</table>
  </form>
</body>
</html>

