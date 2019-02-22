<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>左侧导航</title>
</head>
<body>
	<div class="sidebar" id="sidebar" style="height: 600px;">
		<ul class="nav nav-list">
			<li class="active"><a> <i
					class="glyphicon glyphicon-dashboard"></i> <span class="menu-text">
						控制台 </span>
			</a></li>
			<li><a href="goToUserManagePage.do"> <i
					class="glyphicon glyphicon-tags"></i> <span class="menu-text">
						用户管理 </span>
			</a></li>
			<li><a href="goToSupplierManagePage.do"> <i
					class="glyphicon glyphicon-list-alt"></i> <span class="menu-text">
						帖子管理 </span>
			</a></li>
			<li><a href="goToStatisticsDeptEqptPage.do"> <i
					class="glyphicon glyphicon-text-width"></i> <span class="menu-text">
						商城管理 </span>
			</a></li>
			<li><a href="goToDicListPage.do"> <i
						class="glyphicon glyphicon-book"></i> <span class="menu-text">
							数据字典管理 </span>
				</a></li>
		</ul>
	</div>
</body>
</html>