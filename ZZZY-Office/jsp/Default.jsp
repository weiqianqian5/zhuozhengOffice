<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>卓正办公管理系统</title>
	</head>
	<frameset rows="*" cols="180,*" frameborder="no" border="0"
		framespacing="0">
		<frame src="${path}/jsp/left.jsp" name="leftFrame" scrolling="auto"
			noresize="noresize" id="leftFrame" title="leftFrame" />
		<frameset rows="50,*" frameborder="no" border="0" framespacing="0">
			<frame src="${path}/jsp/head.jsp" name="topFrame" scrolling="no"
				noresize="noresize" id="topFrame" title="topFrame" />
			<frame src="${path}/jsp/list.jsp" name="mainFrame" id="mainFrame"
				title="mainFrame" />
		</frameset>
	</frameset>
	<noframes>
		<body>
			<p>
				你的浏览器不支持框架，请升级你的浏览器
			</p>
		</body>
	</noframes>
</html>
