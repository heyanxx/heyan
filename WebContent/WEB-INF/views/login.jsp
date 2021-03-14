<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/header.jsp" />
<title>登录页面</title> 
</head>
<body>
<div style="text-align:center">
  <h3>用户登录</h3>  <br>
  <form name="form1" method="post" action="${pageContext.request.contextPath}/user/validateUser">
    <table style="width:360px;margin:auto">
        <tr>
            <td><label>用户名：</label></td>
            <td><input type="text" name="userName" style="width:360px;" required="required"></td>
            <form:errors path="userName" cssClass="error" />
        </tr>
        <tr>
            <td><label>密码：</label></td>
            <td><input type="password" name="passWord"style="width:360px;"required="required"></td>
            <form:errors path="userName" cssClass="error" />
        </tr>        
        <tr>
            <td><input id="submit" type="submit" value="登录"></td>
			<td><a href="${pageContext.request.contextPath}">返回首页</a></td>            
        </tr>
    </table>
  </form>
  </div>
</body>
</html>
