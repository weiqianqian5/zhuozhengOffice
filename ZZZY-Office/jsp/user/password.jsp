<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
	<head>
		<title>修改密码</title>

		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="this is my page">
		<meta http-equiv="content-type" content="text/html; charset=UTF-8">

		<!--<link rel="stylesheet" type="text/css" href="./styles.css">-->
		<script type="text/javascript">
	function KeyUp() {
		var password = document.getElementById("password");
		alert(password.value);
		var passwordConfirm = document.getElementById("passwordConfirm");
		alert(passwordConfirm.value);
		if (password.value == passwordConfirm.value){
			document.getElementById("errorMsg").innerHTML="<font color='green'>两次密码相同</font>";
            document.getElementById("sub").disabled = false;
           }
           else {
			alert("对不起，您2次输入的密码不一致");
	           document.getElementById("errorMsg").innerHTML="<font color='red'>两次密码不相同</font>";
	           document.getElementById("sub").disabled = true;
           }
		

	}
	function formCheck(){
		var password = document.getElementById("password");
		//alert(password.value);
		var passwordConfirm = document.getElementById("passwordConfirm");
		//alert(password.value);
		if (password.value != passwordConfirm.value) {
			alert("对不起，您2次输入的密码不一致");
			return false;
		}else{
			return true;
		}
	}
</script>
	</head>

	<body>
		<p style="color: red">
			${message }
		</p>
		<div align="center">
			<form name="form1" method="post"
				action="${path }/User/updatePassword" onsubmit="return formCheck() ">
				<table border="0" align="center">
					<tr>
						<td height="12">
							用户名：
						</td>
						<td height="12">
							${user.name}
						</td>
					</tr>
					<tr>
						<td height="12">
							请输入您的密码：
						</td>
						<td height="12">
							<input id="password" type="password" name="password"
								required="true" missingMessage="密码必须填写" />
							<span>(必填)</span>
						</td>
					</tr>
					<tr>
						<td height="12">
							请再次输入您的密码：
						</td>
						<td height="12">
							<input id="passwordConfirm" type="password"
								name="passwordConfirm" required="true" missingMessage="密码必须填写"
								onkeyup="KeyUp()" ;/>
							<span>(必填)</span>
						</td>
					</tr>


					<tr>
						<td>
							<div align="right">
								<input id="sub" type="submit" name="Submit" value="提交信息">
							</div>
						</td>
						<td>
							<input type="button" name="btn" value="返回上一页"
								onclick=history.go(-1);>
							<input type="reset" value="重新输入" />
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<span id="errorMsg"></span>
						</td>
					</tr>
				</table>
			</form>
		</div>
		<!---->
		<!--		<form action="${path }/User/updatePassword"-->
		<!--			onsubmit="validate_form(this)">-->
		<!--			用户名:${user.name} 新密码-->
		<!--			<input type="password" name="password" value=""-->
		<!--				onchange="checkPasswords()" />-->
		<!--			再次输入新密码-->
		<!--			<input type="password" name="password1" value=""-->
		<!--				onchange="checkPasswords()" />-->
		<!--			<input type="submit" value="修改密码" />-->
		<!--		</form>-->
		<br>
	</body>
</html>
