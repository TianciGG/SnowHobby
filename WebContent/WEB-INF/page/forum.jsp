<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="base.jsp" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旅游论坛</title>
<%@include file="forumHeader.jsp"%>
</head>
<body id="nv_forum" class="pg_forumdisplay">
	<div id="append_parent"></div>
	<div id="ajaxwaitid"></div>
	<div class="headerNav">
		<div class="layout" id="heardnew">
			<div class="logo">
				<a href="goToForumPage.do"> <img src="images/forum/bbs_logo.jpg" alt="8264"
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
				<li><a href="goToForumPage.do" class="loginIco">登录</a></li>
				<li><a href="goToForumPage.do" class="regIco">注册</a></li>
			</ul>
			<div class="searchTopNav">
				<form id="scform" autocomplete="off" action="goToForumPage.do" >
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

		<div class="layout ptb16 hght" id="threadlist_top"
			style="position: relative;">
			<div class="forum_post">
				<span class="forum_post_button" id="btn_box"> <a href="goToPublishCardPage.do"
					style="display: block; width: 133px; height: 43px;"></a>
				</span>
			</div>
			<style>
.dfxlcon {
	float: left;
	margin-top: 13px;
	margin-left: 10px;
}

.dfxlcon a {
	color: #585858;
	text-decoration: none;
}

.dfxlcon a:hover {
	color: #162833;
	text-decoration: none;
}
</style>
			<div class="dfxlcon"></div>
			<span
				style="position: absolute; top: 30px; right: 450px; display: block; width: 15px; height: 15px; overflow: hidden;"></span>

			<div class="list_pager">
				<div class="pg">
					<strong>1</strong> <a href="goToForumPage.do">2</a> <a href="goToForumPage.do">3</a> <a href="goToForumPage.do">4</a>
					<a href="goToForumPage.do">5</a> <a href="goToForumPage.do">6</a> <a href="goToForumPage.do">7</a> <a href="goToForumPage.do">8</a>
					<a href="goToForumPage.do">9</a> <a href="goToForumPage.do">10</a> <a href="goToForumPage.do" class="last">...
						189</a> <a href="goToForumPage.do" class="nxt">下一页</a>
				</div>
			</div>
		</div>
		<form method="post" autocomplete="off" name="moderate" id="moderate"
			action="goToForumPage.do">
			<input type="hidden" name="formhash" value="bc5e4d23" /> <input
				type="hidden" name="listextra" value="" />

			<div class="layout n_m_s_t" id="threadlist"
				style="position: relative;">
				<div class="layout forum_category">
					<a href="goToForumPage.do" class="zhong">全部</a> <a href="goToForumPage.do"> 有奖活动</a> <a href="goToForumPage.do"
						 style="background-color: #ff3144; color: #fff;">户外学校</a>
				</div>

				<div class="layout mt10"
					style="margin-bottom: 10px; position: relative; display: none;">
					<span
						style="width: 26px; height: 13px; position: absolute; bottom: 0px; right: 0px; font-size: 0px; line-height: 0px;"><img
						src="images/forum/ad_logo_update_IAB.gif"></span>
				</div>

				<div class=" layout forum_screeningwarpten">
					<div class="forum_screening_l">
						<a href="goToForumPage.do" class="zhong">全部</a> <a href="goToForumPage.do">精华</a> <a href="goToForumPage.do">热门</a>

					</div>
					<div class="forum_screening_r">
						<a href="goToForumPage.do" class="reply zhong"></a> <a href="goToForumPage.do" class="publish"></a>
					</div>
				</div>

				<table width="0" border="0" cellspacing="0" cellpadding="0"
					class="bbslistbox">
					<tr>
						<th colspan="2" class="t_i26">户外大厅论坛 本版置顶</th>
						<th>作者</th>
						<th>发布时间</th>
					</tr>
					<tr id="stickthread_5272890">
						<td class="tb_"><a href="goToForumPage.do" title="本版置顶主题 - 新窗口打开"
							> <img src="images/forum/pin_1.gif" alt="本版置顶" />
						</a></td>
						<td class="w660">
							<table width="0" border="0" cellspacing="0" cellpadding="0"
								class="titletable">
								<tr>
									<td class="fl_17_no"></td>
									<td class="fl_17_no"></td>
									<td>
										<div class="title_o_t_s">

											<h2 style="display: inline">
												<a href="goToForumPage.do" style="font-weight: bold;" 
													class="f_16">户外大厅版规 注：回帖质量不高，屡次恶意灌水的用户，取消本版回帖权限</a>
											</h2>
										</div>
									</td>
								</tr>
							</table>
						</td>
						<td class="w105"><span class="d_block"> <a href="goToForumPage.do"
								rel="nofollow">admin</a>
						</span> </td>
						<td class="w70"><span class="d_block"><a class="blue">2016-4-12</a></span>
							</td>
						
					</tr>
				</table>
				<!-- 本版二维码 -->
				<style type="text/css">
