<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<%@include file="userRegisterHeader.jsp"%>
<script type="text/javascript" src="js/userRegister.js"></script>
</head>
<body>
	<div class="wthree-dot">
		<h1>用户注册</h1>
		<div class="profile">
			<div class="wrap">
				<div class="content-main">
					<div class="w3ls-subscribe1">
						<form action="#" method="post">
							用户名：<input id="name" type="text" name="Search" placeholder="Email"
								required=""> 密码：<input id="password1" type="password" name="Password"
								placeholder="Password" required=""> 再次输入：<input id="password2"
								type="password" name="Password" placeholder="Password"
								required=""> <input type="button" value="注册" onclick="register()"> <input
								type="button"
								onclick="javascript:window.location.href='user/toLoginUser.do'"
								value="返回">
						</form>
					</div>
				</div>
				<div class="wthree_footer_copy">
					<p>
						© 2017 雪山爱好网.版权所有 | 设计人： <a href="#">王天赐</a>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>