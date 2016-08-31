<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>添加学院信息</title>
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
<link href="/yx/assets/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrapValidator.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('#department').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				name : {
					validators : {
						notEmpty : {
							message : '学院名不能为空'
						},
						stringLength: {
                            max: 50,
                            message: '学院名长度不超过50位'
                        }
					}
				},
				president : {
					validators : {
						notEmpty : {
							message : '院长不能为空'
						},
						stringLength: {
                            max: 50,
                            message: '院长长度不超过50位'
                        }
					}
				},
				vicePresident : {
					validators : {
						notEmpty : {
							message : '副院长不能为空'
						},
						stringLength: {
                            max: 50,
                            message: '副院长长度不超过50位'
                        }
					}
				},
				address : {
					validators : {
						notEmpty : {
							message : '学院地址不能为空'
						},
						stringLength: {
                            max: 200,
                            message: '学院地址长度不超过200位'
                        }
					}
				},
				phone : {
					validators : {
						notEmpty : {
							message : '联系电话不能为空'
						},
						stringLength: {
                            max: 20,
                            message: '联系电话长度不超过20位'
                        },
                        regexp: {
                            regexp: /^[0-9\-]+$/,
                            message: '用户名由数字和连接符组成'
                        }
					}
				},
				zipCode : {
					validators : {
						notEmpty : {
							message : '邮政编码不能为空'
						},
						stringLength: {
                            max: 20,
                            message: '邮政编码长度不超过20位'
                        },
                        regexp: {
                            regexp: /^[0-9\-]+$/,
                            message: '用户名由数字和连接符组成'
                        }
					}
				},
				networkAddress : {
					validators : {
						notEmpty : {
							message : '学院网址不能为空'
						},
						stringLength: {
                            max: 100,
                            message: '学院网址长度不超过100位'
                        }
					}
				},
				description : {
					validators : {
						notEmpty : {
							message : '学院简介不能为空'
						},
						stringLength: {
                            max: 4000,
                            message: '学院简介长度不超过4000位'
                        }
					}
				}
			}
		});

	});
</script>
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
					<li><a href="/yx/logout"><span class="glyphicon glyphicon-log-out"></span>
							Logout</a></li>
				</ul></li>
		</ul>
		<div class="navbar-default sidebar" role="navigation">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<li><a href="#"><span
							class="glyphicon glyphicon-credit-card"></span> 教务管理子系统<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">院系管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/department/addDepartment">院系信息增加</a></li>
									<li><a href="/yx/education/department/findDepartment">院系信息查询</a></li>

								</ul></li>
							<li><a href="#">专业管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/major/addMajor">专业信息增加</a></li>
									<li><a href="/yx/education/major/findMajor">专业信息查询</a></li>

								</ul></li>
							<li><a href="#">年级管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/grade/addGrade">年级信息增加</a></li>
									<li><a href="/yx/education/grade/findGrade">年级信息查询</a></li>

								</ul></li>
							<li><a href="#">班级管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/class/addClass">班级信息增加</a></li>
									<li><a href="/yx/education/class/findClass">班级信息查询</a></li>

								</ul></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-credit-card"></span> 学生信息管理子系统<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">学生信息管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/studentInfo/addStudent">学生信息增加</a></li>
									<li><a href="/yx/studentInfo/findStudent">学生信息查询</a></li>
									<li><a href="/yx/studentInfo/viewInfoForStudent">查看个人信息</a></li>
								</ul></li>
						</ul> <!-- /.nav-second-level --></li>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>
		<div id="page-wrapper">
			<div class="graphs">
				<div class="xs box">
					<h3>院系增加</h3>
					<div class="tab-content">
						<div class="tab-pane active" id="horizontal-form">
							<form id="department" class="form-horizontal"
								action="<%=request.getContextPath()%>/education/department/insert"
								accept-charset="UTF-8" method="post">
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">学院名</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="name" id="name"
											placeholder="name">
									</div>
								</div>
								<div class="form-group">
									<label for="president" class="col-sm-2 control-label">院长</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="president"
											id="president" placeholder="president">
									</div>
								</div>
								<div class="form-group">
									<label for="vicePresident" class="col-sm-2 control-label">副院长</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="vicePresident"
											id="vicePresident" placeholder="vicePresident">
									</div>
								</div>
								<div class="form-group">
									<label for="address" class="col-sm-2 control-label">学院地址</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="address"
											id="address" placeholder="address">
									</div>
								</div>
								<div class="form-group">
									<label for="phone" class="col-sm-2 control-label">联系电话</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="phone"
											id="phone" placeholder="phone">
									</div>
								</div>
								<div class="form-group">
									<label for="zipCode" class="col-sm-2 control-label">邮政编码</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="zipCode"
											id="zipCode" placeholder="zipCode">
									</div>
								</div>
								<div class="form-group">
									<label for="networkAddress" class="col-sm-2 control-label">学院网址</label>
									<div class="col-sm-8">
										<input type="text" class="form-control1" name="networkAddress"
											id="networkAddress" placeholder="networkAddress">
									</div>
								</div>
								<div class="form-group">
									<label for="description" class="col-sm-2 control-label">学院简介</label>
									<div class="col-sm-8">
										<textarea name="description" id="description" cols="50"
											rows="80" class="form-control1"></textarea>
									</div>
								</div>
								<div class="row">
									<div class="col-sm-8 col-sm-offset-7">
										<button type="submit" class="btn-info btn">填写提交</button>
										<button class="btn-default btn" type="reset">重置</button>
									</div>
								</div>
							</form>
						</div>
					</div>
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
>>>>>>> branch 'master' of https://github.com/1136535305/yx.git
</html>
