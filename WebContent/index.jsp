<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>雪山爱好网</title>
<%@include file="indexHeader.jsp"%>
</head>
<body>
	<!-- Header -->
	<div class="agileheader" id="agileitshome">

		<!-- Navigation -->
		<div class="w3lsnavigation">
			<nav class="navbar navbar-default agilehovereffect wthreehovereffect">
				<div class="navbar-header navbar-left">
					<div class="w3_navigation_pos">
						<a href="index.jsp"> <img src="images/logo.png" alt="雪山爱好网">
							<h1>雪山爱好</h1>
						</a>
					</div>
				</div>

				<div class="collapse navbar-collapse navbar-right"
					id="bs-example-navbar-collapse-1">
					<nav class="link-effect-2" id="link-effect-2">
						<ul class="nav navbar-nav">
							<li><a class="scroll" href="index.jsp"><span>首页</span></a>
							</li>
							<li><a class="scroll" href="user/toLoginUser.do"><span>爱好交流</span></a>
							</li>
							<li><a class="scroll" href="user/toLoginUser.do"><span>旅行交友</span></a>
							</li>
							<li><a class="scroll" href="user/toLoginUser.do"><span>商城购物</span></a>
							</li>
							<li><a class="scroll" href="user/toLoginUser.do"><span>个人中心</span></a>
							</li>
							<li><a class="scroll" href="goToMyLoginPage.do"><span>管理中心</span></a>
							</li>
						</ul>
					</nav>
				</div>
			</nav>
		</div>
		<!-- //Navigation -->

		<!-- Slider -->
		<div class="slider">
			<ul class="rslides" id="slider">
				<li class="first-slide w3ls"><img src="images/slide-1.jpg"
					alt="雪山爱好网" height="800px">
					<div class="wthreexperience">
						<div id="animated-example" class="animated fadeIn"></div>
					</div></li>
				<li class="second-slide aits"><img src="images/slide-2.jpg"
					alt="雪山爱好网" height="800px">
					<div class="wthreexperience">
						<div id="animated-example1" class="animated fadeIn"></div>
					</div></li>
				<li class="third-slide w3-agileits"><img
					src="images/slide-3.jpg" alt="雪山爱好网" height="800px">
					<div class="wthreexperience">
						<div id="animated-example2" class="animated fadeIn"></div>
					</div></li>
				<li class="fourth-slide agileinfo"><img
					src="images/slide-4.jpg" alt="雪山爱好网" height="800px">
					<div class="wthreexperience">
						<div id="animated-example3" class="animated fadeIn"></div>
					</div></li>
				<li class="fifth-slide wthree"><img src="images/slide-5.jpg"
					alt="雪山爱好网" height="800px">
					<div class="wthreexperience">
						<div id="animated-example4" class="animated fadeIn"></div>
					</div></li>
			</ul>
		</div>
		<!-- //Slider -->

	</div>
	<!-- //Header -->

	<!-- About -->
	<div class="w3lsaboutaits" id="w3lsaboutaits">
		<div class="container">

			<h2>关于雪山爱好网</h2>
			<h4>"本网张主要为爱好雪山的用户提供更好的旅游服务，使用户在追求爱好的同时享有一系列的贴心服务。"</h4>
			<div class="w3lsaboutaits-grids">
				<div class="col-md-6 w3lsaboutaits-grid w3lsaboutaits-grid-1">
					<h3>网站历史</h3>
					<p>随着旅游业和人民生活水平的提高，人们对于新鲜事物的追求也越发高涨，很多接触过雪山亦或没有接触过雪山的人都会喜欢雪山的银装素裹晶莹如玉，而网络上没有这方面专业的网站，致使很多爱好雪山亦或想要爱好雪山的人没有追求自己所爱之处，故本网站应运而生。</p>
					<button class="btn btn-primary" data-toggle="modal"
						data-target="#myModal1">
						读取更多<i class="fa fa-arrow-right" aria-hidden="true"></i>
					</button>
				</div>
				<div class="col-md-6 w3lsaboutaits-grid w3lsaboutaits-grid-2">
					<h3>
						追求所爱 <span><i class="fa fa-angle-right" aria-hidden="true"></i></span>
					</h3>
					<p>本网站提供更多更专业的一手雪山相关资源，不仅如此，本网站还提供资源交流和对各类资源进行分类的服务，使用户有更好的体验，追求所爱。</p>
					<h3>
						结交朋友 <span><i class="fa fa-angle-right" aria-hidden="true"></i></span>
					</h3>
					<p>本网站为你量身选择各种共同爱好的网友，你也可以选择想要结交的人进行加好友操作。不仅如此，还可以通过加入团队旅行或者驴友单约的方式，在风雨与共的日子里培养友情。总之，在这里有你需要的友情。</p>
					<h3>
						专业购物 <span><i class="fa fa-angle-right" aria-hidden="true"></i></span>
					</h3>
					<p class="bottom-p">本网站提供各种专业登山工具，而且本站声明所有登山工具都为海外代购的知名登山品牌，如假包换，假一赔千。心动不如行动，还不赶快来买买买！</p>
				</div>
				<div class="clearfix"></div>
			</div>

			<!-- Tooltip-Content -->
			<div class="tooltip-content">
				<div class="modal fade details-modal" id="myModal1" tabindex="-1"
					role="dialog" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title">关于雪山的故事</h4>
							</div>
							<div class="modal-body">
								<img src="images/about.jpg" alt="雪山故事">
								<p>&emsp;&emsp;人类自古便对于未知处女地拥有无限的好奇心，那些终年积雪、少人涉足的巍峨雪山自然也不会被爱好冒险的登山者放过。它们神秘、危险，散发着无限的致命诱惑力，让人如痴如醉，像一位蛇蝎般迷人的“情人”，让无数探秘者前赴后继。至于攀登雪山，除了登上高峰的快感，更多迎接你的将是生命的未知与挑战。</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //Tooltip-Content -->

		</div>
	</div>
	<!-- //About -->

	<!-- Details -->
	<div class="agileinfodetails" id="agileinfodetails">
		<div class="container">

			<div class="col-md-12 agileinfodetails-grid agileinfodetails-heading">
				<h3>Experience the Freedom</h3>
			</div>
			<div
				class="col-md-12 agileinfodetails-grid agileinfodetails-paragraph">
				<p>
					雪山一直以来都以“圣洁纯净、遗世独立”的标记令人向往、心生敬畏。<br /> 无论是虔诚朝圣，还是勇攀高峰。<br />
					终年不化的冰雪，刺破云端的尖峰，<br> 雪山带给人们的壮美与震撼是大自然中其他景色永远无法比拟的。
				</p>
			</div>
			<div class="clearfix"></div>

		</div>
	</div>
	<!-- //Details -->

	<!-- Locations -->
	<div class="wthreelocationsaits" id="wthreelocationsaits">
		<div class="container">
			<h3>全球各国雪山</h3>
			<section class="grid3d vertical" id="grid3d">
				<div class="grid-wrap">
					<div class="grid">
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-1.jpg" alt="美国" height="277px">
							<figcaption>
								<h4>美国</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-2.jpg" alt="俄罗斯" height="277px">
							<figcaption>
								<h4>俄罗斯</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-3.jpg" alt="中国" height="277px">
							<figcaption>
								<h4>中国</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-4.jpg" alt="日本" height="277px">
							<figcaption>
								<h4>日本</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-5.jpg" alt="瑞士" height="277px">
							<figcaption>
								<h4>瑞士</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-6.jpg" alt="法国" height="277px">
							<figcaption>
								<h4>法国</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-7.jpg" alt="德国" height="277px">
							<figcaption>
								<h4>德国</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-8.jpg" alt="阿根廷" height="277px">
							<figcaption>
								<h4>阿根廷</h4>
							</figcaption>
						</figure>
						<figure class="col-md-4 effect-zoe">
							<img src="images/location-9.jpg" alt="意大利" height="277px">
							<figcaption>
								<h4>意大利</h4>
							</figcaption>
						</figure>
					</div>
				</div>
				<div class="content"></div>
			</section>
		</div>
	</div>
	<!-- //Locations -->

	<!-- Packages -->
	<div class="agilepackagesw3l" id="agilepackagesw3l">
		<div class="container">

			<h3>精品商场</h3>

			<div id="owl-demo" class="owl-carousel text-center">
				<div class="item w3-agile">
					<div class="agilegrid agilegrid1">
						<img src="images/package-1.jpg" alt="冲锋衣" height="266px">
						<h4>ME SHUKSAN 3L JACKET</h4>
						<h5>¥4698</h5>
						<ul>
							<li>该冲锋衣优点：</li>
							<li>防风、防水、透气性强</li>
							<li>含多个防水拉链</li>
							<li>多个可调节部位</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BOOK NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid2">
						<img src="images/package-2.jpg" alt="羽绒服" height="266px">
						<h4>ME DHAPA JACKET</h4>
						<h5>¥2298</h5>
						<ul>
							<li>该羽绒服优点：</li>
							<li>采用透气皱感弹力面料</li>
							<li>衍缝位防绒技术</li>
							<li>多调节系统</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BUY NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid3">
						<img src="images/package-3.jpg" alt="登山靴" height="266px">
						<h4>PHANTOM 8000</h4>
						<h5>¥10799</h5>
						<ul>
							<li>该登山靴优点：</li>
							<li>高弹力S-tech面料</li>
							<li>OutDry防水透气科技</li>
							<li>全碳纤维内底</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BUY NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid4">
						<img src="images/package-4.jpg" alt="登山包" height="266px">
						<h4>ACT35 SL</h4>
						<h5>¥1399</h5>
						<ul>
							<li>该登山包优点：</li>
							<li>轻便、背负系统好</li>
							<li>拔热透气系统好</li>
							<li>支持发送国际求救信息更安全</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BUY NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid5">
						<img src="images/package-5.jpg" alt="睡袋" height="266px">
						<h4>EXOSPHERE +2° REG</h4>
						<h5>¥1259</h5>
						<ul>
							<li>该睡袋优点：</li>
							<li>含有速干区和内置口袋</li>
							<li>人体工学足型和脚步保暖</li>
							<li>舒展舒适系统保证舒适睡眠</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BUY NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid6">
						<img src="images/package-6.jpg" alt="雪镜" height="266px">
						<h4>Cameleon Noir/Gris-Ecran</h4>
						<h5>¥870</h5>
						<ul>
							<li>该雪镜优点：</li>
							<li>拥有极强的抗冲击力</li>
							<li>100%过滤紫外线和强光</li>
							<li>通风除雾效果强大</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BUY NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid7">
						<img src="images/package-7.jpg" alt="全身安全带" height="266px">
						<h4>AvaoBodCrollFast S-L C71CFA</h4>
						<h5>¥4675</h5>
						<ul>
							<li>该全身安全带优点：</li>
							<li>内置CROLL腹部绳柄</li>
							<li>使用DoubleBack卡扣</li>
							<li>脚环备有FAST自动上锁扣</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BUY NOW</a>
						</div>
					</div>
				</div>
				<div class="item w3-agile">
					<div class="agilegrid agilegrid8">
						<img src="images/package-8.jpg" alt="技术型冰镐" height="266px">
						<h4>PETZL NOMIC U21</h4>
						<h5>¥3060</h5>
						<ul>
							<li>该技术型冰镐优点：</li>
							<li>可调校的抓握尺寸</li>
							<li>提供较好的爬握和隔热能力</li>
							<li>尖咀可以卸除以减轻重量</li>
						</ul>
						<div class="sign w3-agile text-center">
							<a class="popup-with-zoom-anim" href="user/toLoginUser.do">BUY NOW</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Packages -->

	<!-- Portfolio -->
	<div class="w3portfolioaits" id="w3portfolioaits">
		<h3>团队旅行</h3>

		<div class="w3portfolioaits-items">
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-1">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-1.jpg" alt="团队1" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-2">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-2.jpg" alt="团队2" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-3">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-3.jpg" alt="团队3" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-4">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-4.jpg" alt="团队4" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-5">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-5.jpg" alt="团队5" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-6">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-6.jpg" alt="团队6" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-7">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-7.jpg" alt="团队7" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-8">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-8.jpg" alt="团队8" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-9.jpg" alt="团队9" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-10.jpg" alt="团队10" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-11.jpg" alt="团队11" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="col-md-3 w3portfolioaits-item w3portfolioaits-item-9">
				<a class="example-image-link" href="user/toLoginUser.do">
					<div class="grid">
						<figure class="effect-apollo">
							<img src="images/portfolio-12.jpg" alt="团队12" height="195px">
							<figcaption></figcaption>
						</figure>
					</div>
				</a>
			</div>
			<div class="clearfix"></div>
		</div>

	</div>
	<!-- //Portfolio -->


	<!-- Footer -->
	<div class="agilefooterwthree" id="agilefooterwthree">
		<div class="container">

			<div class="agilefooterwthree-grids">
				<div class="col-md-4 agilefooterwthree-grid agilefooterwthree-grid1">
					<h4>定位链接</h4>
					<ul>
						<li><a class="scroll" href="#agileitshome">网站顶部</a></li>
						<li><a class="scroll" href="#w3lsaboutaits"><span>关于雪山爱好网</span></a></li>
						<li><a class="scroll" href="#wthreelocationsaits"><span>全球各国雪山</span></a></li>
						<li><a class="scroll" href="#agilepackagesw3l"><span>精品商城</span></a></li>
						<li><a class="scroll" href="#w3portfolioaits"><span>团队旅行</span></a></li>
					</ul>
				</div>
				<div class="col-md-4 agilefooterwthree-grid agilefooterwthree-grid2">
					<h4>联系地址</h4>
					<address>
						<ul>
							<li>北京市</li>
							<li>东城区</li>
							<li>东四十条甲22号A座</li>
							<li>北京市长亮新融科技有限公司</li>
							<li><a class="mail" href="user/toLoginUser.do">wangtianci@sunline.cn</a></li>
						</ul>
					</address>
				</div>
				<div
					class="col-md-4 agilefooterwthree-grid agilefooterwthree-grid3 newsletter">
					<h4>订阅我们</h4>
					<p>订阅我们的时事通讯</p>
					<form action="user/toLoginUser.do" method="post">
						<input class="email aitsw3ls" type="email" placeholder="您的电子邮件"
							required=""> <input type="submit" class="submit" value="">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>

		</div>

	</div>
	<!-- //Footer -->

	<!-- Copyright -->
	<div class="copyright">
		<p style="color: #FFF;">
			© 2017 雪山爱好网.版权所有 | 设计人： 王天赐 </a>
		</p>
	</div>
	<!-- //Copyright -->
	<!--模态框开始-->
	<!--<div class="modal fade" id="userLogin" style="display:none;">
			<div class="modal-dialog modal-sm" style="width:540px;">
				<div class="modal-content" style="border:none;">
					<div class="col-left"></div>
					<div class="col-right">
						<div class="modal-header">
							<button type="button" id="login_close" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
							<h4 class="modal-title" id="loginModalLabel" style="font-size: 18px;">登录</h4>
						</div>
						<div class="modal-body">
							<section class="box-login v5-input-txt" id="box-login">
								<form id="login_form" action="" method="post" autocomplete="off">
									<ul>
										<li class="form-group"><input class="form-control" id="id_account_l" maxlength="50" name="account_l" placeholder="请输入邮箱账号/手机号" type="text"></li>
										<li class="form-group"><input class="form-control" id="id_password_l" name="password_l" placeholder="请输入密码" type="password"></li>
									</ul>
								</form>
								<p class="good-tips marginB10"><a id="btnForgetpsw" class="fr">忘记密码？</a>还没有账号？<a href="javascript:;" target="_blank" id="btnRegister">立即注册</a></p>
								<div class="login-box marginB10">
									<button id="login_btn" type="button" class="btn btn-micv5 btn-block globalLogin">登录</button>
									<div id="login-form-tips" class="tips-error bg-danger" style="display: none;">错误提示</div>
								</div>
								<div class="threeLogin"><span>其他方式登录</span><a class="nqq" href="javascript:;"></a><a class="nwx" href="javascript:;"></a></div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>-->
	<!-- //模态框结束-->

	<!-- Custom-JavaScript-File-Links -->

	<!-- Default-JavaScript -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<!--模态框js-->
	<!--<script type="text/javascript" src="js/modal.js"></script>
		<script type="text/javascript" src="js/userLogin.js"></script>-->
	<!-- Bootstrap-JavaScript -->
	<script type="text/javascript" src="js/bootstrap.js"></script>

	<!-- Responsive-Slider-JavaScript -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
			$(function() {
				$("#slider").responsiveSlides({
					auto: true,
					nav: true,
					speed: 2000,
					namespace: "callbacks",
					pager: true,
				});
			});
		</script>
	<!-- //Responsive-Slider-JavaScript -->

	<!-- Review-Slider-JavaScript -->
	<script src="js/main.js"></script>
	<!-- //Review-Slider-JavaScript -->

	<!-- Tour-Locations-JavaScript -->
	<script src="js/classie.js"></script>
	<script src="js/helper.js"></script>
	<!-- //Tour-Locations-JavaScript -->

	<!-- Owl-Carousel-JavaScript -->
	<script src="js/owl.carousel.js"></script>
	<script>
			$(document).ready(function() {
				$("#owl-demo, #owl-demo1, #owl-demo2, #owl-demo3, #owl-demo4").owlCarousel({
					autoPlay: 4000,
					items: 3,
					itemsDesktop: [568, 2],
					itemsDesktopSmall: [414, 1]
				});
			});
		</script>
	<!-- //Owl-Carousel-JavaScript -->

	<!-- Date-Picker-JavaScript -->
	<script src="js/jquery-ui.js"></script>
	<script>
			$(function() {
				$("#datepicker,#datepicker1,#datepicker2").datepicker();
			});
		</script>
	<!-- //Date-Picker-JavaScript -->


	<!-- Map-JavaScript -->
	<!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js"></script>-->
	<!--<script type="text/javascript">
			google.maps.event.addDomListener(window, 'load', init);

			function init() {
				var mapOptions = {
					zoom: 11,
					center: new google.maps.LatLng(43.73333, 7.41667),
					styles: [{
						"featureType": "all",
						"elementType": "labels.text.fill",
						"stylers": [{
							"saturation": 36
						}, {
							"color": "#000000"
						}, {
							"lightness": 40
						}]
					}, {
						"featureType": "all",
						"elementType": "labels.text.stroke",
						"stylers": [{
							"visibility": "on"
						}, {
							"color": "#000000"
						}, {
							"lightness": 16
						}]
					}, {
						"featureType": "all",
						"elementType": "labels.icon",
						"stylers": [{
							"visibility": "off"
						}]
					}, {
						"featureType": "administrative",
						"elementType": "geometry.fill",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 20
						}]
					}, {
						"featureType": "administrative",
						"elementType": "geometry.stroke",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 17
						}, {
							"weight": 1.2
						}]
					}, {
						"featureType": "landscape",
						"elementType": "geometry",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 20
						}]
					}, {
						"featureType": "poi",
						"elementType": "geometry",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 21
						}]
					}, {
						"featureType": "road.highway",
						"elementType": "geometry.fill",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 17
						}]
					}, {
						"featureType": "road.highway",
						"elementType": "geometry.stroke",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 29
						}, {
							"weight": 0.2
						}]
					}, {
						"featureType": "road.arterial",
						"elementType": "geometry",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 18
						}]
					}, {
						"featureType": "road.local",
						"elementType": "geometry",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 16
						}]
					}, {
						"featureType": "transit",
						"elementType": "geometry",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 19
						}]
					}, {
						"featureType": "water",
						"elementType": "geometry",
						"stylers": [{
							"color": "#000000"
						}, {
							"lightness": 17
						}]
					}]
				};
				var mapElement = document.getElementById('map');
				var map = new google.maps.Map(mapElement, mapOptions);
				var marker = new google.maps.Marker({
					position: new google.maps.LatLng(43.73333, 7.41667),
					map: map,
				});
			}
		</script>-->
	<!-- //Map-JavaScript -->

	<!-- Smooth-Scrolling-JavaScript -->
	<!--<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>-->
	<!-- //Smooth-Scrolling-JavaScript -->

	<!-- Slide-To-Top JavaScript -->
	<script type="text/javascript">
			$(document).ready(function() {
				var defaults = {
					containerID: 'toTop',
					containerHoverID: 'toTopHover',
					scrollSpeed: 100,
					easingType: 'linear',
				};
			});
		</script>
	<a href="#agileitshome" id="toTop" class="stuoyal3w scroll stieliga"
		style="display: block;"> <span id="toTopHover" style="opacity: 0;">
	</span></a>
	<!-- //Slide-To-Top JavaScript -->

	<!-- //Custom-JavaScript-File-Links -->
</body>
</html>