.blk-adv {
	float: right;
	margin-right: 12px;
	position: relative;
	display: none;
}

.blk-adv a {
	padding-left: 15px;
	background: url(images/forum/qr.png) no-repeat;
}

.code-content {
	position: absolute;
	display: none;
	padding: 12px 12px 8px;
	width: 118px;
	background-color: #4e5b64;
	right: -12px;
	z-index: 999;
	text-indent: 0;
}

.code-content p {
	font-size: 12px;
	color: #fff;
	line-height: 16px;
	text-align: center;
	padding-top: 8px;
}
</style>
				<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".blk-adv").hover(function() {
							$(".code-content", this).show();
						}, function() {
							$(".code-content", this).hide();
						});
					});
				</script>
			<div id = "articleList">
				<!-- <table width="0" border="0" cellspacing="0" cellpadding="0"
					class="bbslistbox">
					<tr id="normalthread_5468004">
						<td class="tb_"><a href="goToForumPage.do" title="新窗口打开" >
								<img src="images/forum/folder_new.gif" />
						</a></td>
						<td class="w660" >
							<table width="0" border="0" cellspacing="0" cellpadding="0"
								class="titletable">
								<tr>
									<td class="fl_17_no"></td>
									<td class="fl_17_no"></td>
									<td >
										<div class="title_o_t_s">

											<h2 style="display: inline">
												<a href=""  class="f_16">穷人有没有资格去探险？</a>
											</h2>
											
										</div>
									</td>
								</tr>
							</table>
						</td>
						<td class="w105"><span class="d_block"> <a rel="nofollow" href="">一等怪兽</a>
						</span></td>
						<td class="w70"><span class="d_block"><a class="blue">2018-2-11</a></span>
							</td>
				</table> -->
				</div>
			</div>

		</form>

		<div class="layout ptb16">
			<div class="forum_post">
				<span class="forum_post_button" id="btn_box_down"> <a
					href="goToPublishCardPage.do" style="display: block; width: 133px; height: 43px;"></a> <em
					class="forum_post_outcon" id="btn_list_down"> <em
						class="forum_post_out"> <a href="goToPublishCardPage.do">发表帖子</a></em>
				</em>
				</span>
			</div>
			<div class="list_pager">
				<div class="pg">
					<strong>1</strong> <a href="goToForumPage.do">2</a> <a href="goToForumPage.do">3</a> <a href="goToForumPage.do">4</a>
					<a href="goToForumPage.do">5</a> <a href="goToForumPage.do">6</a> <a href="goToForumPage.do">7</a> <a href="goToForumPage.do">8</a>
					<a href="goToForumPage.do">9</a> <a href="goToForumPage.do">10</a> <a href="goToForumPage.do" class="last">...
						189</a> <a href="goToForumPage.do" class="nxt">下一页</a>
				</div>
			</div>
		</div>

	</div>

	<div id="diyfastposttop" class="area"></div>

	<div id="fastpost" style="display: none;">

		<div id="f_pst" class="bm">
			<div class="bm_h">
				<h2>快速发帖</h2>
			</div>
			<div class="bm_c">
				<form method="post" autocomplete="off" id="fastpostform" action="goToForumPage.do">

					<div id="fastpostreturn" style="margin: -5px 0 5px"></div>

					<div class="pbt cl">
						<div class="ftid">
							<select name="typeid" id="typeid" width="80">
								<option value="0">选择主题分类</option>
								<option value="1593">有奖活动</option>
							</select>
						</div>
						<input type="text" id="subject" name="subject" class="px" value=""
							tabindex="11" style="width: 25em" /> <span>还可输入 <strong
							id="checklen">80</strong> 个字符
						</span>
					</div>

					<div class="cl">
						<div>
							<div class="tedt">
								<div class="bar">
									<span class="y"> <a href="goToForumPage.do" onclick="javascript:;">上传图片请点击高级模式</a>
									</span> <a href="goToForumPage.do" title="文字加粗" class="bold"></a>
									<div class="colorbox">
										<a href="goToForumPage.do" class="gray" onclick="javascript:;" title="深灰色"></a>
										<a href="goToForumPage.do" class="bule" onclick="javascript:;" title="蓝色"></a>
										<a href="goToForumPage.do" class="red" onclick="javascript:;" title="红色"></a>
									</div>
									<style type="text/css">
