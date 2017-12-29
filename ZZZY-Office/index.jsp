<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<html>
	<head>
		<title>登录页面</title>

		<link rel="stylesheet" href="${path}/css/style.css">
		<script type="text/javascript">
	function bt_submit_onclick() {
		var result = document.getElementById("username").value;
		var password = document.getElementById("password").value;
		document.getElementById("form1").submit();
	}
</script>
	</head>
	<body>
		<main>
		<!-- BEGIN LOGO -->
		<div align="center">
			<a href="http://www.zhuozhengsoft.com/index.html"> <img
					src="${path }/images/logo.png" alt="logo" /> </a>
			<br>
			<h2 style="color: white;">
				卓正志远
			</h2>
			<!-- END LOGO -->
			<br>
			<form id="form1" class="form" action="${path }/login" method="post">

				<div class="form__cover">
				</div>
				<div class="form__loader">
					<div class="spinner active">
						<svg class="spinner__circular" viewBox="25 25 50 50">
						<circle class="spinner__path" cx="50" cy="50" r="20" fill="none"
							stroke-width="4" stroke-miterlimit="10"></circle>
						</svg>
					</div>
				</div>
				<div>
					<h1>
						Login
					</h1>
					<div>
						${message }
					</div>
					<div class="styled-input">
						<input type="text" class="styled-input__input" name="username"
							id="username" value="wxx"  required="required">
						<div class="styled-input__placeholder">
							<span class="styled-input__placeholder-text">Username</span>
						</div>
						<div class="styled-input__circle"></div>
					</div>
					<div class="styled-input">
						<input type="password" class="styled-input__input" name="password"
							id="password" value="1"  required="required">
						<div class="styled-input__placeholder">
							<span class="styled-input__placeholder-text">Password</span>
						</div>
						<div class="styled-input__circle"></div>
					</div>
					<!--				<input type="submit" value="登录" />-->
					<button type="button" class="styled-button"
						onclick=
	bt_submit_onclick();
>

						<span class="styled-button__real-text-holder"> <span
							class="styled-button__real-text">Submit</span> <span
							class="styled-button__moving-block face"> <span
								class="styled-button__text-holder"> <span
									class="styled-button__text">Submit</span> </span> </span><span
							class="styled-button__moving-block back"> <span
								class="styled-button__text-holder"> <span
									class="styled-button__text">Submit</span> </span> </span> </span>
					</button>
				</div>
			</form>
			<div align="center">
				<p>
					<a href="http://www.zhuozhengsoft.com/index.html target="_blank" style="color: white;">
						版权所有 &copy;2013-2017 北京卓正志远软件有限公司</a>
				</p>
			</div>
			</main>

			<script src="js/index.js"></script>
	</body>
</html>
