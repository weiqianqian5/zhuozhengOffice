<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div id="page_nav">
	<%--特码样式1 --%>
	<%-- 			<c:if test="${page.pageNo>1 }"> --%>
	<!-- 				<a href="BookManagerServlet?method=getPageBookList">首页</a> -->
	<%-- 				<a href="BookManagerServlet?method=getPageBookList&pageNo=${page.prev }">上一页</a> --%>
	<%-- 			</c:if> --%>
	<%-- 			&nbsp;当前是第${page.pageNo } 页，共${page.totalPageNo } 页，${page.totalRecord }条记录&nbsp; --%>
	<%-- 			<c:if test="${page.pageNo<page.totalPageNo}"> --%>
	<%-- 				<a href="BookManagerServlet?method=getPageBookList&pageNo=${page.next }">下一页</a> --%>
	<%-- 				<a href="BookManagerServlet?method=getPageBookList&pageNo=${page.totalPageNo }">末页</a>&nbsp;&nbsp;到 --%>
	<%-- 			</c:if>	 --%>

${page.path }<br>
	<%--页码样式2 --%>
	<c:if test="${page.pageNo>1 }">
		<a href="${page.path }">首页</a>
		<a href="${page.path }&pageNo=${page.prev }">上一页</a>
	</c:if>
	<%--1.当总页数小雨5时 --%>
	<%--1.当qian页数小雨3时 --%>
	<%--当前页大于3 --%>
	<c:choose>
		<c:when test="${page.totalPageNo<=5 }">
			<c:set var="begin" value="1"></c:set>
			<c:set var="end" value="${page.totalPageNo }"></c:set>
		</c:when>
		<c:when test="${page.pageNo<=3 }">
			<c:set var="begin" value="1"></c:set>
			<c:set var="end" value="5"></c:set>
		</c:when>
		<c:otherwise>
			<c:set var="begin" value="${page.pageNo-2 }"></c:set>
			<c:set var="end" value="${page.pageNo+2 }"></c:set>
			<c:if test="${end>page.totalPageNo }">
				<c:set var="begin" value="${page.totalPageNo-4 }"></c:set>
				<c:set var="end" value="${page.totalPageNo }"></c:set>
			</c:if>
		</c:otherwise>
	</c:choose>
	<c:forEach begin="${begin }" end="${end }" var="index">
		<c:if test="${page.pageNo==index }">
			[<a href="${page.path }&pageNo=${index }">${index }</a>]
		</c:if>
		<c:if test="${page.pageNo!=index }">
			<a href="${page.path }&pageNo=${index }">${index }</a>
		</c:if>

	</c:forEach>
	<c:if test="${page.pageNo<page.totalPageNo }">
		<a href="${page.path }&pageNo=${page.next }">下一页</a>
		<a href="${page.path }&pageNo=${page.totalPageNo }">末页</a>&nbsp;&nbsp;
	</c:if>
	&nbsp;当前是第${page.pageNo } 页，共${page.totalPageNo } 页，${page.totalRecord }条记录&nbsp;
	到<input value="${page.pageNo }" name="pn" id="pn_input" />页 
	<input type="button" value="确定" id="input">
	<script type="text/javascript">
		$("#input").click(function(){
			//获取输入的页码
			var pageNo = $("#pn_input").val(); 
			window.location.href="${page.path }&pageNo="+pageNo;
		});
	</script>
</div>
