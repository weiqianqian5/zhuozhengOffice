<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'edit.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<script type="text/javascript">
	function gradeChange() {
		var objS = document.getElementById("selectGoods");
		var text = objS.options[objS.selectedIndex].text;
		alert(text);
	}
</script>

	</head>

	<body>
		<p style="color: red">
			${message }
		</p>
		<br>
		<c:if test="${empty goods}">
			<h1 align="center">
				添加办公用品
			</h1>
		</c:if>
		<c:if test="${not empty goods}">
			<h1 align="center">
				修改办公用品
			</h1>
		</c:if>
		<form action="${path }/Goods/updateGoods" method="post">
			<table border="0" align="center">
				<tr>
					<td height="12">
						名称：
					</td>
					<td height="12">
						<input type="text" id="name" name="name" value="${goods.name}"
							required="required" />
					</td>
				</tr>
				<tr>
					<td height="12">
						类型：
					</td>
					<td height="12">
						<c:if test="${not empty goods}">
							${goods.category}
						</c:if>
						<c:if test="${empty goods}">
							<select name="selectGoods" id="selectGoods"
								onchange="gradeChange()">
								<option value="--请选择办公用品类型--">
									--请选择办公用品类型--
								</option>
								<option value="办公用品">
									办公用品
								</option>
								<option value="耗材">
									耗材
								</option>
							</select>
						</c:if>
					</td>
				</tr>
				<!--			<input type="text" id="category" name="category"-->
				<!--				value="${goods.category}" />  -->
				<tr>
					<td height="12">
						使用中的数量：
					</td>
					<td height="12">
						<input type="text" id="inusenum" name="inusenum"
							value="${goods.inusenum}" required="required" />
					</td>
				</tr>
				<tr>
					<td height="12">
						库存数量：
					</td>
					<td height="12">
						<input type="text" id="stocknum" name="stocknum"
							value="${goods.stocknum}" required="required" />
					</td>
				</tr>
				<tr>
					<td height="12">
						消耗或者损坏的数量：
					</td>
					<td height="12">
						<input type="text" id="vastagenum" name="vastagenum"
							value="${goods.vastagenum}" required="required" />
					</td>
				</tr>
				<tr>
					<td height="12">
						总数量：
					</td>
					<td height="12">
						<input type="text" id="total" name="total" value="${goods.total}"
							required="required" />
					</td>
				</tr>
				<tr>
					<td height="12">
						id:
					</td>
					<td height="12">
						<input type="text" name="id" id="id" value="${goods.id}">
					</td>
				</tr>
				<tr>
					<td height="12">
						<input type="submit" value="提交" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
