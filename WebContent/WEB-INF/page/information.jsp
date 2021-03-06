<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<!-- <script type="text/javascript" src="js/jquery.Jcrop.min.js"></script> -->
<!-- <link rel="stylesheet" type="text/css" href="css/jquery.Jcrop.min.css"/> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人信息</title>
<%@include file="informationHeader.jsp"%>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript" src="js/information.js"></script>

</head>
<body>
	<%@include file="personalHeadPage.jsp"%>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-info">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;Information</small>
						</div>
					</div>
					<hr />

					<!--头像 -->
					<div class="user-infoPic">

						<div class="filePic" >
							<input type="file" name="file" class="inputPic" id="file" onchange="uploadImg()"
								allowexts="gif,jpeg,jpg,png,bmp" accept="image/*" capture="camera"> 
							<input type="hidden" name="avatar" id="avatar">
							<img  id="avatarShow" src="" height=150 width=150 />
						</div>

						<p class="am-form-help">头像</p>

						<div class="info-m">
							<div>
								<b>用户名：<i>小叮当</i></b>
							</div>
							<div class="vip">
								<span></span><a href="person/toPersonal.do">会员专享</a>
							</div>
						</div>
					</div>

					<!--个人信息 -->
					<div class="info-main">
						<form class="am-form am-form-horizontal">

							<div class="am-form-group">
								<label for="user-name2" class="am-form-label">昵称</label>
								<div class="am-form-content">
									<input type="text" id="nickname" placeholder="nickname">
									<small>昵称长度不能超过40个汉字</small>
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-name" class="am-form-label">姓名</label>
								<div class="am-form-content">
									<input type="text" id="name" placeholder="name">

								</div>
							</div>

							<div class="am-form-group">
								<label class="am-form-label">性别</label>
								<div class="am-form-content sex">
									<label class="am-radio-inline"> 
										<input type="radio" name="radio10" value="male" data-am-ucheck> 男
									</label> 
									<label class="am-radio-inline"> 
										<input type="radio" name="radio10" value="female" data-am-ucheck> 女
									</label> 
									<label class="am-radio-inline"> 
										<input type="radio"	name="radio10" value="secret" data-am-ucheck> 保密
									</label>
								</div>
							</div>

							<div class="am-form-group">
								<label for="user-birth" class="am-form-label">生日</label>
								
									<div class="am-form-content">
										<input type="date" id="brithday" placeholder="nickname">
									</div>
							</div>
							<div class="am-form-group">
								<label for="user-phone" class="am-form-label">电话</label>
								<div class="am-form-content">
									<input id="tel" placeholder="telephonenumber" type="tel">

								</div>
							</div>
							<div class="am-form-group">
								<label for="user-email" class="am-form-label">电子邮件</label>
								<div class="am-form-content">
									<input id="email" placeholder="Email" type="email">
								</div>
							</div>
							<div class="am-form-group address">
								<label for="user-address" class="am-form-label">收货地址</label>
								<div class="am-form-content address">
									<a href="address.html">
										<p class="new-mu_l2cw">
											<span class="province">湖北</span>省 <span class="city">武汉</span>市
											<span class="dist">洪山</span>区 <span class="street">雄楚大道666号(中南财经政法大学)</span>
											<span class="am-icon-angle-right"></span>
										</p>
									</a>

								</div>
							</div>
							<div class="am-form-group safety">
								<label for="user-safety" class="am-form-label">账号安全</label>
								<div class="am-form-content safety">
									<a href="safety.html"> <span class="am-icon-angle-right"></span>

									</a>

								</div>
							</div>
							<div class="info-btn">
								<input type="button" class="am-btn am-btn-danger" value="保存修改" onclick="save()"/>
							</div>

						</form>
					</div>

				</div>

			</div>
			<!--底部-->
			<div class="footer">
				<div class="footer-hd">
					<p>
						<a href="person/toPersonal.do">雪山首页</a> <b>|</b> <a href="person/toPersonal.do">爱好团队</a> <b>|</b> <a
							href="person/toPersonal.do">开发者</a> <b>|</b> <a href="person/toPersonal.do">创意</a>
					</p>
				</div>
				<div class="footer-bd">
					<p>
						<a href="person/toPersonal.do">关于雪山爱好网</a> <a href="person/toPersonal.do">合作伙伴</a> <a href="person/toPersonal.do">联系我们</a>
						<a href="person/toPersonal.do">网站地图</a> <em>© 2017 雪山爱好网.版权所有 | 设计人： 王天赐 </em>
					</p>
				</div>
			</div>
		</div>
		<%@include file="personalLeftPage.jsp"%>
	</div>

</body>
</html>