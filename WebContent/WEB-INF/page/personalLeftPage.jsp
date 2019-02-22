<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>左侧导航</title>
</head>
<body>
<aside class="menu">
	<ul>
		<li class="person active"><a href="person/toPersonal.do"><i
				class="am-icon-user"></i>个人中心</a></li>
		<li class="person">
			<p>
				<i class="am-icon-newspaper-o"></i>个人资料
			</p>
			<ul>
				<li><a href="user/toInformation.do">个人信息</a></li>
				<li><a href="user/toUpdatePwd.do">修改密码</a></li>
			</ul>
		</li>
		<li class="person">
			<p>
				<i class="am-icon-balance-scale"></i>我的货物
			</p>
			<ul>
				<li><a href="goToPurchasedPage.do">已购货物</a></li>
			</ul>
		</li>
		<li class="person">
			<p>
				<i class="am-icon-tags"></i>我的团队
			</p>
			<ul>
				<li><a href="collection/toCollection.do">已加团队</a></li>
			</ul>
		</li>
	</ul>

</aside>
</body>
</html>