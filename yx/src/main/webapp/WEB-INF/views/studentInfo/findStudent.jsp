<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>查询学生信息</title>
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
<script src="/yx/assets/js/bootstrapValidator.min.js"></script>
<link href="/yx/assets/css/bootstrap-select.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrap-select.min.js"></script>
<script>
/*
var totaldata="";
function jumpView(index){
	    $.post('/yx/education/department/viewDepartment', {'department':totaldata[index]},
	    function(cdata) {
	        console.log('ok', cdata)
	    });
}*/

function load(){
	var input=$("#Class").val();
	if(input == null)
		input=1;
	var url="/yx/studentInfo/find?"+"clid="+input;
	$.get(url,function(data){
		totaldata=data;
		if(data.length==0){		
			alert("系统不存在相关数据！");
			return;
		}
		
		var tbody=$("#page-wrapper > div > div.xs > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
		    tbody.empty("tr");
		$.each(data,function(index,da){
			
			var tr = $("<tr></tr>");
	            tr.append($("<td></td>").html(index));
	            tr.append($("<td></td>").html(da.class1.grade.name));
	            tr.append($("<td></td>").html(da.class1.major.department.name));
	            tr.append($("<td></td>").html(da.class1.major.name));
	            tr.append($("<td></td>").html(da.class1.name));
	            tr.append($("<td></td>").html(da.studentName));
	            tr.append($('<td><button class="btn btn-info btn-sm" onclick="view('+index+')">查看 </button></td>'));
	            tr.append($('<td><button class="btn btn-info btn-sm" onclick="update('+index+')" style="background-color:#27e227">修改 </button></td>'));
	            tr.append($('<td><button class="btn btn-danger btn-sm" onclick="del('+index+')">删除</button></td>'));	            
	            tbody.append(tr);
		});
	},"json");
	
}

$(function() {
	var url = "/yx/education/major/loadDepartment";
    $.get(url,function(data) {

    	var div1=$("#page-wrapper > div > div.xs > div.bs-example4 > div > div:nth-child(2) > div");
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
    		loadMajorSelectContentChange();
    	});
    	
    },
    "json");
    
    var url = "/yx/education/class/loadGrade";
    $.get(url,function(data) {

    	var div1=$("#page-wrapper > div > div.xs > div.bs-example4 > div > div:nth-child(1) > div");
    	var select=$('<select style="margin-left: -15px" title="请选择年级" class="selectpicker form-control" id="grade" data-width="fit"></select>');
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
	$('#student').bootstrapValidator({
		message : 'This value is not valid',
		feedbackIcons : {
			valid : 'glyphicon glyphicon-ok',
			invalid : 'glyphicon glyphicon-remove',
			validating : 'glyphicon glyphicon-refresh'
		},
		fields : {
			stuId : {
				validators : {
					notEmpty : {
						message : '学号名不能为空'
					}
				}
			},
			studentName : {
				validators : {
					notEmpty : {
						message : '学生姓名不能为空'
					}
				}
			},
			id : {
				validators : {
					notEmpty : {
						message : '身份证号码不能为空'
					},
					stringLength: {
                        min: 18,
                        max: 18,
                        message: '身份证号码长度须为18位'
                    }
				}
			},
			age : {
				validators : {
					notEmpty : {
						message : '年龄不能为空'
					},
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: '年龄只能由数字组成'
                    }
				}
			},
			people : {
				validators : {
					notEmpty : {
						message : '民族不能为空'
					}
				}
			},
			birthdate : {
				validators : {
					notEmpty : {
						message : '出生日期不能为空'
					}
				}
			}
		}
	});

});

function loadMajorSelectContentChange(){
	var url="/yx/education/major/loadMajor/"+$("#department").val();
	$.get(url,
		    function(data) {
		
		var div1=$("#page-wrapper > div > div.xs > div.bs-example4 > div > div:nth-child(3) > div");
		var select=$('<select title="请选择专业" class="selectpicker form-control" id="major" data-width="fit"></select>');
		div1.empty();
		div1.html(select);
		var options="";
		if(data.length>0){ 
			for(var i=0;i<data.length;i++){ 
				select.append("<option value='"+data[i].id+"'>"+data[i].name+"</option>"); 
			}
			
		}
		

		$('.selectpicker').selectpicker();
		
		     
		$("#major").change(function(){
			loadClassSelectContentChange();
		});
		    },
		    "json");
	}

