<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部导航</title>
</head>
<body>
<!--头 -->
	<header>
		<div class="am-container header">
			<ul class="message-l">
				<div class="topMessage">
					<div class="menu-hd">
						<a href="person/toPersonal.do" class="h">亲，请登录</a> <a href="person/toPersonal.do"
							>免费注册</a>
					</div>
				</div>
			</ul>
			<ul class="message-r">
				<div class="topMessage home">
					<div class="menu-hd">
						<a href="person/toPersonal.do"  class="h">个人首页</a>
					</div>
				</div>
				<div class="topMessage my-shangcheng">
					<div class="menu-hd MyShangcheng">
						<a href="person/toPersonal.do" ><i class="am-icon-user am-icon-fw"></i>个人中心</a>
					</div>
				</div>
				<div class="topMessage favorite">
					<div class="menu-hd">
						<a href="person/toPersonal.do" ><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span></a>
					</div>
				</div>
			</ul>
		</div>
		<div class="nav-table">
			<div class="long-title">
				<span class="all-goods">雪山爱好网</span>
			</div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="user/toIndex.do">首页</a></li>
					<li class="qc"><a href="goToForumPage.do">爱好交流</a></li>
					<li class="qc"><a href="team/toTeamTrip.do">旅行交友</a></li>
					<li class="qc"><a href="goToMallPage.do">商城购物</a></li>
					<li class="qc"><a href="person/toPersonal.do">个人中心</a></li>
					<li class="qc last"><a href="goToMyLoginPage.do">管理中心</a></li>
				</ul>
				<div class="nav-extra">
					<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
					<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
				</div>
			</div>
		</div>
		<b class="line"></b>
	</header>
</body>
</html>