#pmimg_menu #pmimg_param_1 {
	width: 93% !important;
}
</style>
									<a id="fastpostimg" href="javascript:;" title="图片" class="fmg"
										style="margin-left: 5px;">图片</a>
								</div>
								<div class="area">
									<div class="pt hm">
										你需要登录后才可以发帖 <a href="goToForumPage.do" onclick="javascript:;" class="xi2">登录</a>
										| <a href="goToForumPage.do" onclick="javascript:;" class="xi2">注册</a> | <a
											href="goToForumPage.do" rel="nofollow"><img
											src="images/forum/qq_login.gif" class="vm" /></a>
									</div>
								</div>
							</div>
							<input type="hidden" name="formhash" value="bc5e4d23" /> <input
								type="hidden" name="usesig" value="" />
							<p class="ptm">
								<button type="button" onclick="" name="topicsubmit"
									id="fastpostsubmit" value="topicsubmit" tabindex="13"
									class="pn">
									<strong>发表帖子</strong>
								</button>
							</p>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="diyforumdisplaybottom" class="area"></div>

	<div class="wp mtn">
		<div id="diy3" class="area"></div>
	</div>

	</div>
	<style type="text/css">
.side-float {
	position: fixed;
	width: 161px;
	height: 149px;
	bottom: 260px;
	margin-left: 500px;
	background: url(images/forum/scan-161-149.png) no-repeat;
	display: none;
}

.side-a {
	display: block;
	width: 100%;
	height: 100%;
}

.side-float .side-close {
	position: absolute;
	width: 10px;
	height: 10px;
	right: 1px;
	top: 8px;
	cursor: pointer;
	z-index: 999999;
}
</style>

	<div class="side-float">
		<a class="side-a" href="goToForumPage.do"  id="qr_src"></a> <span
			class="side-close"></span>
	</div>
	<div class="clearfix"></div>

	</div>

	<div class="bottomNav">
		<div class="layout" style="position: relative;">
			<div class="copyright">
				<p>
					<a href="goToForumPage.do">雪山爱好网</a> 版权所有 | 设计人： 王天赐
				</p>
				<p>
					攀登雪山有风险，雪山爱好网提醒您购买 <a href="goToForumPage.do" >登山保险</a>
				</p>
			</div>
			<div class="someLink">
				<a  href="goToForumPage.do" rel="nofollow">清除COOKIE</a> | <a
					 href="goToForumPage.do" rel="nofollow">联系我们</a> | <a
					rel="nofollow" href="goToForumPage.do">网站条款</a> | <a href="goToForumPage.do" rel="nofollow">帮助</a>
			</div>

		</div>
	</div>

</body>
<script type="text/javascript">
	$(function() {
		$.get("getArticlesTitleInfo.do",{},function(data){
			for(var i = 0;i < data.length; i ++) {
				$("#articleList").append('<table width="0" border="0" cellspacing="0" cellpadding="0"' + 
						'class="bbslistbox">' +
						'<tr id="normalthread_5468004">' +
							'<td class="tb_"><a href="goToForumPage.do" title="新窗口打开" >' +
									'<img src="images/forum/folder_new.gif" />' + 
							'</a></td>' +
							'<td class="w660">' +
								'<table width="0" border="0" cellspacing="0" cellpadding="0"' + 
									'class="titletable">'+
									'<tr>' + 
										'<td class="fl_17_no"></td>' + 
										'<td class="fl_17_no"></td>' + 
										'<td >' +
											'<div class="title_o_t_s">' +
												'<h2 style="display: inline">' + 
				'<a href="goToForumPage.do" class="f_16">'+ data[i].articleTitle +'</a>' +
				'</h2>'+
				'						</div>                                                         '+
				'					</td>                                                              '+
				'				</tr>                                                                  '+
				'			</table>                                                                   '+
				'		</td>                                                                          '+
				'		<td class="w105"><span class="d_block"> <a rel="nofollow" href="goToForumPage.do">'+data[i].id+'</a> '+
				'		</span></td>'+
				'		<td class="w70"><span class="d_block"><a class="blue">'+ timestampToTime(data[i].articleDate) +'</a></span>'+
				'</td>' + 
				'</table>');
				
			}
		},"json")
	})

	
	
function timestampToTime(timestamp) {
       var date = new Date(timestamp);
       Y = date.getFullYear() + '-';
       M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
       D = date.getDate() + ' ';
       return Y+M+D;
   }
</script>
</html>