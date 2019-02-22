<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<%@include file="revisePwdHeader.jsp"%>
<script type="text/javascript" src="js/revisePwd.js"></script>
</head>
<body>
	<%@include file="personalHeadPage.jsp"%>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="am-cf am-padding">
					<div class="am-fl am-cf">
						<strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Revise&nbsp;Password</small>
					</div>
				</div>
				<hr />
				<!--进度条-->
				<div class="m-progress">
					<div class="m-progress-list">
						<span class="step-1 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">1<em class="bg"></em></i>
							<p class="stage-name">重置密码</p>
						</span> <span class="step-2 step"> <em class="u-progress-stage-bg"></em>
							<i class="u-stage-icon-inner">2<em class="bg"></em></i>
							<p class="stage-name">完成</p>
						</span> <span class="u-progress-placeholder"></span>
					</div>
					<div class="u-progress-bar total-steps-2">
						<div class="u-progress-bar-inner"></div>
					</div>
				</div>
				<form class="am-form am-form-horizontal">
					<div class="am-form-group">
						<label for="user-old-password" class="am-form-label">原密码</label>
						<div class="am-form-content">
							<input id="oldPassword" type="password"
								placeholder="请输入原登录密码">
						</div>
					</div>
					<div class="am-form-group">
						<label for="user-new-password" class="am-form-label">新密码</label>
						<div class="am-form-content">
							<input id="newPassword" type="password" onfocus="checkOld()"
								placeholder="由数字、字母组合" >
						</div>
					</div>
					<div class="am-form-group">
						<label for="user-confirm-password" class="am-form-label">确认密码</label>
						<div class="am-form-content">
							<input type="password" id="newPassword1"
								placeholder="请再次输入上面的密码">
						</div>
					</div>
					<div class="info-btn">
						<input type="button" value="保存修改" class="am-btn am-btn-danger" onclick="updataPwd()"/>
					</div>

				</form>

			</div>
			<!--底部-->
			<div class="footer">
				<div class="footer-hd">
					<p>
						<a href="user/toUpdatePwd.do">雪山首页</a> <b>|</b> <a href="user/toUpdatePwd.do">爱好团队</a> <b>|</b> <a
							href="user/toUpdatePwd.do">开发者</a> <b>|</b> <a href="user/toUpdatePwd.do">创意</a>
					</p>
				</div>
				<div class="footer-bd">
					<p>
						<a href="user/toUpdatePwd.do">关于雪山爱好网</a> <a href="user/toUpdatePwd.do">合作伙伴</a> <a href="user/toUpdatePwd.do">联系我们</a>
						<a href="user/toUpdatePwd.do">网站地图</a> <em>© 2017 雪山爱好网.版权所有 | 设计人： 王天赐 </em>
					</p>
				</div>
			</div>
		</div>

		<%@include file="personalLeftPage.jsp"%>
	</div>

</body>
</html>