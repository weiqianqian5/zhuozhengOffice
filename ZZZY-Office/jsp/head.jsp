<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<link rel="stylesheet" href="${path }/inc/css.css" type="text/css">

		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
	</HEAD>
	<BODY bgColor=#d6dff7 leftMargin=0 topMargin=0 marginwidth="0"
		marginheight="0">
		<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
			<TBODY>
				<TR>

					<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
						vAlign=center width="43%" height=23>
						<h3 style="color: blue;">
							&nbsp; &nbsp; &nbsp; &nbsp;欢迎 ${user.name } 进入卓正办公管理系统
						</h3>
					</TD>
					<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
						vAlign=center width="21%">
						&nbsp;
					</TD>
					<TD class=txlHeaderBackgroundAlternate id=TableTitleLink
						vAlign=center align=right width="36%">
						<A href="exit.asp" target=_parent><B>退出</B> </A> &nbsp; &nbsp;
						&nbsp; &nbsp;
					</TD>

				</TR>
			</TBODY>
		</TABLE>
	</BODY>
</HTML>
