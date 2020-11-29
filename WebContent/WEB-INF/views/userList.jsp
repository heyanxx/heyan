<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表 here</title>
</head>
<body>
   <table>
      <c:forEach var="user"   items="${requestScope.userList}">
        <tr>
          <td><a href="${pageContext.request.contextPath}/user/getUserInfo?userName=${user.userName}">
                ${user.userName}</a></td>
          <td>${user.name}</td>
        </tr>                         
      </c:forEach>
    </table>
    <br>
    <a href="${pageContext.request.contextPath}">返回首页</a>
</body>

</html>