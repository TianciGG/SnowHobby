<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>团队旅游</title>
<script type="text/javascript" src="js/teamTrip.js"></script>
<%@include file="teamTripHeader.jsp"%>
</head>
<body>
	<div class="qt_header">
		<div class="qt_header_wrap">
			<div class="call">400-666-8888</div>
			<div class="logo">
				<a href="user/toIndex.do" title="雪山爱好网-专为爱好旅游量身定制"></a>
			</div>
			<div class="menu">
				<ul>
					<li><a href="user/toIndex.do">首页</a></li>
					<li><a href="goToForumPage.do">爱好交流</a></li>
					<li><a class="hover" href="team/toTeamTrip.do">旅行交友</a></li>
					<li><a href="goToMallPage.do">商城购物</a></li>
					<li><a href="person/toPersonal.do">个人中心</a></li>
					<li><a href="goToMyLoginPage.do">管理中心</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="qt_body">
		<div class="qt_body_wrap">
			<div class="qt_main">
				<div class="qt_nav">首页 > 团队旅游</div>
				<div class="qt_list">
					<ul id="seeAll">
						<!--<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">南迦巴瓦峰-“西藏众山之父”</a>
								</div>
								<div class="fname">每年三月，林芝地区桃花盛开，洁白的南迦巴瓦峰在烂漫的雪域桃花中犹如少女般纯净。这片美景，是每个来到林芝的旅行者无法忘怀的思念。<br>
								海拔：7782米<br>
								行程天数：20天<br>
								出发时间：指定时间<br>
								出发城市：北京<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-1.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">贡嘎雪山-“蜀山之王”</a>
								</div>
								<div class="fname">贡嘎山周围有木格措、伍须海、巴王海等优美的高山湖泊，湖水清澈透明，保持着原始、秀丽的自然风貌。海螺沟冰川，更为其中最著名的景点。<br>
								海拔：7556米<br>
								行程天数：16天<br>
								出发时间：指定时间<br>
								出发城市：上海<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-2.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">梅里雪山-“四大神山之一”</a>
								</div>
								<div class="fname">云南最高峰，藏传佛教四大神山之一，天下无双。<br>
								海拔：6740米<br>
								行程天数：18天<br>
								出发时间：指定日期<br>
								出发城市：广州<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">990</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-3.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">亚丁三神山-“中国香格里拉之魂”</a>
								</div>
								<div class="fname">悠远的晴空湛蓝而碧净，五色的彩林、姿态万千的瀑布、风格鲜明的藏寨，大自然把最美的景色留在了这里。雪山脚下，这片静谧、安详的世外之境显得尤为珍贵。<br>
								海拔：仙乃日6032米，央迈勇5958米，夏诺多吉5958米<br>
								行程天数：26天<br>
								出发时间：指定时间<br>
								出发城市：深圳<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">&nbsp;</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-4.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">冈仁波齐峰-“阿里之巅”</a>
								</div>
								<div class="fname">冈仁波齐是世界公认的神山。其神秘之处在于山的向阳面，不知缘何，终年积雪不化，白雪皑皑，而山的背面，即使被白雪覆盖，太阳一出，随即融化，与大自然常规刚好相反。<br>
								海拔：6656米<br>
								行程天数：14天<br>
								出发时间：指定时间<br>
								出发城市：成都<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">&nbsp;</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-5.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">珠穆朗玛峰-“世界第三级”</a>
								</div>
								<div class="fname">世界第一高峰的盛名成就了珠峰，珠峰也成为无数人追求极限、挑战自我的向往之地。<br>
								海拔：8844米<br>
								行程天数：30天<br>
								出发时间：指定日期<br>
								出发城市：杭州<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">&nbsp;</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-6.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">鱼尾峰-“尼泊尔地标”</a>
								</div>
								<div class="fname">尼泊尔人心中的圣山，美丽的鱼尾峰倒映在费瓦湖里，秀丽奇特，风光绝美。<br>
								海拔：6993米<br>
								行程天数：36天<br>
								出发时间：指定时间<br>
								出发城市：丽江<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">&nbsp;</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-7.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">马特洪峰-“阿尔卑斯女王”</a>
								</div>
								<div class="fname">马特洪峰，是阿尔卑斯山最美丽的山峰，也是瑞士引以为骄傲的象征。<br>
								海拔：4478米<br>
								行程天数：40天<br>
								出发时间：指定时间<br>
								出发城市：北京<br></div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">&nbsp;</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-8.jpg" /></a>
							</div>
						</li>
						 <li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">库克山-“南半球的阿尔卑斯”</a>
								</div>
								<div class="fname">屹立在群峰之巅的库克山是新西兰最高的山峰，其中有29座山峰的海拔都高于3000米，是观赏南阿尔卑斯山的绝佳地点。</div>
								<div class="bianhao">海拔：29座山峰海拔高于3000米</div>
								<div class="tianshu">行程天数：42天</div>
								<div class="shijian">出发时间：指定日期</div>
								<div class="chengshi">出发城市：上海</div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">&nbsp;</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-9.jpg" /></a>
							</div>
						</li>
						<li>
							<div class="txt">
								<div class="name">
									<a href="team/toTeamTrip.do">乞力马扎罗山-“赤道雪峰”</a>
								</div>
								<div class="fname">乞力马扎罗山素有"非洲屋脊"之称，是一座神秘而迷人的山峰。没有人相信在赤道附近居然会有一座覆盖着白雪的火山。</div>
								<div class="bianhao">海拔：主峰海拔5892米</div>
								<div class="tianshu">行程天数：45天</div>
								<div class="shijian">出发时间：指定日期</div>
								<div class="chengshi">出发城市：拉萨</div>
								<div class="jia">
									<div class="xianjia">
										<i>专业领队</i>
									</div>
									<div class="yuanjia">&nbsp;</div>
								</div>
								<div class="view">
									<a href="team/toTeamTrip.do"></a>
								</div>
							</div>
							<div class="pic">
								<a href="team/toTeamTrip.do"><img src="images/portfolio-10.jpg" /></a>
							</div>
						</li> -->
					</ul>
				</div>
				<div class="pageshow">
					<div>
						<span class="current">1</span> <a class="num" href="team/toTeamTrip.do">2</a> <a
							class="num" href="team/toTeamTrip.do">3</a> <a class="num" href="team/toTeamTrip.do">4</a> <a
							class="num" href="team/toTeamTrip.do">5</a> <a class="num" href="team/toTeamTrip.do">6</a> <a
							class="num" href="team/toTeamTrip.do">7</a> <a class="num" href="team/toTeamTrip.do">8</a> <a
							class="num" href="team/toTeamTrip.do">9</a> <a class="num" href="team/toTeamTrip.do">10</a> <a
							class="num" href="team/toTeamTrip.do">11</a> <a class="next" href="team/toTeamTrip.do">>></a> <a
							class="end" href="team/toTeamTrip.do">18</a>
					</div>
				</div>
			</div>
			<div class="qt_tour">
				<div class="title">
					<h3>成功案例</h3>
				</div>
				<div class="anli">
					<div class="anli_box">
						<ul>
							<li>
								<div class="pic">
									<img src="images/portfolio-11.jpg" />
								</div>
								<div class="n">自由飞翔雪山探险队</div>
								<div class="s">2017-06-22</div>
								<div class="m">南迦巴瓦峰</div>
								<div class="r">30人出游</div>
							</li>
							<li>
								<div class="pic">
									<img src="images/portfolio-12.jpg" />
								</div>
								<div class="n">生存意义探险队</div>
								<div class="s">2017-07-06</div>
								<div class="m">贡嘎雪山</div>
								<div class="r">20人出游</div>
							</li>
							<li>
								<div class="pic">
									<img src="images/portfolio-6.jpg" />
								</div>
								<div class="n">说走就走探险队</div>
								<div class="s">2017-07-08</div>
								<div class="m">梅里雪山</div>
								<div class="r">40人出游</div>
							</li>
							<li>
								<div class="pic">
									<img src="images/portfolio-8.jpg" />
								</div>
								<div class="n">雪域飞鹰探险队</div>
								<div class="s">2017-08-06</div>
								<div class="m">亚丁三神山</div>
								<div class="r">38人出游</div>
							</li>
							<li>
								<div class="pic">
									<img src="images/portfolio-1.jpg" />
								</div>
								<div class="n">雪乐探险队</div>
								<div class="s">2017-08-08</div>
								<div class="m">冈仁波齐峰</div>
								<div class="r">26人出游</div>
							</li>
							<li>
								<div class="pic">
									<img src="images/portfolio-3.jpg" />
								</div>
								<div class="n">存在探险队</div>
								<div class="s">2017-10-21</div>
								<div class="m">珠穆朗玛峰</div>
								<div class="r">36人出游</div>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</div>
	</div>
	<div class="qt_footer">
		<div class="qt_footer_wrap">
			<div class="link_f">
				<div class="info">
					<div class="call">
						<p class="t">一对一的顾问式服务</p>
						<p class="p">400-666-8888</p>
					</div>
				</div>
				<div class="link">
					<dl>
						<dt>关于我们</dt>
						<dd>
							<a href="team/toTeamTrip.do">了解作者</a>
						</dd>
						<dd>
							<a href="team/toTeamTrip.do">关于本站</a>
						</dd>
					</dl>
					<dl>
						<dt>网站条款</dt>
						<dd>
							<a href="team/toTeamTrip.do">隐私政策</a>
						</dd>
						<dd>
							<a href="team/toTeamTrip.do">免责声明</a>
						</dd>
					</dl>
					<dl>
						<dt>网站合作</dt>
						<dd>
							<a href="team/toTeamTrip.do">友情链接</a>
						</dd>
						<dd></dd>
					</dl>
					<dl>
						<dt>联系我们</dt>
						<dd>
							<a href="team/toTeamTrip.do">联系我们</a>
						</dd>
						<dd>
							<a href="team/toTeamTrip.do">意见反馈</a>
						</dd>
						<dd></dd>
					</dl>
				</div>
			</div>
			<div class="about_f">
				<dl>
					<dt></dt>
					<dd>
						© 2017 雪山爱好网.版权所有 | 设计人： 王天赐 <br>
						雪山爱好网是中国第一家专从用户爱好角度出发的旅游网站，以专业用心的旅游策划团队为基础，坚持给您提高品质的旅游服务质量，专为爱好雪山的旅游者量身定制！
					</dd>
				</dl>
			</div>
			<div class="shangbiao_f"></div>
		</div>
	</div>
	<div class="bottom">
		<a href="team/toTeamTrip.do" class="gotop" title="回到顶部">回到顶部</a>
	</div>
</body>
</html>