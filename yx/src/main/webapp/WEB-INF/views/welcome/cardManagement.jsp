<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Validation</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<link href="/yx/assets/css/bootstrap.min.css" rel='stylesheet'
	type='text/css' />
<link href="/yx/assets/css/style.css" rel='stylesheet' type='text/css' />
<link href="/yx/assets/css/font-awesome.css" rel="stylesheet">
<script src="/yx/assets/js/jquery.min.js"></script>
<script src="/yx/assets/js/bootstrap.min.js"></script>
<link href="/yx/assets/css/welcome/welcome.css" type="text/css" rel='stylesheet' />
<link type="text/css" rel='stylesheet' href="/yx/assets/css/welcome/yjq.css"/>

<link href="/yx/assets/css/bootstrap-select.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrap-select.min.js"></script>

<script type="text/javascript">
$(function(){
	
	 var url = "/yx/welcome/findAllDepartmentName";
	    $.get(url,function(data) {

	    	var div1=$("#page-wrapper > div > div.col_1.box > div.col-md-12 > div:nth-child(1) > div > div:nth-child(1) > div");
	    	var select=$('<select title="== 请选择学院 ==" class="selectpicker form-control" id="department" data-width="fit"></select>');
	    	div1.empty();
	    	div1.html(select);
	    	var options="";
	    	if(data.length>0){ 
	    		for(var i=0;i<data.length;i++){ 
	    			select.append("<option>"+data[i]+"</option>"); 
	    		}
	    		
	    	}
	    	
	    
	    	$('.selectpicker').selectpicker();
	    	
	    	$("#department").change(function(){
	    		majorSelectContentChange();
	    	});
	    	
	    },
	    "json");
	    
	    
	    
	    
});


      function majorSelectContentChange(){
var url="/yx/welcome/findAllMajorNameByDeaprtmentName/"+$("#department").val();
$.get(url,
	    function(data) {
	
	var div1=$("#page-wrapper > div > div.col_1.box > div.col-md-12 > div:nth-child(1) > div > div:nth-child(2) > div");
	var select=$('<select title="== 请选择专业 ==" class="selectpicker form-control" id="major" data-width="fit"></select>');
	div1.empty();
	div1.html(select);
	var options="";
	if(data.length>0){ 
		for(var i=0;i<data.length;i++){ 
			select.append("<option>"+data[i]+"</option>"); 
		}
		
	}
	

	$('.selectpicker').selectpicker();
	
	$("#major").change(function(){
		classSelectContentChange();
	});
	
	       
	    },
	    "json");
}
      
      
      
      function classSelectContentChange(){
    	  var url="/yx/welcome/findAllClassNameByMajorName/"+$("#major").val();
    	  $.get(url,
    	  	    function(data) {
    	  	
    	  	var div1=$("#page-wrapper > div > div.col_1.box > div.col-md-12 > div:nth-child(1) > div > div:nth-child(4) > div");
    	  	var select=$('<select title="== 请选择班级 ==" class="selectpicker form-control" id="Class" data-width="fit"></select>');
    	  	div1.empty();
    	  	div1.html(select);
    	  	var options="";
    	  	if(data.length>0){ 
    	  		for(var i=0;i<data.length;i++){ 
    	  			select.append("<option>"+data[i]+"</option>"); 
    	  		}
    	  		
    	  	}
    	  	

    	  	$('.selectpicker').selectpicker();
    	  	
    	  	       
    	  	    },
    	  	    "json");
    	  }

