<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>查询年级信息</title>
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
	var input=$("#gdname").val();
	if(input == null)
		input="级";
	var url="/yx/education/grade/find?"+"gdname="+input;
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
	$('#grade').bootstrapValidator({
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
						message : '年级名不能为空'
					},
					stringLength: {
                        max: 50,
                        message: '年级名长度不超过50位'
                    }
				}
			}
		}
	});

});

function  update(i){
	
	$("#id").val(totaldata[i].id);	
	$("#name").val(totaldata[i].name);
	$("#updateModal").modal('show');
	
}

function  view(i){
	
	var tbody=$("#viewModal > div > div > div.modal-body > table > tbody");
    tbody.empty("tr");
	
	var tr = $("<tr></tr>");
        tr.append($("<td></td>").html(totaldata[i].id));
        tr.append($("<td></td>").html(totaldata[i].name));
        tr.append($('<td></td>').html(totaldata[i].stuNum));  
        tbody.append(tr);
	$("#viewModal").modal('show');
	
}

function del(i){
	
	if(confirm("你确定要删除当前选择的信息吗？")){
		window.location.href='/yx/education/grade/delete?'+'gdid='+totaldata[i].id;
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
					<h3>年级查询</h3>
					<div class="bs-example4" data-example-id="contextual-table">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-user"></span> &nbsp;年级名
							</span> <input type="text" class="form-control1 required"
								placeholder="请输入年级名" id="gdname" name="gdname" /> <span
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
							<h2 style="display: inline">年级列表</h2>
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
										<th>年级名称</th>
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
									<div class="modal-content" >
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">年级信息</h4>
										</div>
										<div class="modal-body">
											<table class="table table-striped table-bordered">
												<thead>
													<tr class="warning">
														<th>id</th>
														<th>年级名称</th>
														<th>年级学生数量</th>
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
											<h4 class="modal-title" id="myModalLabel">修改年级信息</h4>
										</div>
										<div class="modal-body">
											<form id="grade" class="form-horizontal"
												action="<%=request.getContextPath()%>/education/grade/update"
												accept-charset="UTF-8" method="post">
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">id</label>
													<div class="col-sm-8">
														<input readonly="true" type="text" class="form-control1"
															name="id" id="id" placeholder="id">
													</div>
												</div>
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">年级名</label>
													<div class="col-sm-8">
														<input type="text" class="form-control1" name="name"
															id="name" placeholder="name">
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