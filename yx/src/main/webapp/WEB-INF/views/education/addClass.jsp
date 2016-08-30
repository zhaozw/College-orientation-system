<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>添加班级信息</title>
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
<link href="/yx/assets/css/bootstrap-select.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrap-select.min.js"></script>

<script type="text/javascript">
	$(function() {
		var url = "/yx/education/major/loadDepartment";
		    $.get(url,function(data) {

		    	var div1=$("#class > div:nth-child(4) > div:nth-child(2) > div");
		    	var select=$('<select title="请选择学院" class="selectpicker form-control" id="department" data-width="fit"></select>');
		    	div1.empty();
		    	div1.html(select);
		    	var options="";
		    	if(data.length>0){ 
		    		for(var i=0;i<data.length;i++){ 
		    			select.append("<option value='"+data[i].id+"'>"+data[i].name+"</option>"); 
		    		}
		    		
		    	}
		    	
		    
		    	$('.selectpicker').selectpicker();
		    	
		    	$("#department").change(function(){
		    		majorSelectContentChange();
		    	});
		    	
		    },
		    "json");
		    
		    var url = "/yx/education/class/loadGrade";
		    $.get(url,function(data) {

		    	var div1=$("#class > div:nth-child(3) > div");
		    	var select=$('<select name="grade.id" style="margin-left: -15px" title="请选择年级" class="selectpicker form-control" id="grade" data-width="fit"></select>');
		    	div1.empty();
		    	div1.html(select);
		    	var options="";
		    	if(data.length>0){ 
		    		for(var i=0;i<data.length;i++){ 
		    			select.append("<option value='"+data[i].id+"'>"+data[i].name+"</option>"); 
		    		}
		    		
		    	}
		    	
		    
		    	$('.selectpicker').selectpicker();
		    	
		    },
		    "json");
		
		$('#class').bootstrapValidator({
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
							message : '班级名不能为空'
						},
						stringLength: {
                            max: 50,
                            message: '班级名长度不超过50位'
                        }
					}
				},
				teacher : {
					validators : {
						notEmpty : {
							message : '班主任不能为空'
						},
						stringLength: {
                            max: 50,
                            message: '班主任长度不超过50位'
                        }
					}
				},
				stuNum : {
					validators : {
						notEmpty : {
							message : '学生人数不能为空'
						},
                        regexp: {
                            regexp: /^[0-9]+$/,
                            message: '学生人数只能由数字组成'
                        }
					}
				}
			}
		});

	});
	
    function majorSelectContentChange(){
    	var url="/yx/education/major/loadMajor/"+$("#department").val();
    	$.get(url,
    		    function(data) {
    		
    		var div1=$("#class > div:nth-child(4) > div:nth-child(3) > div > div");
    		var select=$('<select name="major.id" title="请选择专业" class="selectpicker form-control" id="major" data-width="fit"></select>');
    		div1.empty();
    		div1.html(select);
    		var options="";
    		if(data.length>0){ 
    			for(var i=0;i<data.length;i++){ 
    				select.append("<option value='"+data[i].id+"'>"+data[i].name+"</option>"); 
    			}
    			
    		}
    		

    		$('.selectpicker').selectpicker();
    		
    		       
    		    },
    		    "json");
    	}
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
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>
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
					<h3>班级增加</h3>
					<div class="tab-content">
						<div class="tab-pane active" id="horizontal-form">
							<form id="class" class="form-horizontal"
								action="<%=request.getContextPath()%>/education/class/insert"
								accept-charset="UTF-8" method="post">
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">班级名</label>
									<div class="col-sm-8">
										<input type="text" style="margin-left: -15px"
											class="form-control1" name="name" id="name"
											placeholder="name">
									</div>
								</div>
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">所在年级</label>
									<div class="col-xs-2" style="margin-left: -15px;">
										<div class="form-group"></div>
									</div>
								</div>
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">所在专业</label>
									<div class="col-xs-2">
										<div class="form-group"></div>
									</div>
									<div class="col-xs-2">
										<div class="form-group">
											<select title="请选择专业" class="selectpicker form-control"
												id="major" data-width="fit">
												<option>软件工程</option>
												<option>网络工程</option>
												<option>计算机网络</option>
											</select>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="teacher" class="col-sm-2 control-label">班主任</label>
									<div class="col-sm-8">
										<input type="text" style="margin-left: -15px"
											class="form-control1" name="teacher" id="teacher"
											placeholder="teacher">
									</div>
								</div>
								<div class="form-group">
									<label for="stuNum" class="col-sm-2 control-label">学生人数</label>
									<div class="col-sm-8">
										<input type="text" style="margin-left: -15px"
											class="form-control1" name="stuNum" id="stuNum"
											placeholder="stuNum">
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
</html>