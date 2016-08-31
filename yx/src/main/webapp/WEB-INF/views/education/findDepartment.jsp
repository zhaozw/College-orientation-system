
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
<script src="/yx/assets/js/bootstrapValidator.min.js"></script>
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
	var input=$("#dpname").val();
	var url="/yx/education/department/find?"+"dpname="+input;
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
	            tr.append($("<td></td>").html(da.name));
	            tr.append($('<td><button class="btn btn-info btn-sm" onclick="view('+index+')">查看 </button></td>'));
	            tr.append($('<td><button class="btn btn-info btn-sm" onclick="update('+index+')" style="background-color:#27e227">修改 </button></td>'));
	            tr.append($('<td><button class="btn btn-danger btn-sm" onclick="del('+index+')">删除</button></td>'));	            
	            tbody.append(tr);
		});
	},"json");
	
}

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

function  update(i){
	
	$("#id").val(totaldata[i].id);	
	$("#name").val(totaldata[i].name);
	$("#president").val(totaldata[i].president);
	$("#vicePresident").val(totaldata[i].vicePresident);
	$("#address").val(totaldata[i].address);
	$("#phone").val(totaldata[i].phone);
	$("#zipCode").val(totaldata[i].zipCode);
	$("#networkAddress").val(totaldata[i].networkAddress);
	$("#description").val(totaldata[i].description);
	$("#updateModal").modal('show');
	
}

function  view(i){
	
	var tbody=$("#viewModal > div > div > div.modal-body > table > tbody");
    tbody.empty("tr");
	
	var tr = $("<tr></tr>");
        tr.append($("<td></td>").html(totaldata[i].id));
        tr.append($("<td></td>").html(totaldata[i].name));
        tr.append($('<td></td>').html(totaldata[i].president));
        tr.append($('<td></td>').html(totaldata[i].vicePresident));
        tr.append($('<td></td>').html(totaldata[i].address));
        tr.append($('<td></td>').html(totaldata[i].phone));
        tr.append($('<td></td>').html(totaldata[i].zipCode));
        tr.append($('<td></td>').html(totaldata[i].networkAddress)); 
        tr.append($('<td></td>').html(totaldata[i].description));   
        tbody.append(tr);
	$("#viewModal").modal('show');
	
}

function del(i){
	
	if(confirm("你确定要删除当前选择的信息吗？")){
		window.location.href='/yx/education/department/delete?'+'dpid='+totaldata[i].id;
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
			<div class="col-md-12 graphs">
				<div class="xs box">
					<h3>院系查询</h3>
					<div class="bs-example4" data-example-id="contextual-table">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-user"></span> &nbsp;学院名
							</span> <input type="text" class="form-control1 required"
								placeholder="请输入学院名" id="dpname" name="dpname" /> <span
								class="input-group-btn">
								<button class="btn btn-info" onclick="load()"
									style="height: 40px;">
									<span class="glyphicon glyphicon-search"></span> &nbsp;查询
								</button>
							</span>
						</div>
					</div>
					<div class="panel panel-warning" style="border-color: #5bc0b2;"
						data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
						data-widget-static="">
						<div class="panel-heading" style="background-color: #5bc0de;border-color: #5bc0b2;">
							<h2 style="display: inline">学院列表</h2>
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
										<th>学院名称</th>
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
									<div class="modal-content" style="width: 950px; left: -25px;">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">学院信息</h4>
										</div>
										<div class="modal-body">
											<table class="table table-striped table-bordered">
												<thead>
													<tr class="warning">
														<th>id</th>
														<th>学院名称</th>
														<th>院长</th>
														<th>副院长</th>
														<th>学院地址</th>
														<th>联系电话</th>
														<th>邮政编码</th>
														<th>学院网址</th>
														<th>学院简介</th>
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
											<h4 class="modal-title" id="myModalLabel">修改学院信息</h4>
										</div>
										<div class="modal-body">
											<form id="department" class="form-horizontal"
												action="<%=request.getContextPath()%>/education/department/update"
												accept-charset="UTF-8" method="post">
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">id</label>
													<div class="col-sm-8">
														<input readonly="true" type="text" class="form-control1"
															name="id" id="id" placeholder="id">
													</div>
												</div>
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">学院名</label>
													<div class="col-sm-8">
														<input type="text" class="form-control1" name="name"
															id="name" placeholder="name">
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
														<input type="text" class="form-control1"
															name="vicePresident" id="vicePresident"
															placeholder="vicePresident">
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
														<input type="text" class="form-control1"
															name="networkAddress" id="networkAddress"
															placeholder="networkAddress">
													</div>
												</div>
												<div class="form-group">
													<label for="description" class="col-sm-2 control-label">学院简介</label>
													<div class="col-sm-8">
														<textarea name="description" id="description" cols="50"
															rows="80" class="form-control1"></textarea>
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
>>>>>>> branch 'master' of https://github.com/1136535305/yx.git
</html>
