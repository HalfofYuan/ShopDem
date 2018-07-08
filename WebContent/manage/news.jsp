<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理 - 快乐购</title>
<link type="text/css" rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/function-manage.js"></script>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script>$(function(){$('.clearfix li:eq(4)').addClass('current');});</script>
</head>
<body>
<jsp:include page="public_header.jsp" />
<div id="main" class="wrap">
	<c:import url="public_menu.jsp"></c:import>
	<div class="main">
		<h2>新闻管理</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>新闻标题</th>
					<th>操作</th>
				</tr>
				<tr>
					<td class="first w4 c">1</td>
					<td>迎双旦促销大酬宾</td>
					<td class="w1 c">
						<a href="manage/news-modify.jsp">修改</a> 
						<a href="#" onclick="return confirm('确定删除?')">删除</a>
					</td>
				</tr>
			</table>
			<br/>
			<div style="color:#00C; text-align:center" id="page">
			<a href="">首页</a> 
			<a href="">上一页</a> 
			<a href="">下一页</a> 
			<a href="">尾页</a>
			 ...(当前第1页,共1  页)
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 极客营 All Rights Reserved. 京ICP证801001号
</div>
</body>
</html>
