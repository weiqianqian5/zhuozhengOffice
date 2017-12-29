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
<html>
	<head>
		<base href="<%=basePath%>">

		<title>商品管理</title>
		<meta charset="UTF-8">
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet"
			href="${path}/Modal_normalize/css/normalize.min.css">
		<link rel="stylesheet" href="${path}/Modal_normalize/css/style.css">
		<link rel="stylesheet" href="${path }/inc/css.css" type="text/css" />
		<script type="text/javascript" src="${path }/jquery/jquery-1.7.2.js"></script>
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">
	function deleteGooods(goodsName) {
		var goodsName = goodsName;
		if (confirm('确定要删除   '+goodsName+'   吗?')) {
			alert("您确定要删除");
			return true;
		} else {
			alert("取消删除");
			return false;
		}

	}
	
	function openWin(src, width, height, showScroll) {
		alert(src);
		window.open(src,"","dialogWidth=200px;dialogHeight=100px");
		//window.showModalDialog (src,"","location:No;status:No;help:No;dialogWidth:"+width+";dialogHeight:"+height+";scroll:"+showScroll+";");   
	}
</script>

	</head>

	<body>

		<form
			action="${path }/Goods/selectAll?goodsName=null&goodsCategory=null"
			method="get">
			<table border="0" align="center">
				<tr>
					<td height="20">
						办公物品名称:
					</td>
					<td height="20">
						<select name="goodsName" id="goodsName">

							<option value="---选择办公用品---">
								---选择办公用品---
							</option>
							<c:if test="${not empty allGoods}">

								<c:forEach items="${allGoods}" var="goods">
									<c:if test="${(goods.name eq goodsName)}">
										<option value="${goods.name}" selected="selected">
											${goods.name}
										</option>
									</c:if>
									<c:if test="${!(goods.name eq goodsName)}">
										<option value="${goods.name}">
											${goods.name}
										</option>
									</c:if>
								</c:forEach>
							</c:if>
						</select>
					</td>
				</tr>
				<tr>
					<td height="20">
						办公物品类型:
					</td>
					<td height="20">
						<select name="goodsCategory" id="goodsCategory">
							<option value="---选择办公用品类型---">
								---选择办公用品类型---
							</option>
							<c:if test="${'办公用品' eq goodsCategory}">
								<option value="办公用品" selected="selected">
									办公用品
								</option>
							</c:if>
							<c:if test="${!('办公用品' eq goodsCategory)}">
								<option value="办公用品">
									办公用品
								</option>
							</c:if>
							<c:if test="${'耗品' eq goodsCategory}">
								<option value="耗品" selected="selected">
									耗品
								</option>
							</c:if>
							<c:if test="${!('耗品' eq goodsCategory)}">
								<option value="耗品">
									耗品
								</option>
							</c:if>
						</select>

					</td>
				</tr>

				<tr>
					<td height="20">
						<input type="submit" value="查询" />
					</td>
					<td height="20">
						<input type="button" value="清空" onclick=document.getElementById( 'queryCondition').reset();;
/>
					</td>
				</tr>
			</table>
		</form>
		<br>
		<c:if test="${not empty page.list}">
			<table width="800" border=0 align=center cellpadding=2 cellspacing=1
				bordercolor="#799AE1" class=tableBorder>
				<tr>
					<td>
						<a href="${path }/Goods/selectGoods">添加</a>
					</td>
				</tr>
				<tr>
					<th align=center colspan=16 style="height: 23px">
						办公用品列表
					</th>
				</tr>
				<tr bgcolor="#DEE5FA">
					<td colspan="16" align="center" class=txlrow>
						&nbsp;
					</td>
				</tr>
				<tr align="center" bgcolor="#799AE1">
					<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
						Id
					</th>
					<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
						名称
					</th>
					<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
						类型
					</th>
					<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
						使用中的数量
					</th>
					<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
						库存数量
					</th>
					<th width="8%" align="center" class="txlHeaderBackgroundAlternate">
						消耗或者损坏的数量
					</th>
					<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
						总数量
					</th>
					<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
						操作
					</th>
				</tr>
				<c:forEach items="${page.list}" var="goods">
					<tr bgcolor="#DEE5FA">
						<td align="center" class="txlrow">
							${goods.id}
						</td>
						<td align="center" class="txlrow">
							${goods.name}
						</td>
						<td align="center" class="txlrow">
							${goods.category}
						</td>
						<td align="center" class="txlrow">
							${goods.inusenum}
						</td>
						<td align="center" class="txlrow">
							${goods.stocknum}
						</td>
						<td align="center" class="txlrow">
							${goods.vastagenum}
						</td>
						<td align="center" class="txlrow">
							${goods.total}
						</td>
						<td align="center" class="txlrow">
							<a
								onclick="openWin('${path }/jsp/good/addGoodsStock.html?goodsId=${goods.id}', '500px', '400px', 'no')"
								href="#">添加库存</a>
							<a href="${path }/Goods/selectGoods/?id=${goods.id}">修改</a>
							<a href="${path }/Goods/deleteGoods/${goods.id}"
								onclick="return deleteGooods('${goods.name}')">删除</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<div align="center">
				<%@include file="/jsp/page.jsp"%>
			</div>
		</c:if>
		<c:if test="${empty page.list}">
			<p style="color: red">
				没有查询到数据
			</p>
		</c:if>
	</body>
</html>
