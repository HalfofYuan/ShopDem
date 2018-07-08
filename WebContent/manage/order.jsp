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
<script>$(function(){$('.clearfix li:eq(3)').addClass('current');});</script>
</head>
<body>
<jsp:include page="public_header.jsp" />
<div id="main" class="wrap">
	<c:import url="public_menu.jsp"></c:import>
	<div class="main">
		<h2>订单管理</h2>
		<div class="manage">
			<div class="spacer"></div>
				<table class="list">
					<tr>
						<th>ID</th>
						<th>姓名</th>
						<th>发货地址</th>
						<th>下单时间</th>
						<th>总价格</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
					<tr>
						<td class="first w4 c">1</td>
						<td class="w1 c">刚哥</td>
						<td>湖南长沙。。。</td>
						<td>2000-01-01 18:08:42</td>
						<td> &yen; 1888</td>
						<td class="w1 c">下单</td>
						<td class="w1 c">
							<a href="manage/order-modify.jsp">修改</a>
							<a href="manage/order-view.jsp">查看</a>
						</td>
					</tr>
					<tr>
						<td class="first w4 c">1</td>
						<td class="w1 c">张三</td>
						<td>北京。。。</td>
						<td>2000-02-01 18:08:42</td>
						<td> &yen; 1888</td>
						<td class="w1 c">审核通过</td>
						<td class="w1 c">
							<a href="manage/order-modify.jsp">修改</a>
							<a href="manage/order-view.jsp">查看</a>
						</td>
					</tr>
					<tr>
						<td class="first w4 c">1</td>
						<td class="w1 c">李四</td>
						<td>上海。。。</td>
						<td>2000-03-01 18:08:42</td>
						<td> &yen; 1888</td>
						<td class="w1 c">配货</td>
						<td class="w1 c">
							<a href="manage/order-modify.jsp">修改</a>
							<a href="manage/order-view.jsp">查看</a>
						</td>
					</tr>
					<tr>
						<td class="first w4 c">1</td>
						<td class="w1 c">王五</td>
						<td>湖南。。。</td>
						<td>2000-04-01 18:08:42</td>
						<td> &yen; 1888</td>
						<td class="w1 c">送货中</td>
						<td class="w1 c">
							<a href="manage/order-modify.jsp">修改</a>
							<a href="manage/order-view.jsp">查看</a>
						</td>
					</tr>
					<tr>
						<td class="first w4 c">1</td>
						<td class="w1 c">赵六</td>
						<td>湖南。。。</td>
						<td>2000-05-01 18:08:42</td>
						<td> &yen; 1888</td>
						<td class="w1 c">收货并确认</td>
						<td class="w1 c">
							<a href="manage/order-modify.jsp">修改</a>
							<a href="manage/order-view.jsp">查看</a>
						</td>
					</tr>
				</table>
				<div style="color:#00C; text-align:center" id="page">
		          <a href="">首页</a>
		          <a href="">上一页</a>
		          <a href="">下一页</a>
		          <a href="">尾页</a>
		          ...(当前第1 页,共 1  页)
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
