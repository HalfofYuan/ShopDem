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
		<h2>修改新闻</h2>
		<div class="manage">
			<form action="" id="myform">
				<table class="form">
					<tr>
						<td class="field">新闻标题：</td>
						<td><input type="text" class="text" name="title" value="" /></td>
						<td><span class="title" style="color:red;"></span></td>
					</tr>
					<tr>
						<td class="field">新闻内容：</td>
						<td><textarea name="content"></textarea></td>
						<td><span class="content" style="color:red;"></span></td>
					</tr>
					<tr>
						<!-- 隐藏id,不需要在前台显示 -->
						<td><input type="hidden" name="nID" value=""/></td>
						<td><label class="ui-blue"><input type="submit" name="submit" value="修改" /></label></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	Copyright &copy; 2010 极客营 All Rights Reserved. 京ICP证801001号
</div>
</body>
</html>
