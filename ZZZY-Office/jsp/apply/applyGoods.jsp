<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>申请页面</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<script language="javascript" type="text/javascript"
			src="${path }/My97DatePicker/WdatePicker.js"></script>

		<script type="text/javascript">
		 
			function ifnum(){
			//alert("判断是否是整数");
				var num = document.getElementById("operategoodsnum").value;  
			    if (num==""){  
			        alert("请输入申请数量");return false;  
			    }  
			    /*if (!(/(^[1-9]\d*$)/.test(num))){  
			        alert("输入的不是正整数");return false;  
			    }else{  
			        alert("输入的是正整数");  
			    }*/  
			    if (!(/(^[0-9]*[1-9][0-9]*$)/.test(num))){  
			        alert("请输入正整数");
			        document.getElementById("operategoodsnum").value = "";
			        
			        return false;  
			    }else{  
			        alert("申请数量是 "+num);  
			    } 
			}
		</script>
	</head>
	<body>
		<p style="color: red">
			${message }
		</p>
		<br>
		<form method="post" action="${path }/Apply/getGoods"
			enctype="multipart/form-data">

			<table border="0" align="center">
				<!--			<input type="text" name="date" id="date"-->
				<!--				onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" />-->
				<tr>
					<td height="12">
						申请类型:
					</td>
					<td height="12">
						<select name="operatetype" id="operatetype">
							<option value="---选择申请类型---">
								---选择申请类型---
							</option>
							<option value="领取">
								领取
							</option>
							<option value="归还">
								归还
							</option>
						</select>
					</td>
					<td height="12">
				</tr>

				<tr>
					<td height="12">
						申请人:
					</td>
					<td height="12">
						${user.name}
					</td>
					<!--			<input name="operateuser" id="operateuser" type="text"-->
					<!--				value="${username}" />-->

				</tr>
				<tr>
					<td height="12">
						申请用品名称:
					</td>
					<td height="12">
						<select name="operategoods" id="operategoods">
							<option value="---选择办公用品---">
								---选择办公用品---
							</option>
							<c:if test="${not empty allGoods}">

								<c:forEach items="${allGoods}" var="goods">
									<option value="${goods.name}">
										${goods.name}
									</option>
								</c:forEach>
							</c:if>
						</select>
					</td>
				</tr>

				<tr>
					<td height="12">
						申请数量:
					</td>
					<td height="12">
						<input type="text" name="operategoodsnum" id="operategoodsnum"
							onchange="ifnum()" required="required" />
					</td>
				</tr>

				<tr>
					<td height="12">
						日期:
					</td>
					<td height="12">
						<input type="text" name="operatetime" id="operatetime"
							required="required"
							onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm'})" />

						<!--			<input name="operatetime" id="operatetime" type="text" />-->
						<img onclick="WdatePicker({el:'operatetime'})"
							src="${path }/My97DatePicker/skin/datePicker.gif" width="20"
							height="22">
					</td>
				</tr>

				<tr>
					<td height="12">
						申请说明:
					</td>
					<td height="12">
						<textarea name="operatememo" id="operatememo" rows="10" cols="20"></textarea>
					</td>
				</tr>
				<tr>
					<td height="12">
						<input type="submit" value="申请">
					</td>
				</tr>
			</table>
		</form>

	</body>
</html>
