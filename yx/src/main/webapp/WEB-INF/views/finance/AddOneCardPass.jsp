<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>迎新系统</title>
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
			role="navigation">

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
					<li><a href="/yx/logout"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul></li>
		</ul>
		</nav>


		<div class="navbar-default sidebar" style="min-height: 61em;"
			role="navigation">
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


					<li><a href="#"> <span class="glyphicon glyphicon-th"></span>
							一卡通管理 <span class="fa arrow" />
					</a>
						<ul class="nav nav-second-level">
							<li><a href="/yx/OneCardPass/add">登记一卡通信息</a></li>
							<li><a href="/yx/OneCardPass/view">一卡通信息管理</a></li>

						</ul></li>

					<li><a href="#"> <span class="glyphicon glyphicon-th"></span>
							军训用品管理 <span class="fa arrow" />
					</a>
						<ul class="nav nav-second-level">
							<li><a href="checkIn.html">添加军训用品信息</a></li>
							<li><a href="militarySuppliesManagement.html">军训用品信息管理</a></li>

						</ul></li>

					<li><a href="#"> <span class="glyphicon glyphicon-th"></span>
							专业学费标准管理 <span class="fa arrow" />
					</a>
						<ul class="nav nav-second-level">
							<li><a href="checkIn.html">添加专业学费标准信息</a></li>
							<li><a href="militarySuppliesManagement.html">专业学费标准信息管理</a></li>

						</ul></li>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side -->
		<div id="page-wrapper">
			<div class="col-md-12 graphs">

				<div class="xs">
					<h3>登记学生一卡通信息</h3>


					<div class="panel-ctrls" data-actions-container=""
						data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
						<span class="button-icon has-bg"> <i
							class="ti ti-angle-down"></i>
						</span>
					</div>
				</div>
				<div class="panel-body no-padding" style="display: block;">
					<div class="tab-pane active" id="horizontal-form">
						<form class="form-horizontal">
							<div class="form-group">
								<label for="focusedinput" class="col-sm-2 control-label">学生姓名</label>
								<div class="col-sm-8">
									<input type="text" class="form-control1" id="focusedinput"
										placeholder="晓红">
								</div>
							</div>
							<div class="form-group">
								<label for="disabledinput" class="col-sm-2 control-label">学生编号</label>
								<div class="col-sm-8">
									<input type="text" class="form-control1" id="focusedinput"
										placeholder="2013303215">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword" class="col-sm-2 control-label">银行卡号</label>
								<div class="col-sm-8">
									<input type="password" class="form-control1" id="inputPassword"
										placeholder="1131251689798415">
								</div>
							</div>
						</form>

						<div class="bs-example"
							data-example-id="form-validation-states-with-icons">
							<form>
								<div class="panel-footer">
									<div class="row">
										<div class="col-sm-8 col-sm-offset-2">
											<button class="btn-success btn">Submit</button>
											<button class="btn-default btn">Cancel</button>
											<button class="btn-inverse btn">Reset</button>
										</div>
									</div>
								</div>
							</form>
						</div>

					</div>
				</div>
				</fieldset>
				</form>
				<div class="copy_layout">
					<p>
						Copyright &copy; 2016.Company name All rights reserved.More
						Templates <a href="http://www.cssmoban.com/" target="_blank"
							title="迎新系统">迎新系统</a>
					</p>
				</div>
			</div>

		</div>

	</div>
	</div>
	<!-- /#page-wrapper -->
	</div>
	</div>
	<!-- /#wrapper -->
	<!-- Nav CSS -->
	<link href="/yx/assets/css/custom.css" rel="stylesheet">
	<!-- Metis Menu Plugin JavaScript -->
	<script src="/yx/assets/js/metisMenu.min.js"></script>
	<script src="/yx/assets/js/custom.js"></script>
</body>
</html>