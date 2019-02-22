<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="back-base.jsp" />
<meta charset="utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>用户管理</title>
<%@include file="back-header.jsp"%>
<script type="text/javascript" src="js/back/userManage.js"></script>
</head>
<body>
	<%@include file="back-headerDiv.jsp"%>
	<div id="main-container" style="height: 600px;">
		<div class="main-container-inner">
			<%@include file="back-leftPage.jsp"%>
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="glyphicon glyphicon-home"></i> <a
							href="goToMainPage.do">首页</a> <i
							class="glyphicon glyphicon-menu-right"></i> 控制台</li>
					</ul>
				</div>
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
							<div class="table-header">系统用户列表</div>
							<div class="widget-box">
								<div class="widget-body">
									<div class="widget-main">
										<form class="form-inline">
											用户名：<input type="text" id="searchUserNameId"
												class="input-large" placeholder="用户名" onkeydown="KeyDown()" />
											<button type="button" class="btn btn-purple btn-sm"
												onclick="searchTable()">
												<i class="glyphicon glyphicon-search"></i> 查询
											</button>
										</form>
									</div>
								</div>
							</div>
							<div id="result" class="table-responsive ">
								<table id="tblResult"
									class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th class="center" data-formatter="xuanze"><label>
													<input type="checkbox" class="acem" /> <span class="lbl"></span>
											</label></th>
											<th class="center" data-field="userName">用户名</th>
											<th class="center" data-field="cname">真实姓名</th>
											<th class="center" data-field="role">权限角色</th>
											<th class="center" data-field="gender">性别</th>
											<th class="center" data-field="mobile">手机号</th>
											<th class="center" data-field="email">Email</th>
											<th class="center" data-formatter="caozuo">操作</th>
										</tr>
									</thead>
									<tbody id="tableResult"></tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="addComWin" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true"></button>
					<h4 class="modal-title">
						<i class="icon-pencil"></i> <span id="lblAddTitle"
							style="font-weight: bold">用户信息</span>
					</h4>
				</div>
				<form class="form-horizontal form-bordered form-row-strippe"
					id="ffAdd" action="" data-toggle="validator"
					enctype="multipart/form-data">
					<input type="hidden" id="deviceHiddenID" name="tId" /></input>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<div class="control-label col-md-3">用户姓名</div>
									<div class="col-md-9">
										<input id="tCheckCircleID" name="tCheckCircle" type="text"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="control-label col-md-3">科室</label>
									<div class="col-md-9">
										<select class="selectpicker" data-style="btn-primary"
											style="width: 100px;">
											<option value="PA">外科</option>
											<option value="CT">内科</option>
											<option value="NY">妇科</option>
											<option value="MD">男科</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="control-label col-md-3">新密码</label>
									<div class="col-md-9">
										<input id="tCheckCircleID" name="tCheckCircle" type="password"
											class="form-control" />
									</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label class="control-label col-md-3">新密码重复</label>
									<div class="col-md-9">
										<input id="tCheckCircleID" name="tCheckCircle" type="password"
											class="form-control" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer bg-info">
						<input type="hidden" id="ID" name="ID" />
						<button type="button" onclick="subForm();" class="btn blue">确定</button>
						<button type="button" class="btn green" data-dismiss="modal">取消</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<div id="addQuanxian" class="modal fade" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header bg-primary">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true"></button>
					<h4 class="modal-title">
						<i class="glyphicon glyphicon-pencil"></i> <span id="lblAddTitle"
							style="font-weight: bold">用户信息</span>
					</h4>
				</div>
				<form class="form-horizontal form-bordered form-row-strippe"
					id="ffAdd" action="" data-toggle="validator"
					enctype="multipart/form-data">
					<input type="hidden" id="deviceHiddenID" name="tId" /></input>
					<div class="modal-body">
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<div class="control-label col-md-3">用户姓名</div>
									<div class="col-md-9">
										<input id="quanxianRealName" name="tCheckCircle" type="text"
											readonly="readonly" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group">
									<div class="control-label col-md-3">权限</div>
									<div class="col-md-9">
										<select id="myquanxian" class="selectpicker"
											data-style="btn-primary" style="width: 100px;">
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer bg-info">
						<input type="hidden" id="roleUserId">
						<button type="button" onclick="updateUserRole();" class="btn blue">确定</button>
						<button type="button" class="btn green" data-dismiss="modal">取消</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="modal fade" id="myModalDelete" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">删除消息</h4>
				</div>
				<div class="modal-body">确定要删除用户么？</div>
				<div class="modal-footer">
					<input type="hidden" id="delUserId">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary"
						onclick="deleteUser();">提交</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="myPwdReset" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">密码重置</h4>
				</div>
				<div class="modal-body">确定要重置密码么？</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary">提交</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

