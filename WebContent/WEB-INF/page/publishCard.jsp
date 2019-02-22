<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
	
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅游论坛</title>
<%@include file="publishCardHeader.jsp"%>
</head>
<body id="nv_forum" class="pg_forumdisplay">
	<div id="append_parent"></div>
	<div id="ajaxwaitid"></div>
	<div class="headerNav">
		<div class="layout" id="heardnew">
			<div class="logo">
				<a href="user/toIndex.do"> <img src="images/forum/bbs_logo.jpg" alt="8264"
					titile="8264" />
				</a>
			</div>
			<ul class="nav">
				<li><a href="user/toIndex.do" class="topLink">首页</a></li>
				<li><a href="goToForumPage.do" class="topLink">爱好交流</a></li>
				<li><a href="team/toTeamTrip.do" class="topLink">旅行交友</a></li>
				<li><a href="goToMallPage.do" class="topLink">商城购物</a></li>
				<li><a href="person/toPersonal.do" class="topLink">个人中心</a></li>
				<li><a href="goToMyLoginPage.do" class="topLink">管理中心</a></li>
			</ul>
			<ul class="noLogin">
				<li><a href="goToPublishCardPage.do" class="loginIco">登录</a></li>
				<li><a href="goToPublishCardPage.do" class="regIco">注册</a></li>
			</ul>
			<div class="searchTopNav">
				<form id="scform" autocomplete="off" action="goToPublishCardPage.do" >
					<input type="hidden" name="s" value="9963133823733045431" /> <input
						type="hidden" name="nsid" value="2" /><span id="searchTips"
						class="tips">搜索</span> <input id="searchText" class="text"
						type="text" value="" name="q" /> <input class="subButton"
						type="submit" value="" />
				</form>
			</div>
		</div>
	</div>
	<div id="wp">
		<link href="css/forum/forum_forumdisplay.css" rel="stylesheet"
			type="text/css">
		<link href="css/forum/style.css" rel="stylesheet" type="text/css">
		<div class="header">
			<div class="layout">
				<style>
.dsad {
	position: absolute;
	left: 168px;
	top: 18px;
}

.dsad1 {
	position: absolute;
	left: 432px;
	top: 18px;
}
</style>
				<div class="dsad"></div>
				<div class="dsad1"></div>
				<div class="icoHill">山</div>
				<div class="headerL">
					<h1>
						<span class="country"><a href="goToForumPage.do">论坛大厅</a></span>
					</h1>
					<div class="site">
						<a href="user/toIndex.do" title="首页" id="fjump">首页</a> <em>&rsaquo;</em> <a
							href="goToForumPage.do">论坛大厅</a>
					</div>
				</div>
				<div class="headerR">
					<div class="bbsNumCount">
						<div class="numBox">
							<p class="num">9422</p>
							<p class="day">主题</p>
						</div>
						<div class="numBox">
							<p class="num">27</p>
							<p class="day">今日</p>
						</div>
					</div>
				</div>
				<style>
.nav_t_p_a {
	width: 980px;
	border: #d8d8d8 solid 1px;
	position: absolute;
	top: 52px;
	right: 0px;
	z-index: 6363;
	background: #fff;
	box-shadow: 0 2px 5px #CCCCCC
}

.nav_t_p_a dl {
	display: table;
	border-bottom: #d8d8d8 solid 1px;
	width: 100%;
	margin: 0;
	padding: 11px 0px 6px 0px;
	background: url(images/forum/bbsnavbg.jpg) -21px 0px repeat-y;
}

.nav_t_p_a dl.without_b {
	border-bottom: none 0;
}

.nav_t_p_a dt {
	float: left;
	width: 94px;
	margin: 0px;
	padding: 0px;
	text-indent: 15px;
	height: 100%;
	font-size: 12px;
	color: #fff;
}

.nav_t_p_a dd {
	margin: 0px;
	padding: 0px;
	overflow: hidden;
}

.nav_t_p_a dd a {
	margin: 0px 20px 5px 0px;
	display: inline-block;
	white-space: nowrap;
}

.nav_t_p_a dd a:hover {
	color: #43A6DF;
}

.headerL .site .xlsj {
	padding: 0px 16px 0px 0px;
	background: url(images/forum/arrow_xl.jpg) 51px 7px no-repeat;
}

