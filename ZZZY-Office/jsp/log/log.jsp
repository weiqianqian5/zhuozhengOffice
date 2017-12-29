<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

		<title>查看日志</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" href="${path }/inc/css.css" type="text/css" />
		<script type="text/javascript" src="${path }/jquery/jquery-1.7.2.js"></script>
		<script language="javascript" type="text/javascript"
			src="${path }/My97DatePicker/WdatePicker.js"></script>

		<script type="text/javascript">

	function ifAgree(id){
		$.ajax({
			 	type: "GET",
	             url: "${path }/Apply/agreeApplyGoods/"+id,
	             dataType: "text",
	            success: function(data){
	            alert(data);
             	
             },
				error:function(XmlHttpRequest,textStatus, errorThrown)
				  {
             		alert ("出错啦");
				  alert("保存失败;"+XmlHttpRequest.responseText);
				  }
	    });         
	}
	
</script>
	</head>

	<body style="text-align: center;">

		<div align="center">
			<h3>
				<c:if test="${operateStaus ==1}">待办事项
				</c:if>
				<c:if test="${operateStaus ==2}">已同意的事项
				</c:if>
				<c:if test="${operateStaus ==3}">已拒绝的事项
				</c:if>
			</h3>
		</div>
		<div align="center">
			<form id="queryCondition" action="${path }/Log/selectAllLogs"
				method="get">
				<table style="text-align: left;">
					<c:if test="${!(user.name eq  'admin' )}">
						<tr>
							<td>
								申请人:${user.name}
								<!--								<input type="text" name="operateuser" value="${user.name}"/>-->
							</td>
						</tr>
					</c:if>
					<c:if test="${user.name eq  'admin' }">

						<tr>
							<td height="12">
								申请人:
							</td>
							<td height="12">
								<select name="operateuser" id="operateuser">
									<option value="---选择申请人---">
										---选择申请人---
									</option>
									<c:if test="${not empty allUsers}">

										<c:forEach items="${allUsers}" var="users">
											<c:if
												test="${(users.name eq logSelectCondition.operateuser)}">
												<option value="${users.name}" selected="selected">
													${users.name}
												</option>
											</c:if>
											<c:if
												test="${!(users.name eq logSelectCondition.operateuser)}">
												<option value="${users.name}">
													${users.name}
												</option>
											</c:if>
										</c:forEach>
									</c:if>
								</select>
							</td>
						</tr>

					</c:if>
					<tr>
						<td height="12">
							申请类型:
						</td>
						<td height="12">
							<select name="operatetype" id="operatetype">

								<option value="---选择申请类型---">
									---选择申请类型---
								</option>
								<c:if test="${'领取' eq logSelectCondition.operatetype}">
									<option value="领取">
										领取
									</option>
								</c:if>
								<c:if test="${!('领取' eq logSelectCondition.operatetype)}">
									<option value="领取">
										领取
									</option>
								</c:if>
								<c:if test="${'归还' eq logSelectCondition.operatetype}">
									<option value="归还">
										归还
									</option>
								</c:if>
								<c:if test="${!('归还' eq logSelectCondition.operatetype)}">
									<option value="归还">
										归还
									</option>
								</c:if>
							</select>
						</td>
					</tr>
					<tr>

						<td height="12">
							申请物品名称:
						</td>
						<td height="12">
							<select name="operategoods" id="operategoods">

								<option value="---选择办公用品---">
									---选择办公用品---
								</option>
								<c:if test="${not empty allGoods}">

									<c:forEach items="${allGoods}" var="goods">
										<c:if
											test="${(goods.name eq logSelectCondition.operategoods)}">
											<option value="${goods.name}" selected="selected">
												${goods.name}
											</option>
										</c:if>
										<c:if
											test="${!(goods.name eq logSelectCondition.operategoods)}">
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

						<td height="12">
							申请时间:
						</td>
						<td height="12">
							<c:if test="${not empty logSelectCondition.operatetime}">
								<input type="text" name="operatetime" id="operatetime"
									value="${logSelectCondition.operatetime }"
									onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
							</c:if>
							<c:if test="${logSelectCondition.operatetime  == null}">
								<input type="text" name="operatetime" id="operatetime"
									onclick="WdatePicker({dateFmt:'yyyy-MM-dd'})" />
							</c:if>
							<img onclick="WdatePicker({el:'operatetime'})"
								src="${path }/My97DatePicker/skin/datePicker.gif" width="20"
								height="30">

						</td>
						<td height="12">
							<input type="hidden" name="operateStaus" value="${operateStaus}" />
						</td>
					</tr>
					<tr>
						<td height="12">
							<input type="submit" value="查询" />
						</td>
						<td height="12">
							<input type="button" value="清空" onclick=document.getElementById( 'queryCondition').reset();;
/>
						</td>
					</tr>
				</table>
			</form>
			<br>
		</div>
		<div id="content" align="center">
			<c:if test="${not empty page.list}">
				<table width="800" border=0 align=center cellpadding=2 cellspacing=1
				bordercolor="#799AE1" class=tableBorder>
					<tr align="center" bgcolor="#799AE1">
						<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
							Id
						</th>
						<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
							操作类型
						</th>
						<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
							申请人
						</th>
						<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
							申请用品名称
						</th>
						<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
							申请用品数量
						</th>
						<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
							申请日期
						</th>
						<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
							申请说明
						</th>
						<c:if test="${operateStaus ==1}">
							<th width="6%" align="center" class="txlHeaderBackgroundAlternate">
								操作
							</th>
						</c:if>

					</tr>
					<c:forEach items="${page.list}" var="log">
						<tr bgcolor="#DEE5FA">
							<td align="center" class="txlrow">
								${log.id}
							</td>
							<td align="center" class="txlrow">
								${log.operatetype}
							</td>
							<td align="center" class="txlrow">
								${log.operateuser}
							</td>
							<td align="center" class="txlrow">
								${log.operategoods}
							</td>
							<td align="center" class="txlrow">
								${log.operategoodsnum}
							</td>
							<td align="center" class="txlrow">
								<fmt:formatDate value="${log.operatetime}" pattern="yyyy-MM-dd" />
								<br>
							</td>
							<td align="center" class="txlrow">
								${log.operatememo}
							</td>
							<!-- 待办事项 可以有操作 .已经同意或拒绝的不能在操作了 -->
							<c:if test="${operateStaus ==1}">
								<!-- 如果是admin登录则有同意或者拒绝申请,如果申请人也是 admin则可以撤销自己的申请-->
								<c:if test="${user.name eq  'admin'}">
									<td>
										<input type="button" value="同意或拒绝申请" id="btn1"
											onclick="ifAgree('${log.id}')" />
										<c:if test="${log.operateuser eq 'admin'}">
											<a href="${path }/Apply/cancleApplyGoods/${log.id}">撤销申请</a>
										</c:if>
									</td>
								</c:if>

								<!-- 不是admin的用户,可以撤销自己的申请 -->
								<c:if test="${!(user.name eq  'admin') }">
									<td align="center" class="txlrow">
										<a href="${path }/Apply/cancleApplyGoods/${log.id}">撤销申请</a>
									</td>
								</c:if>
							</c:if>
						</tr>
					</c:forEach>
				</table>
				<div>
					<%@include file="/jsp/page.jsp"%>
				</div>
			</c:if>
			<c:if test="${empty page.list}">
				<p style="color: red">
					没有查询到数据
				</p>
			</c:if>
		</div>
	</body>
</html>
