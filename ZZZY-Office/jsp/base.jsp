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
		<base href="<%=basePath%>">

		<title>My JSP 'base.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<!-- BEGIN CORE PLUGINS -->


		<script src="${path}/js/jquery.min.js" type="text/javascript"></script>
		<script src="${path}/js/bootstrap.min.js" type="text/javascript"></script>
		<script src="${path}/js/js.cookie.min.js" type="text/javascript"></script>
		<script src="${path}/js/jquery.slimscroll.min.js"
			type="text/javascript"></script>
		<script src="${path}/js/jquery.blockui.min.js" type="text/javascript"></script>
		<script src="${path}/js/bootstrap-switch.min.js"
			type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<!--
        
         <!--begin 弹出框提醒 -->
		<script src="${path}/js/alert/public.js" type="text/javascript"></script>
		<script src="${path}/js/alert/bootstrap-modalmanager.js"
			type="text/javascript"></script>
		<script src="${path}/js/alert/bootstrap-modal.js"
			type="text/javascript"></script>
		<script src="${path}/js/alert/ui-extended-modals.min.js"
			type="text/javascript"></script>
		<script src="${path}/js/alert/sweetalert.min.js"
			type="text/javascript"></script>
		<script src="${path}/js/alert/ui-sweetalert.min.js"
			type="text/javascript"></script>
		<!--end 弹出框提醒 -->

		<!-- BEGIN PAGE LEVEL SCRIPTS -->
		<script src="${path}/js/components-bootstrap-switch.min.js"
			type="text/javascript"></script>
		<!-- END PAGE LEVEL SCRIPTS -->

		<!-- BEGIN THEME GLOBAL SCRIPTS -->
		<script src="${path}/js/app.min.js" type="text/javascript"></script>
		<!-- END THEME GLOBAL SCRIPTS -->
		<!-- BEGIN THEME LAYOUT SCRIPTS -->
		<script src="${path}/js/layout.min.js" type="text/javascript"></script>
		<script src="${path}/js/demo.min.js" type="text/javascript"></script>
		<script src="${path}/js/quick-sidebar.min.js" type="text/javascript"></script>
		<script src="${path}/js/quick-nav.min.js" type="text/javascript"></script>
		<!-- END THEME LAYOUT SCRIPTS -->
	</body>
</html>