function loadCardInfo() {

    var college = $("#department").val();
    var major = $("#major").val();
    var Class = $("#Class").val();
    var grade = $("#grade").val();

    var url = "/yx/welcome/loadCard/" + college + "/" + major + "/" + grade + "/" + Class;
    $.get(url,
    function(data) {
    
    var tbody = $("#page-wrapper > div > div.col_1 > div.col-md-12 > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
    tbody.empty("tr");
    
    if(data==null||data.length==0){
    	   
    	var insert =$("#page-wrapper > div > div.col_1.box > div.col-md-12 > div:nth-child(1)");
    	var info=$('<div id="insert" class="alert alert-danger" role="alert"></div>').html('<strong>查询失败！</strong>请确认选择项是否正确！');
    	    $("#insert").remove();
    	    insert.after(info); 
   	   return;
    }
       
        

        $.each(data,
        function(index, student) {
        	
            var tr = $("<tr></tr>");
            tr.append($("<td></td>").html(college));
            tr.append($("<td></td>").html(major));
            tr.append($("<td></td>").html(grade));
            tr.append($("<td></td>").html(student.class1.name));
            tr.append($("<td></td>").html(student.studentName));
            tr.append($("<td></td>").html(student.oneCardPass.oneCardPassId));

            if (student.studentStatus.oneCard == 0) {
                var cardstatus = "未领取";
                tr.append($("<td></td>").attr("id", student.stuId).html(cardstatus));
                tr.append($("<td></td>").attr("id", 'btnId' + student.stuId).html("<a type='button' class='btn-info btn-sm btn'  onclick='updateCardStatusByStuId(" + student.stuId + ")'>领取</a>"));
            } else {
                var cardstatus = "已领取";
                tr.append($("<td></td>").html(cardstatus));
                tr.append($("<td></td>").html('<a type="button" class="btn-info btn-sm btn" disabled=“disabled”>领取</a>'));

            }
            tbody.append(tr);
            
            
            var insert =$("#page-wrapper > div > div.col_1.box > div.col-md-12 > div:nth-child(1)");
        	var info=$('<div id="insert" class="alert alert-success alert-dismissible" role="alert"></div>').html(' <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button><strong>查询成功！</strong>');
        	    $("#insert").remove();
        	    insert.after(info); 
        });

    },
    "json");

}

function updateCardStatusByStuId(stuId) {
    var url = "/yx/welcome/updateCardStatusByStuId" + "/" + stuId;
    $.get(url,
    function(data) {
        $("#" + stuId).html("已领取");
        $("#btnId" + stuId + " > " + "a").attr("disabled", "disabled");
    },
    "text");
}
</script>


</head>
<body>
	<div id="wrapper">
		<nav
			class="top1 navbar navbar-default navbar-static-top  navbar-inverse"
			role="navigation">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html">迎新系统</a>
		</div>
		<ul class="user-menu">
			<li class="dropdown pull-right"><a href="#"
				class="dropdown-toggle" data-toggle="dropdown"> <span
					class="glyphicon glyphicon-user"></span> User <span class="caret"></span>
			</a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="#"> <span class="glyphicon glyphicon-user"></span>
							Profile
					</a></li>
					<li><a href="#"> <span class="glyphicon glyphicon-cog"></span>
							Settings
					</a></li>
					<li><a href="/yx/logout"> <span class="glyphicon glyphicon-log-out"></span>
							Logout
					</a></li>
				</ul></li>
		</ul>

		</nav>
		<div class="navbar-default sidebar" role="navigation"
			style="min-height: 48em">
			<div class="sidebar-nav navbar-collapse">
				<ul class="nav" id="side-menu">
					<%@ include  file="/layout/layout.jsp"%>
				  </ul>
			   </div>
		</div>
		<div id="page-wrapper" style="background-color: #f2f4f8">
			<div class="graphs">

				<div class="col_3">
					<div class="col-md-12">
						<div class="r3_counter_box" style="margin-left: -14px;">
							<div class="stats">
								<h5>
									<strong>一卡通发放管理</strong>
								</h5>
							</div>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>

				<div class="col_1  box" style="margin-top: 1em">

					<div class="col-md-12">
						<div>

							<div class="row">
								<div class="col-xs-2">
									<div class="form-group">
										<select title="== 请选择学院 ==" class="selectpicker form-control"
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
										<select title="== 请选择专业 ==" class="selectpicker form-control"
											id="major" data-width="fit">
											<option>软件工程</option>
											<option>网络工程</option>
											<option>计算机网络</option>
										</select>
									</div>
								</div>

								<div class="col-xs-2">
									<div class="form-group">
										<select title="== 请选择年级 ==" class="selectpicker form-control"
											id="grade" data-width="fit">
											<option>2013级</option>
											<option>2014级</option>
											<option>2015级</option>
											<option>2016级</option>
										</select>
									</div>
								</div>

								<div class="col-xs-2">
									<div class="form-group">
										<select title="== 请选择班级 ==" class="selectpicker form-control"
											id="Class" data-width="fit">
											<option>R1</option>
											<option>R2</option>
											<option>R3</option>
											<option>R4</option>
										</select>
									</div>
								</div>

								<div class="col-xs-2">
									<button class="btn btn-info" onclick="loadCardInfo()">Search</button>
								</div>
							</div>

						</div>

						<div class="panel panel-warning" style="border-color: #5bc0b2;"
							data-widget="{&quot;draggable&quot;: &quot;false&quot;}"
							data-widget-static="">
							<div class="panel-heading"
								style="background-color: #5bc0de; border-color: #5bc0b2;">
								<h2>下面是查询到的一卡通领取信息</h2>
								<div class="panel-ctrls" data-actions-container=""
									data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
									<span class="button-icon has-bg"> <i
										class="ti ti-angle-down"></i>
									</span>
								</div>
							</div>
							<div class="panel-body no-padding" style="display: block;">
								<table class="table table-striped  table-bordered">
									<thead>
										<tr class="success">
											<th>学院</th>
											<th>专业</th>
											<th>年级</th>
											<th>班级</th>
											<th>姓名</th>
											<th>一卡通卡号</th>
											<th>状态</th>
											<th>操作</th>
										</tr>
									</thead>
									<tbody>
									</tbody>
								</table>
							</div>

						</div>

					</div>
					<nav style="text-align:center">
					<ul class="pagination">
						<li class="disabled"><a href="#" aria-label="Previous"> <span
								aria-hidden="true">«</span>
						</a></li>
						<li class="active"><a href="#"> 1 <span class="sr-only">(current)</span>
						</a></li>
						<li class=""><a href="#"> 2 <span class="sr-only">(current)</span>
						</a></li>
						<li class=""><a href="#"> 3 <span class="sr-only">(current)</span>
						</a></li>
						<li class=""><a href="#"> 4 <span class="sr-only">(current)</span>
						</a></li>
						<li class=""><a href="#"> 5 <span class="sr-only">(current)</span>
						</a></li>
						<li class=""><a href="#"> 6 <span class="sr-only">(current)</span>
						</a></li>
						<li><a href="#" aria-label="Next"> <span
								aria-hidden="true">»</span>
						</a></li>
					</ul>
					</nav>
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
	<link href="/yx/assets/css/custom.css" rel="stylesheet">
	<script src="/yx/assets/js/metisMenu.min.js"></script>
	<script src="/yx/assets/js/custom.js"></script>
</body>
</html>