function loadClassSelectContentChange(){
	  var url="/yx/education/class/loadClass/"+$("#major").val()+"/"+$("#grade").val();
	  $.get(url,
	  	    function(data) {
	  	
	  	var div1=$("#page-wrapper > div > div.xs > div.bs-example4 > div > div:nth-child(4) > div");
	  	var select=$('<select name="clid" title="请选择班级" class="selectpicker form-control" id="Class" data-width="fit"></select>');
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

function  update(i){
	var url = "/yx/education/major/loadDepartment";
    $.get(url,function(data) {

    	var div1=$("#student > div:nth-child(4) > div:nth-child(3) > div");
    	var select=$('<select title="请选择学院" class="selectpicker form-control" id="departmentByUpdate" data-width="fit"></select>');
    	div1.empty();
    	div1.html(select);
    	var options="";
    	if(data.length>0){ 
    		for(var i=0;i<data.length;i++){ 
    			select.append("<option value='"+data[i].id+"'>"+data[i].name+"</option>"); 
    		}
    		
    	}
    	
    
    	$('.selectpicker').selectpicker();
    	
    	$("#departmentByUpdate").change(function(){
    		majorSelectContentChange();
    	});
    	
    },
    "json");
    
    var url = "/yx/education/class/loadGrade";
    $.get(url,function(data) {

    	var div1=$("#student > div:nth-child(4) > div:nth-child(2) > div");
    	var select=$('<select style="margin-left: -15px" title="请选择年级" class="selectpicker form-control" id="gradeByUpdate" data-width="fit"></select>');
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
	
	$("#stuId").val(totaldata[i].stuId);	
	$("#studentName").val(totaldata[i].studentName);
	$("#class1.id").val(totaldata[i].class1.id);
	$("#id").val(totaldata[i].id);
	$("#age").val(totaldata[i].age);
	$("#people").val(totaldata[i].people);
	$("#birthdate").val(totaldata[i].birthdate);	
	$("#home").val(totaldata[i].home);
	$("#phoneNumber").val(totaldata[i].phoneNumber);
	$("#fatherName").val(totaldata[i].fatherName);
	$("#fatherWork").val(totaldata[i].fatherWork);
	$("#fatherPhone").val(totaldata[i].fatherPhone);
	$("#motherName").val(totaldata[i].motherName);	
	$("#motherWork").val(totaldata[i].motherWork);
	$("#motherPhone").val(totaldata[i].motherPhone);
	$("#updateModal").modal('show');
	
}

function majorSelectContentChange(){
	var url="/yx/education/major/loadMajor/"+$("#departmentByUpdate").val();
	$.get(url,
		    function(data) {
		
		var div1=$("#student > div:nth-child(4) > div:nth-child(4) > div");
		var select=$('<select title="请选择专业" class="selectpicker form-control" id="majorByUpdate" data-width="fit"></select>');
		div1.empty();
		div1.html(select);
		var options="";
		if(data.length>0){ 
			for(var i=0;i<data.length;i++){ 
				select.append("<option value='"+data[i].id+"'>"+data[i].name+"</option>"); 
			}
			
		}
		

		$('.selectpicker').selectpicker();
		
		     
		$("#majorByUpdate").change(function(){
			classSelectContentChange();
		});
		    },
		    "json");
	}

function classSelectContentChange(){
	  var url="/yx/education/class/loadClass/"+$("#majorByUpdate").val()+"/"+$("#gradeByUpdate").val();
	  $.get(url,
	  	    function(data) {
	  	
	  	var div1=$("#student > div:nth-child(4) > div:nth-child(5) > div");
	  	var select=$('<select name="class1.id" title="请选择班级" class="selectpicker form-control" id="ClassByUpdate" data-width="fit"></select>');
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

function  view(i){
	
	var tbody=$("#viewModal > div > div > div.modal-body > table > tbody");
    tbody.empty("tr");
	
	var tr = $("<tr></tr>");
        tr.append($("<td></td>").html(totaldata[i].stuId));
        tr.append($("<td></td>").html(totaldata[i].studentName));
        tr.append($('<td></td>').html(totaldata[i].id));
        tr.append($('<td></td>').html(totaldata[i].age)); 
        tr.append($('<td></td>').html(totaldata[i].people)); 
        tr.append($('<td></td>').html(totaldata[i].birthdate)); 
        tr.append($("<td></td>").html(totaldata[i].home));
        tr.append($("<td></td>").html(totaldata[i].phoneNumber));
        tr.append($('<td></td>').html(totaldata[i].fatherName));
        tr.append($('<td></td>').html(totaldata[i].fatherWork)); 
        tr.append($('<td></td>').html(totaldata[i].fatherPhone)); 
        tr.append($('<td></td>').html(totaldata[i].motherName)); 
        tr.append($("<td></td>").html(totaldata[i].motherWork));
        tr.append($("<td></td>").html(totaldata[i].motherPhone));
        tbody.append(tr);
	$("#viewModal").modal('show');
	
}

function del(i){
	
	if(confirm("你确定要删除当前选择的信息吗？")){
		window.location.href='/yx/studentInfo/delete?'+'stuid='+totaldata[i].stuId;
	}
	
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
			<div class="col-md-12 graphs">
				<div class="xs box">
					<h3>学生查询</h3>
					<div class="bs-example4" data-example-id="contextual-table">
						<div class="input-group">
							<div class="col-xs-2">
								<div class="form-group">
									<select title="请选择年级 " class="selectpicker form-control"
										id="grade" data-width="fit">
										<option>2013级</option>
										<option>2014级</option>
										<option>2015级</option>
									</select>
								</div>
							</div>
							<div class="col-xs-2">
								<div class="form-group">
									<select title="请选择学院" class="selectpicker form-control"
										id="department" data-width="fit">
										<option>信息学院</option>
										<option>软件学院</option>
										<option>农学院</option>
										<option>外国语学院</option>
									</select>
								</div>
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
							<div class="col-xs-2">
								<div class="form-group">
									<select title="请选择班级" class="selectpicker form-control"
										id="Class" data-width="fit">
										<option>R1</option>
									</select>
								</div>
							</div>
							<div class="col-xs-2">
								<button class="btn btn-info" onclick="load()">Search</button>
							</div>
						</div>
					</div>
					<div class="panel panel-warning" style="border-color: #5bc0b2;"
						data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
						data-widget-static="">
						<div class="panel-heading" style="background-color: #5bc0de;border-color: #5bc0b2;">
							<h2 style="display: inline">学生列表</h2>
							<div class="panel-ctrls" data-actions-container=""
								data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
								<span class="button-icon has-bg"><i
									class="ti ti-angle-down"></i></span>
							</div>

						</div>
						<div class="panel-body no-padding" style="display: block;">
							<table class="table table-striped  table-bordered">
								<thead>
									<tr class="warning">
										<th>选项</th>
										<th>年级</th>
										<th>学院</th>
										<th>专业</th>
										<th>班级</th>
										<th>学生姓名</th>
										<th>查看</th>
										<th>修改</th>
										<th>删除</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>

							<!--view Modal -->
							<div class="modal fade bs-example-modal-lg" id="viewModal"
								tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
								<div class="modal-dialog modal-lg">
									<div class="modal-content" style="width: 975px; left: -35px;">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">学生信息</h4>
										</div>
										<div class="modal-body">
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
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default"
												data-dismiss="modal">Close</button>
										</div>

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
												action="<%=request.getContextPath()%>/studentInfo/update"
												accept-charset="UTF-8" method="post">
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">学号</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															readonly="true" class="form-control1" name="stuId" id="stuId"
															placeholder="stuId">
													</div>
												</div>
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">学生名</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="studentName" id="studentName"
															placeholder="studentName">
													</div>
												</div>
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">所在班级</label>
													<div class="col-xs-2">
														<div class="form-group">
															<select title="请选择年级"
																class="selectpicker form-control" id="grade"
																data-width="fit">
																<option>2013级</option>
																<option>2014级</option>
																<option>2015级</option>
															</select>
														</div>
													</div>
													<div class="col-xs-2">
														<div class="form-group">
															<select title="请选择学院"
																class="selectpicker form-control" id="department"
																data-width="fit">
																<option>信息学院</option>
																<option>软件学院</option>
																<option>农学院</option>
																<option>外国语学院</option>
															</select>
														</div>
													</div>
													<div class="col-xs-2">
														<div class="form-group">
															<select title="请选择专业"
																class="selectpicker form-control" id="major"
																data-width="fit">
																<option>软件工程</option>
																<option>网络工程</option>
																<option>计算机网络</option>
															</select>
														</div>
													</div>
													<div class="col-xs-2">
														<div class="form-group">
															<select title="请选择班级"
																class="selectpicker form-control" id="Class"
																data-width="fit">
																<option>R1</option>
															</select>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">身份证号码</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="id" id="id" placeholder="id">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">年龄</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="age" id="age"
															placeholder="age">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" class="col-sm-2 control-label">民族</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="people" id="people"
															placeholder="people">
													</div>
												</div>
												<div class="form-group">
													<label for="teacher" type="date"
														class="col-sm-2 control-label">出生日期</label>
													<div class="col-sm-8">
														<input type="date" style="margin-left: -15px"
															class="form-control1" name="birthdate" id="birthdate"
															placeholder="birthdate" />
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
															placeholder="id">
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