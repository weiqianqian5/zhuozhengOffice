<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${pageContext.request.contextPath}" var="path"
	scope="page" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>管理页面</TITLE>
		<STYLE type=text/css>
BODY {
	BACKGROUND: #799ae1;
	MARGIN: 0px;
	FONT: 9pt 宋体
}

TABLE {
	BORDER-RIGHT: 0px;
	BORDER-TOP: 0px;
	BORDER-LEFT: 0px;
	BORDER-BOTTOM: 0px
}

TD {
	FONT: 12px 宋体
}

IMG {
	BORDER-RIGHT: 0px;
	BORDER-TOP: 0px;
	VERTICAL-ALIGN: bottom;
	BORDER-LEFT: 0px;
	BORDER-BOTTOM: 0px
}

A {
	FONT: 12px 宋体;
	COLOR: #000000;
	TEXT-DECORATION: none
}

A:hover {
	COLOR: #428eff;
	TEXT-DECORATION: underline
}

.sec_menu {
	BORDER-RIGHT: white 1px solid;
	BACKGROUND: #d6dff7;
	OVERFLOW: hidden;
	BORDER-LEFT: white 1px solid;
	BORDER-BOTTOM: white 1px solid
}

.menu_title {
	
}

.menu_title SPAN {
	FONT-WEIGHT: bold;
	LEFT: 7px;
	COLOR: #215dc6;
	POSITION: relative;
	TOP: 2px
}

.menu_title2 {
	
}

.menu_title2 SPAN {
	FONT-WEIGHT: bold;
	LEFT: 8px;
	COLOR: #428eff;
	POSITION: relative;
	TOP: 2px
}
</STYLE>

		<SCRIPT language=javascript1.2>
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
</SCRIPT>

		<META http-equiv=Content-Type content="text/html; charset=gb2312">
		<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
	</HEAD>
	<BODY leftMargin=0 topMargin=0 marginwidth="0" marginheight="0">
		<TABLE cellSpacing=0 cellPadding=0 width="100%" align=left border=0>
			<TBODY>
				<TR>
					<TD vAlign=top bgColor=#799ae1>
						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD vAlign=bottom height=42>
										<IMG height=38 src="${path}/images/logo.png" width=158>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<br>
						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title
										onMouseOver="this.className='menu_title2';"
										onmouseout="this.className='menu_title';" background=""
										height=25>
										&nbsp;
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title id=menuTitle1
										onmouseover="this.className='menu_title2';"
										onclick=showsubmenu(0)
										onmouseout="this.className='menu_title';"
										background=${path}/left.files/admin_left_1.gif height=25>
										<span><B>${user.name }的个人资料</B> </span>
									</TD>
								</TR>
								<TR>
									<TD id=submenu0>
										<DIV class=sec_menu style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20>
															<A href="#" target=mainFrame>${user.name }的个人资料</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<A href="#" target=mainFrame>修改个人资料</A>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<a href="${path }/jsp/user/password.jsp" target="mainFrame">修改用户密码</a>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
										<DIV style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20></TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
									</TD>
								</TR>
							</TBODY>
						</TABLE>



						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title id=menuTitle1
										onmouseover="this.className='menu_title2';"
										onclick=showsubmenu(2)
										onmouseout="this.className='menu_title';"
										background=${path}/left.files/admin_left_2.gif height=25>
										<SPAN>商品管理</SPAN>
									</TD>
								</TR>
								<TR>
									<TD id=submenu2>
										<DIV class=sec_menu style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20>
															<a href="${path }/Goods/selectAll?goodsName=null&goodsCategory=null" target=mainFrame>商品列表</a>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<a href="${path }/Goods/selectGoods" target="mainFrame">商品添加</a>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
										<DIV style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20></TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
									</TD>
								</TR>
							</TBODY>
						</TABLE>


						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title id=menuTitle1
										onmouseover="this.className='menu_title2';"
										onclick=showsubmenu(1)
										onmouseout="this.className='menu_title';"
										background=${path}/left.files/admin_left_2.gif height=25>
										<SPAN>日志管理</SPAN>
									</TD>
								</TR>
								<TR>
									<TD id=submenu1>
										<DIV class=sec_menu style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20>
															<a href="${path }/Log/selectAllLogs?operateStaus=1"
																target=mainFrame>待办事项</a>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<a href="${path }/Log/selectAllLogs?operateStaus=2"
																target="mainFrame">同意的事项</a>
														</TD>
													</TR>
													<TR>
														<TD height=20>
															<a href="${path }/Log/selectAllLogs?operateStaus=3"
																target="mainFrame">拒绝的事项</a>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
										<DIV style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20></TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
									</TD>
								</TR>
							</TBODY>
						</TABLE>

						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title id=menuTitle1
										onmouseover="this.className='menu_title2';"
										onclick=showsubmenu(30)
										onmouseout="this.className='menu_title';"
										background=left.files/admin_left_2.gif height=25>
										<SPAN>申请物品</SPAN>
									</TD>
								</TR>
								<TR>
									<TD id=submenu30>
										<DIV class=sec_menu style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20>
															<a href="${path }/Apply/toApplyGoods" target=mainFrame>申请物品</a>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
										<DIV style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20></TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>

									</TD>
								</TR>
							</TBODY>
						</TABLE>


						<TABLE cellSpacing=0 cellPadding=0 width=158 align=center>
							<TBODY>
								<TR>
									<TD class=menu_title id=menuTitle1
										onmouseover="this.className='menu_title2';"
										onmouseout="this.className='menu_title';"
										background=left.files/admin_left_9.gif height=25>
										<SPAN>卓正办公管理系统</SPAN>
									</TD>
								</TR>
								<TR>
									<TD>
										<DIV class=sec_menu style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=40 bgcolor="#D6DFF7" style="LINE-HEIGHT: 200%">
															<a href="http://www.zhuozhengsoft.com/index.html" target="_blank"> 版权 &copy;2013-2017 北京卓正志远软件有限公司</a>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
										<DIV style="WIDTH: 158px">
											<TABLE cellSpacing=0 cellPadding=0 width=135 align=center>
												<TBODY>
													<TR>
														<TD height=20></TD>
													</TR>
												</TBODY>
											</TABLE>
										</DIV>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
				</TR>
			</TBODY>
		</TABLE>

	</BODY>
</HTML>
