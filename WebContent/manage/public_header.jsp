<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<% Date date = new Date(); pageContext.setAttribute("date", date); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

</head>

<body>
	<div id="header" class="wrap">
		<div id="logo">
			<img src="../images/logo.gif" />
		</div>
		<div class="help">
			<a href="">返回前台页面</a>
		</div>
		<div class="navbar">
			<ul class="clearfix">
				<li><a href="manage/index.jsp">首页</a>
				</li>
				<li><a href="">用户</a>
				</li>
				<li><a href="">商品</a>
				</li>
				<li><a href="">订单</a>
				</li>
				<li><a href="">新闻</a>
				</li>
			</ul>
		</div>
	</div>
	<div id="childNav">
		<div class="welcome wrap">
			管理员<span style="color:blue; font-size: 15px;">刚哥</span> 您好，今天是
			<fmt:formatDate value="${pageScope.date }" pattern="yyyy-MM-dd" />
			，欢迎回到管理后台。
		</div>
	</div>
	<div id="position" class="wrap">
		您现在的位置：<a href="index.jsp">快乐购</a> &gt; 管理后台
	</div>
</body>
</html>
