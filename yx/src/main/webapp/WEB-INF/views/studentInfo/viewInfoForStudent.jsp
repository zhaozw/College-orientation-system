<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>查看个人信息</title>
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
		var url = "/yx/studentInfo/viewForStudent/"+13340225;
		    $.get(url,function(data) {
		    	totaldata=data;
		    	var tbody=$("#horizontal-form > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
		        tbody.empty("tr");
		    	
		    	var tr = $("<tr></tr>");
		            tr.append($("<td></td>").html(data.stuId));
		            tr.append($("<td></td>").html(data.studentName));
		            tr.append($('<td></td>').html(data.id));
		            tr.append($('<td></td>').html(data.age)); 
		            tr.append($('<td></td>').html(data.people)); 
		            tr.append($('<td></td>').html(data.birthdate)); 
		            tr.append($("<td></td>").html(data.home));
		            tr.append($("<td></td>").html(data.phoneNumber));
		            tr.append($('<td></td>').html(data.fatherName));
		            tr.append($('<td></td>').html(data.fatherWork)); 
		            tr.append($('<td></td>').html(data.fatherPhone)); 
		            tr.append($('<td></td>').html(data.motherName)); 
		            tr.append($("<td></td>").html(data.motherWork));
		            tr.append($("<td></td>").html(data.motherPhone));
		            tbody.append(tr);
		      
		    	
		    },
		    "json");
		    
		

	});
	
	function  update(){
		$("#stuId").val(totaldata.stuId);	
		$("#studentName").val(totaldata.studentName);
		$("#classId").val(totaldata.class1.id);
		$("#id").val(totaldata.id);
		$("#age").val(totaldata.age);
		$("#people").val(totaldata.people);
		$("#birthdate").val(totaldata.birthdate);	
		$("#home").val(totaldata.home);
		$("#phoneNumber").val(totaldata.phoneNumber);
		$("#fatherName").val(totaldata.fatherName);
		$("#fatherWork").val(totaldata.fatherWork);
		$("#fatherPhone").val(totaldata.fatherPhone);
		$("#motherName").val(totaldata.motherName);	
		$("#motherWork").val(totaldata.motherWork);
		$("#motherPhone").val(totaldata.motherPhone);
		$("#updateModal").modal('show');
		
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
				<div class="xs">
					<h3>查看个人信息</h3>
					<div class="tab-content" style="width: 740px; left: -35px;">
						<div class="tab-pane active" id="horizontal-form">


							<div class="panel panel-warning" style="border-color: #5bc0b2;"
								data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
								data-widget-static="">
								<div class="panel-heading"
									style="background-color: #5bc0de; border-color: #5bc0b2;">
									<h2>学生信息</h2>
									<div class="panel-ctrls" data-actions-container=""
										data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
										<span class="button-icon has-bg"> <i
											class="ti ti-angle-down"></i>
										</span>
									</div>
								</div>
								<div class="panel-body no-padding" style="display: block;">
									<table class="table table-striped table-bordered">
										<thead>
											<tr class="warning">
												<th>学号</th>
												<th>学生姓名</th>
												<th>身份证号码</th>
												<th>年龄</th>
												<th>民族</th>
												<th>出生日期</th>
												<th>家庭住址</th>
												<th>联系电话</th>
												<th>父亲姓名</th>
												<th>父亲工作</th>
												<th>父亲联系电话</th>
												<th>母亲姓名</th>
												<th>母亲工作</th>
												<th>母亲联系方式</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
									<div class="pull-right">
										<button type="submit" onclick="update()" class="btn-info btn">修改</button>
										<button class="btn-default btn"
											onclick="location='/yx/studentInfo/index'">返回</button>
									</div>
								</div>
							</div>
							<!--update Modal -->
							<div class="modal fade bs-example-modal-lg" id="updateModal"
								tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
								<div class="modal-dialog modal-lg">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">修改学生信息</h4>
										</div>
										<div class="modal-body">
											<form id="student" class="form-horizontal"
												action="<%=request.getContextPath()%>/studentInfo/updateForStudent"
												accept-charset="UTF-8" method="post">
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">学号</label>
													<div class="col-sm-8">
														<input type="text" readonly="true"
															style="margin-left: -15px" class="form-control1"
															name="stuId" id="stuId" placeholder="stuId">
													</div>
												</div>
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">学生名</label>
													<div class="col-sm-8">
														<input type="text" readonly="true"
															style="margin-left: -15px" class="form-control1"
															name="studentName" id="studentName"
															placeholder="studentName">
													</div>
												</div>
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">所在班级</label>
													<div class="col-sm-8">
														<input type="text" readonly="true"
															style="margin-left: -15px" class="form-control1"
															name="class1.id" id="classId" placeholder="class1.id">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">身份证号码</label>
													<div class="col-sm-8">
														<input type="text" readonly="true"
															style="margin-left: -15px" class="form-control1"
															name="id" id="id" placeholder="id">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">年龄</label>
													<div class="col-sm-8">
														<input type="text" readonly="true"
															style="margin-left: -15px" class="form-control1"
															name="age" id="age" placeholder="age">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">民族</label>
													<div class="col-sm-8">
														<input type="text" readonly="true"
															style="margin-left: -15px" class="form-control1"
															name="people" id="people" placeholder="people">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">家庭住址</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="home" id="home"
															placeholder="home">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">联系电话</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="phoneNumber" id="phoneNumber"
															placeholder="phoneNumber">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">父亲姓名</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="fatherName" id="fatherName"
															placeholder="fatherName">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">父亲工作</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="fatherWork" id="fatherWork"
															placeholder="fatherWork">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">父亲联系电话</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="fatherPhone" id="fatherPhone"
															placeholder="fatherPhone">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">母亲姓名</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="motherName" id="motherName"
															placeholder="motherName">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">母亲工作</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="motherWork" id="motherWork"
															placeholder="motherWork">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">母亲联系方式</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="motherPhone" id="motherPhone"
															placeholder="motherPhone">
													</div>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
													<button type="submit" class="btn btn-info">Save
														changes</button>
												</div>
											</form>
										</div>

									</div>
								</div>
							</div>
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