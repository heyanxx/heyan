<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="/header.jsp" />
<script>
$(function(){
	$('input[name="userName"]').val(window.localStorage.getItem('userName'));
	//$('input[name="passWord"]').val(window.localStorage.getItem('passWord'));
	$('#zhuce').click(function(){
		if($('input[name="userId"]').val()=='' || $('input[name="userId"]').val()==null){
			$('input[name="userId"]').css("background","red");
			alert('需要先获取用户ID');
			return false;
		}
	});
	
	$('#getId').click(function(){
		window.localStorage.setItem('userName',$('input[name="userName"]').val());
		//window.localStorage.setItem('passWord',$('input[name="passWord"]').val());
		self.location='${pageContext.request.contextPath}/user/getId';
	});
	
});
</script>

<title>用户注册</title>
</head>
<body>
    <h3>用户注册</h3>    <br>
    <form method="post" action="${pageContext.request.contextPath}/user/addUser">
       <table>
            <tr>
               <td><label>用户ID：</label></td>
               <td><input type=text name="userId" readonly="readonly" value="${getIdResult}" required="required"></td>
               <td><button id="getId"type="button" class="btn btn-success"  >获取用户专属ID</button></td>
           </tr>
           <tr>
               <td><label>登录名：</label></td>
               <td><input type="text" name="userName" required="required" value="${userName}"></td>
           </tr>
           <tr>
               <td><label>密码：</label></td>
               <td><input type="password" name="passWord" required="required" value="${passWord}"></td>
           </tr>
           <tr>
               <td><input id="zhuce" type="submit" value="注册"></td>
           </tr>
       </table>
    </form>
</body>
</html>
