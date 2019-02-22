<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<%@include file="userLoginHeader.jsp"%>

</head>
<body>
	<div class="wthree-dot">
		<h1>用户登录</h1>
		<div class="profile">
			<div class="wrap">
				<div class="content-main">
					<div class="w3ls-subscribe">
						<h2>是否还在犹豫呢？</h2>
						<p>心动不如行动，赶快加入我们的大家庭吧！</p>
						<form action="#" method="post">
							<input id="name" type="email" name="Search" placeholder="Email" required="">
							<input id="password" type="password" name="Password" placeholder="Password"
								required=""> 
							<input type="button" onclick="loginUser();" value="登录"> 
						    <input type="button" onclick="javascript:window.location.href='user/toRegister.do'"	value="注册">
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