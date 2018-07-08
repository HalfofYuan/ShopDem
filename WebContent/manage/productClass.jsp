<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 快乐购</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/function-manage.js"></script>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script>$(function(){$('.clearfix li:eq(2)').addClass('current');});</script>
</head>
<body>
<jsp:include page="public_header.jsp" />
<div id="main" class="wrap">
	<c:import url="public_menu.jsp"></c:import>
	<div class="main">
		<h2>分类管理</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>分类名称</th>
					<th>操作</th>
				</tr>
					<tr >
						<td colspan="2">
							<details style="padding-left:50px; ">
								<summary>一级分类名称
									<span style="float: right;">
									<a href="">修改</a>
							 		<a href="" onclick="">删除</a>
							 		</span>
								</summary>
								<p>二级..
									<span style="float: right;">
									<a href="">修改</a>
							 		<a href="" onclick="">删除</a>
							 		</span>
								</p>
								<p>二级..
									<span style="float: right;">
									<a href="">修改</a>
							 		<a href="" onclick="">删除</a>
							 		</span>
								</p>
							</details>
						</td>
					</tr>
			</table>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 极客营 All Rights Reserved. 京ICP证801001号
</div>
</body>
</html>
