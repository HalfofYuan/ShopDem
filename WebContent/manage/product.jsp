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
<style type="text/css">
	td img{width:60px;hight:60px;}
</style>
<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script>$(function(){$('.clearfix li:eq(2)').addClass('current');});</script>
</head>
<body>
<jsp:include page="public_header.jsp" />
<div id="main" class="wrap">
	<c:import url="public_menu.jsp"></c:import>
	<div class="main">
		<h2>商品管理</h2>
		<div class="manage">
			<table class="list">
				<tr>
					<th>ID</th>
					<th>商品名称</th>
					<th>操作</th>
				</tr>
					<tr>
						<td class="first w4 c">11</td>
						<td class="thumb">
							<img src="images/product/324324342.jpg" alt="木有图片" />
							<a href="" target="_blank">
							杰克琼斯JackJones男士装纯棉合体薄款立体格纹长袖白衬衫</a>
						</td>
						<td class="w1 c">
							<a href="manage/product-modify.jsp">修改</a>
						 	<a href="" onclick="return confirm('确定删除?')">删除</a>
						</td>
					</tr>
			</table>
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
