<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>查询学院信息</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<!-- Bootstrap Core CSS -->
<link href="/yx/assets/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<!-- Custom CSS -->
<link href="/yx/assets/css/style.css" rel='stylesheet' type='text/css' />
<link href="/yx/assets/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="/yx/assets/js/jquery.min.js"></script>
<!----webfonts--->
<link
	href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900'
	rel='stylesheet' type='text/css'>
<!---//webfonts--->
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>

<link type="text/css" rel='stylesheet'
	href="/yx/assets/css/welcome/welcome.css" />
</head>
<body>
	<div id="wrapper">
		<!-- Navigation -->
		<nav class="top1 navbar navbar-default navbar-static-top"
			role="navigation" style="margin-bottom: 0">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">迎新系统</a>
		</div>

		<ul class="user-menu">
			<li class="dropdown pull-right"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"><span
					class="glyphicon glyphicon-user"></span> User <span class="caret"></span></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Profile</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-cog"></span>
							Settings</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul></li>
		</ul>
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href="index.html"> <span
							class="glyphicon glyphicon-list-alt"></span> Dashboard
					</a></li>
					<li><a href="#"> <span class="glyphicon glyphicon-print"></span>
							Layouts <span class="fa arrow"></span>
					</a>
						<ul class="nav nav-second-level">
							<li><a href="grids.html">Grid System</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"> <span class="glyphicon glyphicon-tint"></span>
							Menu Levels <span class="fa arrow"></span>
					</a>
						<ul class="nav nav-second-level">
							<li><a href="graphs.html">Graphs</a></li>
							<li><a href="typography.html">Typography</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"> <span class="glyphicon glyphicon-plane"></span>
							Mailbox <span class="fa arrow"></span>
					</a>
						<ul class="nav nav-second-level">
							<li><a href="inbox.html">Inbox</a></li>
							<li><a href="compose.html">Compose email</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="widgets.html"> <span
							class="glyphicon glyphicon-folder-open"></span> Widgets
					</a></li>
					<li><a href="#"> <span class="glyphicon glyphicon-th"></span>
							Forms <span class="fa arrow"></span>
					</a>
						<ul class="nav nav-second-level">
							<li><a href="forms.html">Basic Forms</a></li>
							<li><a href="validation.html">Validation</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"> <span class="glyphicon glyphicon-flash"></span>
							Tables <span class="fa arrow"></span>
					</a>
						<ul class="nav nav-second-level">
							<li><a href="basic_tables.html">Basic Tables</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"> <span
							class="glyphicon glyphicon-credit-card"></span> Css <span
							class="fa arrow"></span>
					</a>
						<ul class="nav nav-second-level">
							<li><a href="media.html">Media</a></li>
							<li><a href="login.html">Login</a></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-credit-card"></span> 教务管理子系统<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">院系管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="addDepartment.html">院系信息增加</a></li>
									<li><a href="#">院系信息查询</a></li>

								</ul></li>
							<li><a href="#">专业管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="#">专业信息增加</a></li>
									<li><a href="#">专业信息查询</a></li>

								</ul></li>
							<li><a href="#">年级管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="#">年级信息增加</a></li>
									<li><a href="#">年级信息查询</a></li>

								</ul></li>
							<li><a href="#">班级管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="#">班级信息增加</a></li>
									<li><a href="#">班级信息查询</a></li>

								</ul></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-credit-card"></span> 学生信息管理子系统<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">学生信息管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="#">学生信息增加</a></li>
									<li><a href="#">学生信息查询</a></li>
								</ul></li>
							<li><a href="#">录取查询管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="#">录取信息导入</a></li>
									<li><a href="#">录取信息查询</a></li>

								</ul></li>
						</ul> <!-- /.nav-second-level --></li>
				</ul>
				<!-- /.nav-second-level -->
				</li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>
		<div id="page-wrapper">
			<div class="col-md-12 graphs">
				<div class="xs">
					<h3>院系查询</h3>
					<div class="bs-example4" data-example-id="contextual-table">
						<form action="#" method="GET">
							<div class="input-group">
								<input type="text" name="search"
									class="form-control1 input-search" placeholder="输入学院名称">
								<span class="input-group-btn">
									<button class="btn btn-success" type="button">
										<i class="fa fa-search"></i>
									</button>
								</span>
							</div>
							<!-- Input Group -->
						</form>

					</div>
					<div class="panel panel-warning"
						data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
						data-widget-static="">
						<div class="panel-heading">
							<h2 style="display: inline">学院列表</h2>
							<button class="btn pull-right">批量导出</button>
							<div class="panel-ctrls" data-actions-container=""
								data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
								<span class="button-icon has-bg"><i
									class="ti ti-angle-down"></i></span>
							</div>

						</div>
						<div class="panel-body no-padding" style="display: block;">
							<table class="table table-striped">
								<thead>
									<tr class="warning">
										<th>选项</th>
										<th>学院名称</th>
										<th>查看</th>
										<th>修改</th>
										<th>删除</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input type="checkbox" class="checkbox"></td>
										<td>软件学院</td>
										<td><button class="btn btn-success">
												<a href="viewDepartment.html">查看
											</button></td>
										<td><button class="btn btn-warning">
												<a href="updateDepartment.html">修改
											</button></td>
										<td><button class="btn btn-danger">删除</button></td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="copy_layout">
					<p>
						Copyright &copy; 2015.Company name All rights reserved.More
						Templates <a href="http://www.cssmoban.com/" target="_blank"
							title="模板之家">模板之家</a> - Collect from <a
							href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
					</p>
				</div>
			</div>
		</div>
		<!-- /#page-wrapper -->
	</div>
	<!-- /#wrapper -->
	<!-- Nav CSS -->
	<link href="/yx/assets/css/custom.css" rel="stylesheet">
	<!-- Metis Menu Plugin JavaScript -->
	<script src="/yx/assets/js/metisMenu.min.js"></script>
	<script src="/yx/assets/js/custom.js"></script>
</body>
</html>