<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>查询公布信息</title>
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
	var input=$("#piTitle").val();
	if(input == null)
		input="信息";

	var url="/yx/noticePublish/message/find?"+"piTitle="+input;
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
	            tr.append($("<td></td>").html(da.piTitle));

	            tr.append($('<td><button class="btn btn-info btn-sm" onclick="view('+index+')">查看 </button></td>'));
	            tr.append($('<td><button class="btn btn-info btn-sm" onclick="update('+index+')" style="background-color:#27e227">修改 </button></td>'));
	            tr.append($('<td><button class="btn btn-danger btn-sm" onclick="del('+index+')">删除</button></td>'));	            
	            tbody.append(tr);
		});
	},"json");
	
}

$(function() {
	$('#message').bootstrapValidator({
			message : 'This value is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			fields : {
				piTitle : {
					validators : {
						notEmpty : {
							message : '标题不能为空'
						}
					}
				},
				ciId : {
					validators : {
						notEmpty : {
							message : '所属栏目不能为空'
						}
					}
				},
				
				piConetent : {
					validators : {
						notEmpty : {
							message : '发布内容不能为空'
						}
					}
				}
			}
		});

});

function  update(i){
	var url = "/yx/noticePublish/message/loadColumn";
    $.get(url,function(data) {

    	var div1=$("#message > div:nth-child(4) > div > div");
    	var select=$('<select name="ciId" title="== 请选择栏目 ==" class="selectpicker form-control" id="ciId" data-width="fit"></select>');
    	div1.empty();
    	div1.append(select);
    	var options="";
    	if(data.length>0){ 
    		for(var i=0;i<data.length;i++){ 
    			select.append("<option value='"+data[i].ciId+"'>"+data[i].ciName+"</option>"); 
    		}
    		
    	}
    	
    
    	$('.selectpicker').selectpicker();
    	
    	
    	
    },
    "json");
    $("#piId").val(totaldata[i].piId);
    $("#piTitle").val(totaldata[i].piTitle);
	$("#ciId").val(totaldata[i].ciId);
	$("#piContent").val(totaldata[i].piContent);
   
	$("#updateModal").modal('show');
	
}




function  view(i){
	
	var tbody=$("#viewModal > div > div > div.modal-body > table > tbody:nth-child(2)");
	tbody.empty("tr");
	var tr = $("<tr></tr>");
        tr.append($("<td></td>").html(totaldata[i].piId));
        tr.append($("<td></td>").html(totaldata[i].piTitle));
        tr.append($('<td></td>').html(totaldata[i].aiId));
        tr.append($('<td></td>').html(totaldata[i].ciId)); 
        tr.append($('<td></td>').html(totaldata[i].piDate)); 
         
        tbody.append(tr);
    	var tbody2=$("#viewModal > div > div > div.modal-body > table:nth-child(2) > tbody")
    	tbody2.empty("tr");
    	var tr = $("<tr></tr>");
        tr.append($('<td colspan="5" rowspan="100"></td>').html(totaldata[i].piContent));
         
        tbody2.append(tr);
	$("#viewModal").modal('show');
	
}

function del(i){
	if(confirm("你确定要删除当前选择的信息吗？")){
		window.location.href='/yx/noticePublish/message/delete?'+'piId='+totaldata[i].piId;
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
				<div class="xs">
					<h3>信息查询</h3>
					<div class="bs-example4" data-example-id="contextual-table">
						<div class="input-group">
							<span class="input-group-addon"> <span
								class="glyphicon glyphicon-user"></span> &nbsp;信息名
							</span> <input type="text" class="form-control1 required"
								placeholder="请输入信息标题" id="piTitle" name="piTitle" /> <span
								class="input-group-btn">
								<button class="btn btn-info" onclick="load()"
									style="height: 40px">
									<span class="glyphicon glyphicon-search"></span> &nbsp;查询
								</button>
							</span>
						</div>
					</div>
					<div class="panel panel-warning"
						data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
						data-widget-static="">
						<div class="panel-heading">
							<h2 style="display: inline">信息列表</h2>
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
										<th>#</th>
										<th>标题</th>
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
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
											<h4 class="modal-title" id="myModalLabel">信息详情</h4>
										</div>
										<div class="modal-body">
											<table class="table table-striped table-bordered">
												<thead>
													<tr class="warning">
														<th>id</th>
														<th>标题</th>
														<th>发布人</th>
														<th>栏目</th>
														<th>发布日期</th>
														
													</tr>
												</thead>
												<tbody>
												</tbody>
												
											</table>
											<table class="table table-striped table-bordered">
												<thead>
													<tr class="warning">
														<th>发布内容</th>
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
											<h4 class="modal-title" id="myModalLabel">修改公布信息</h4>
										</div>
										<div class="modal-body">
											<form id="message" class="form-horizontal"
												action="<%=request.getContextPath()%>/noticePublish/message/update"
												accept-charset="UTF-8" method="post">
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">id</label>
													<div class="col-sm-8">
														<input type="hidden" style="margin-left: -15px"
															type="text" class="form-control1" name="piId" id="piId"
															placeholder="piId">
													</div>
												</div>
												<div class="form-group">
													<label for="piTitle" class="col-sm-2 control-label">标题</label>
													<div class="col-sm-8">
														<input type="text" style="margin-left: -15px"
															class="form-control1" name="piTitle" id="piTitle"
															placeholder="piTitle">
													</div>
												</div>
												<div class="form-group">
													<label for="name" class="col-sm-2 control-label">栏目</label>
													<div class="col-xs-2">
														<div class="form-group"></div>
													</div>
												</div>
												<div class="form-group">
													<label for="piContent" class="col-sm-2 control-label">发布内容</label>
													<div class="col-sm-8">
														<textarea type="text" class="		form-control1" name="piContent"
															id="piContent" placeholder="piContent" style="height:1300px"></textarea>
													</div>
												</div>
												
												
												<div class="modal-footer">
													<button type="button" class="btn btn-default"
														data-dismiss="modal">Close</button>
													<button type="submit" class="btn btn-primary">Save
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