.headerL .site .xlsj_down {
	padding: 0px 16px 0px 0px;
	background: url(images/forum/arrow_xl.jpg) 51px -8px no-repeat;
}
</style>
			</div>
		</div>
		<link rel="stylesheet" type="text/css" href="css/forum/fu.css" />
		<div class="layout fu">
			<div class="mn">
				<form method="post" autocomplete="off"
					onsubmit="check_subject();return validate(this);" id="postform"
					action="goToPublishCardPage.do">
					<div class="bm bw0 cl" id="editorbox">
						<h3 class="futitle" style="position: relative;">
							<span id="returnmessage"
								style="display: inline-block; padding: 6px 0px 0px;">
								发表帖子 </span>
						</h3>
						<div id="postbox">
							<div class="pbt clboth">
								<div class="pbt_title">
									<span><input type="text" name="subject" id="subject"
										class="px" value="" tabindex="1" /></span>
								</div>
								<span id="subjectchk" class="pbt_title_note">还可输入 <strong
									id="checklen">80</strong> 个字符
								</span>
							</div>
							<div id="rstnotice" style="display: none"></div>

							<!--编辑器-->
							<div class="clboth pt26">
								<div class="fu_l">
									<div class="editerbox">
										<div  class="edierbar clboth">
											<a  title="文字加粗" class="bold"></a>
											<div class="font_size">
												<a href="javascript:;" class="small"
													onclick="discuzcode('fontsize', 2);" title="小"></a> <a
													href="javascript:;" class="medium"
													onclick="discuzcode('fontsize', 3);" title="中"></a> <a
													href="javascript:;" class="large"
													onclick="discuzcode('fontsize', 4);" title="大"></a>
											</div>

											<div class="colorbox">
												<a href="javascript:;" class="gray" title="灰色"
													onclick="discuzcode('forecolor', '#585858')"
													onmouseout="setEditorTip('')"
													onmouseover="setEditorTip('灰色')"></a> <a
													href="javascript:;" class="blue" title="蓝色"
													onclick="discuzcode('forecolor', 'Blue')"
													onmouseout="setEditorTip('')"
													onmouseover="setEditorTip('蓝色')"></a> <a
													href="javascript:;" class="red" title="红色"
													onclick="discuzcode('forecolor', 'Red')"
													onmouseout="setEditorTip('')"
													onmouseover="setEditorTip('红色')"></a>
											</div>

											<label  class="y"><input
												type="checkbox" class="pc"
												name="checkbox" value="0"
												onclick="switchEditor(this.checked?0:1)" />纯文本</label>
											<div id="e_button">
												<div id="e_adv_s0">
													<a id="e_paste"></a>
												</div>
											</div>
										</div>
										<div class="edt areatext" style="height: 400px;">
											<textarea name="message" id="e_textarea" class="pt"
												tabindex="2" rows="15"></textarea>
										</div>
										<link rel="stylesheet" type="text/css"
											href="css/forum/editor.css" />
										<div class="aretzt clboth">
											<span id="e_tip" class="le"></span> <span class="ri">
												&nbsp; <a href="javascript:;"
												 id="e_svd">保存数据</a>
												|&nbsp; <a href="javascript:;"
												onclick="discuzcode('rst');return false;" id="e_rst">恢复数据</a>
											</span>
										</div>
									</div>
								</div>
								<div style="clear: both;"></div>
							</div>
							<style>
.webuploader-container {
	position: relative;
}

.webuploader-element-invisible {
	position: absolute !important;
	clip: rect(1px, 1px, 1px, 1px);
	/* IE6, IE7 */
	clip: rect(1px, 1px, 1px, 1px);
}

.webuploader-pick {
	position: relative;
	display: inline-block;
	cursor: pointer;
	background: #00b7ee;
	padding: 10px 15px;
	font-size: 16px;
	color: #fff;
	text-align: center;
	width: 178px;
	border-radius: 3px;
	overflow: hidden;
}

.webuploader-pick-hover {
	background: #00a2d4;
}

.webuploader-pick-disable {
	opacity: 0.6;
	pointer-events: none;
}
</style>
							<!--编辑器 end-->
							<div class="tijiaobutton">
								<button type="button" id="postsubmit" class="pn pnc ft"
									value="true" name="topicsubmit" onclick="pubishArticle()"></button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>

		
		<!-- 友情链接 -->
		<style>
.friendLink {
	background: #0f1f2b;
	padding: 15px 0 18px 0px;
}

.friendLink a {
	color: #807f7f;
	display: inline;
	margin-right: 10px;
	white-space: nowrap;
	font-size: 12px;
}

.friendLink a:hover {
	color: #fff;
	text-decoration: none;
}
</style>
		<div class="friendLink">
			<div class="layout w980"></div>
		</div>
		<div class="bottomNav">
			<div class="layout" style="position: relative;">
				<div class="copyright">
					<p>
						<a href="goToPublishCardPage.do">雪山爱好网</a> 版权所有 | 设计人： 王天赐
					</p>
					<p>
						攀登雪山有风险，雪山爱好网提醒您购买 <a href="goToPublishCardPage.do" >登山保险</a>
					</p>
				</div>
				<div class="someLink">
					<a  href="goToPublishCardPage.do" rel="nofollow">清除COOKIE</a> | <a
						href="goToPublishCardPage.do" rel="nofollow">联系我们</a> | <a
						href="goToPublishCardPage.do">网站条款</a> | <a href="goToPublishCardPage.do" rel="nofollow">帮助</a>
				</div>

			</div>
		</div>
</body>
</html>
	<script type="text/javascript">
		function pubishArticle() {
			var articleTitle = $("#subject").val().trim();

			if (articleTitle == "") {
				alert("标题不能为空");
				return;
			}
			var articleContent = $("#e_textarea").val().trim();
			if (articleContent == "") {
				alert("内容不能为空");
				return;
			}
			$.post("publishArticle.do",{articleTitle:articleTitle,articleContent:articleContent},function(data){
				if (data.state != 1) {
					alert("发布失败，请再次尝试");
				} else {
					window.location = "${pageContext.request.contextPath}/goToForumPage.do";
				}
			},"json")
		}
		
	</script>
