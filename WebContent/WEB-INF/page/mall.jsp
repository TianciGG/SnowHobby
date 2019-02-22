<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城购物</title>
<%@include file="mallHeader.jsp"%>
</head>
<body>
	<!--shortcut start-->
	<div id="shortcut-2014">
		<div class="w">
			<ul class="fr">
				<li class="fore1" id="ttbar-login"><a href="goToMallPage.do"
					class="link-login">你好，请登录</a>&nbsp;&nbsp; <a href="goToMallPage.do"
					class="link-regist style-red">免费注册</a></li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt">
						<a  href="user/toIndex.do">首页</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore3">
					<div class="dt">
						<a  href="goToForumPage.do">爱好交流</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore4">
					<div class="dt">
						<a  href="team/toTeamTrip.do">旅行交友</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore5">
					<div class="dt">
						<a  href="goToMallPage.do">商城购物</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore6">
					<div class="dt">
						<a href="person/toPersonal.do">个人中心</a>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore7">
					<div class="dt">
						<a  href="goToMyLoginPage.do">管理中心</a>
					</div>
				</li>
			</ul>
			<span class="clr"></span>
		</div>
	</div>
	<div id="o-header-2013">
		<div id="header-2013" style="display: none;"></div>
	</div>
	<!--shortcut end-->
	<!-- S 主体内容 -->
	<div class="mod_container">
		<div class="sk_mod_hd" id="sk_mod_hd">

			<div class="grid_c1">
				<div class="w">
					<div id="logo-2014">
						<a href="goToMallPage.do" class="logo">雪山爱好网</a>
					</div>
					<div id="search-2014">
						<ul id="shelper" class="hide"></ul>
						<div class="form">
							<input type="text"
								onkeydown="javascript:if(event.keyCode==13) search('key');"
								autocomplete="off" id="key" accesskey="s" class="text">
							<button onclick="search('key');return false;"
								class="button cw-icon">
								<i></i>搜索
							</button>
						</div>
					</div>
					<div id="settleup-2014" class="dorpdown">
						<div class="cw-icon">
							<i class="ci-left"></i> <i class="ci-right">&gt;</i><i
								class="ci-count" id="shopping-amount">0</i> <a 
								href="goToMallPage.do">我的购物车</a>
						</div>
					</div>
					<div id="hotwords">
						<a data-id="3566" data-position-id="2" href="goToMallPage.do" >雪镜</a>
						<a data-id="3567" data-position-id="3" href="goToMallPage.do" >睡袋</a>
						<a data-id="5148" data-position-id="4" href="goToMallPage.do" >冰镐</a>
						<a data-id="3569" data-position-id="5" href="goToMallPage.do">登山靴</a>
						<a data-id="3570" data-position-id="6" href="goToMallPage.do" >冲锋衣</a>
					</div>
					<span class="clr"></span>
				</div>
			</div>

		</div>
		<div class="J_menu_holder" style="height: 46px;"></div>
		<div class="classify_container">
			<div class="classify_container_bg"></div>
			<div class="catinfo" id="catinfo" data-id="catinfo" data-async="true"
				data-tpl="classifydetail_tpl">
				<div class="grid_c1">
					<div class="catinfo_title">
						<h1 class="catinfo_title_inner">
							<span class="catinfo_title_inner_container">
								<div class="catinfo_title_inner_icon">
									<i class="catinfo_title_inner_icon_33"></i>
								</div> <span class="catinfo_title_inner_txt">登山用品</span>
							</span>
						</h1>
					</div>
					<div class="catinfo_seckillnow" data-elevator="true">
						<div class="sk_mod_sectitle_container">
							<h3 class="sk_mod_sectitle">
								<span class="sk_mod_sectitle_txt">正在热卖</span>
							</h3>
						</div>
						<ul class="seckill_mod_goodslist clearfix" id = "allMall">
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- E 主体内容 -->
	<link rel="stylesheet" type="text/css" href="css/mall/footer.css">
	<div class="" id="cmsfooter">
		<div id="service-2014">
			<div class="slogen"></div>
			<div class="w">
				<dl class="fore1">
					<dt>购物指南</dt>
					<dd>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">购物流程</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">会员介绍</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">生活旅行</a>
						</div>
						<div>
							<a rel="nofollow" href="goToMallPage.do">常见问题</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">技术知识</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">联系客服</a>
						</div>
					</dd>
				</dl>
				<dl class="fore2">
					<dt>配送方式</dt>
					<dd>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">上门自提</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">限时送达</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">配送查询</a>
						</div>
						<div>
							<a rel="nofollow" href="goToMallPage.do">收费标准</a>
						</div>
						<div>
							<a  href="goToMallPage.do">海外配送</a>
						</div>
					</dd>
				</dl>
				<dl class="fore3">
					<dt>支付方式</dt>
					<dd>
						<div>
							<a rel="nofollow" href="goToMallPage.do">货到付款</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">在线支付</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">分期付款</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">邮局汇款</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">公司转账</a>
						</div>
					</dd>
				</dl>
				<dl class="fore4">
					<dt>售后服务</dt>
					<dd>
						<div>
							<a rel="nofollow" href="goToMallPage.do">售后政策</a>
						</div>
						<div>
							<a rel="nofollow" href="goToMallPage.do">价格保护</a>
						</div>
						<div>
							<a rel="nofollow" href="goToMallPage.do">退款说明</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">退换货品</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">取消订单</a>
						</div>
					</dd>
				</dl>
				<dl class="fore5">
					<dt>特色服务</dt>
					<dd>
						<div>
							<a  href="goToMallPage.do">关于作者</a>
						</div>
						<div>
							<a  href="goToMallPage.do">延保服务</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">海外网站</a>
						</div>
						<div>
							<a rel="nofollow" " href="goToMallPage.do">全球精品</a>
						</div>
						<div>
							<a rel="nofollow"  href="goToMallPage.do">购物交流</a>
						</div>
						<div>
							<a rel="nofollow" href="goToMallPage.do">购物维权</a>
						</div>
					</dd>
				</dl>
				<span class="clr"></span>
			</div>
		</div>
		<div class="w">
			<div id="footer-2014">
				<div class="links">
					<a rel="nofollow" href="goToMallPage.do">关于我们</a>| <a
						rel="nofollow"  href="goToMallPage.do">联系我们</a>| <a
						rel="nofollow"  href="goToMallPage.do">联系客服</a>| <a
						rel="nofollow"  href="goToMallPage.do">合作招商</a>| <a
						rel="nofollow"  href="goToMallPage.do">营销中心</a>| <a
						rel="nofollow"  href="goToMallPage.do">雪山爱好</a>| <a
						 href="goToMallPage.do">友情链接</a>| <a  href="goToMallPage.do">销售联盟</a>|
					<a href="goToMallPage.do" >雪山社区</a>| <a href="goToMallPage.do" >风险监测</a>|
					<a href="goToMallPage.do" >隐私政策</a>| <a href="goToMallPage.do" >雪山公益</a>|
					<a href="goToMallPage.do" >English Site</a>| <a href="goToMallPage.do"
						>Media &amp; IR</a>
				</div>
				<div class="copyright">
					<a  href="goToMallPage.do"><img src="images/mall/gh.png">
						津公网安备 66666666666666号</a>&nbsp;&nbsp;|&nbsp;&nbsp;津ICP证666666号&nbsp;&nbsp;|&nbsp;&nbsp;
					<a  href="goToMallPage.do">雪山爱好网登山工具销售证书 6666-8888</a>&nbsp;&nbsp;|&nbsp;&nbsp;新出发津零&nbsp;字第大666666号<br>互联网出版许可证编号新出网证(津)字888号&nbsp;&nbsp;|&nbsp;&nbsp;
					<a rel="nofollow" href="goToMallPage.do" >出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="goToMallPage.do" >网络文化经营许可证津网文[2018]6666-666号</a>&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：8888888888<br>Copyright&nbsp;©&nbsp;2017-2018&nbsp;&nbsp;xueshanaihao.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：6666666666&nbsp;&nbsp;&nbsp;&nbsp;
					<a class="mod_copyright_license"  href="goToMallPage.do">经营证照</a>
				</div>
				<div class="authentication">
					<a rel="nofollow"  href="goToMallPage.do"><img width="103"
						height="32" alt="经营性网站备案中心" src="images/mall/jybainfo.png"
						class="err-product"></a> <a rel="nofollow" 
						id="urlknet" tabindex="-1" href="goToMallPage.do"><img border="true"
						width="103" height="32" alt="可信网站" src="images/mall/kxwzpj.png"
						class="err-product"></a> <a rel="nofollow" 
						href="goToMallPage.do"><img width="103" height="32" alt="网络警察"
						src="images/mall/wljc.jpg" class="err-product"></a> <a
						rel="nofollow"  href="goToMallPage.do"><img width="103"
						height="32" src="images/mall/cxwz.png" class="err-product"></a>
					<a  href="goToMallPage.do"><img width="103" height="32"
						src="images/mall/hlwjb.jpg"></a> <a  href="goToMallPage.do"><img
						width="103" height="32" src="images/mall/wljbapp.jpg"></a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
	<script type="text/javascript">
	
	 	$(function(){
			$.post("${pageContext.request.contextPath}/getAllMall.do",{},function(data){
					console.log(data);
				for (var i = 0; i < data.length; i++) {
					$("#allMall").append('<li class="seckill_mod_goods "><a href="goToMallPage.do"' +
			'				class="seckill_mod_goods_link" > <img                                  '+
			'				class="seckill_mod_goods_link_img" data-lazy-img="done"                               '+
			'				src="'+ data[i].imgsrc +'" data-webp="no">                                            '+
			'				<h4 class="seckill_mod_goods_title">'+ data[i].title +'</h4>                       '+
			'		</a>                                                                                          '+
			'			<div class="seckill_mod_goods_info">                                                      '+
			'				<span class="seckill_mod_goods_info_txt"> <span                                       '+
			'					class="seckill_mod_goods_price"> <i                                               '+
			'						class="seckill_mod_goods_price_now"><em>¥</em>'+ data[i].newPrice +'<i                          '+
			'							class="seckill_mod_goods_price_now_small"></i></i> <span                  '+
			'						class="seckill_mod_goods_price_pre">¥<del>'+ data[i].oldPrice +'</del></span>                   '+
			'				</span>                                                                               '+
			'				</span> <a href="javascript:;"  class="seckill_mod_goods_info_i" onclick=purchase('+data[i].id+')>立即购买</a>     '+
			'			</div></li>');
				}
			},"json")
		}) 
		
		function purchase(id) {
	 		$.post("${pageContext.request.contextPath}/purchase.do",{mid:id},function(data) {
	 			if(data.state == 1) {
		 			if (confirm("购买成功，是否去个人中心查看")) {
		 				window.location = "${pageContext.request.contextPath}/goToPurchasedPage.do";
		 			}
	 			} else {
	 				alert("购买失败");
	 			}
	 		},"json")
	 	}
	</script>