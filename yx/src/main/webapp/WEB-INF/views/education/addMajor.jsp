<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>添加专业信息</title>
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

		    	var div1=$("#major > div:nth-child(3)");
		    	var select=$('<select name="department.id" title="请选择学院"  class="selectpicker form-control" id="department" data-width="fit"></select>');
		    	div1.empty();
		    	div1.append('<label for="president" class="col-sm-2 control-label">所在学院</label>');
		    	div1.append(select);
		    	var options="";
		    	if(data.length>0){ 
		    		for(var i=0;i<data.length;i++){ 
		    			select.append("<option value='"+data[i].id+"'>"+data[i].name+"</option>"); 
		    		}
		    		
		    	}
		    	
		    
		    	$('.selectpicker').selectpicker();
	    	
		    },
		    "json");
		
		$('#major').bootstrapValidator({
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
							message : '专业名不能为空'
						},
						stringLength: {
                            max: 50,
                            message: '专业名长度不超过50位'
                        }
					}
				},
				introduce : {
					validators : {
						notEmpty : {
							message : '专业简介不能为空'
						},
						stringLength: {
                            max: 50,
                            message: '专业简介长度不超过50位'
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
					<%@ include  file="/layout/layout.jsp"%>
				</ul>
			</div>
			<!-- /.sidebar-collapse -->
		</div>
		<!-- /.navbar-static-side --> </nav>
		<div id="page-wrapper">
			<div class="graphs">
				<div class="xs box">
					<h3>专业增加</h3>
					<div class="tab-content">
						<div class="tab-pane active" id="horizontal-form">
							<form id="major" class="form-horizontal"
								action="<%=request.getContextPath()%>/education/major/insert"
								accept-charset="UTF-8" method="post">
								<div class="form-group">
									<label for="name" class="col-sm-2 control-label">专业名</label>
									<div class="col-sm-8">
										<input type="text" style="margin-left: -15px"
											class="form-control1" name="name" id="name"
											placeholder="name">
									</div>
								</div>
								<div class="form-group"></div>
								<div class="form-group">
									<label for="introduce" class="col-sm-2 control-label">专业简介</label>
									<div class="col-sm-8">
										<textarea name="introduce" style="margin-left: -15px"
											id="introduce" cols="50" rows="80" class="form-control1"></textarea>
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