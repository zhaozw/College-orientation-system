<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Bootstrap Core CSS -->
    <link href="/yx/assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
    <!-- Custom CSS -->
    <!--<link href="/yx/assets/css/style.css" rel='stylesheet' type='text/css' />-->
    <!-- Graph CSS -->
    <link href="/yx/assets/css/lines.css" rel='stylesheet' type='text/css' />
    <link href="/yx/assets/css/font-awesome.css" rel="stylesheet">
    <!-- jQuery -->
    <script src="/yx/assets/js/jquery.min.js"></script>
    <!----webfonts--->
    <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
    <!---//webfonts--->
    <!-- Nav CSS -->
    <link href="/yx/assets/css/custom.css" rel="stylesheet">
    <!-- Metis Menu Plugin JavaScript -->
    <script src="/yx/assets/js/metisMenu.min.js"></script>
    <!-- Graph JavaScript -->
    <script src="/yx/assets/js/d3.v3.js"></script>
    <script src="/yx/assets/js/rickshaw.js"></script>

    <!-- 引入自己的css和js文件-->
    <script src="/yx/assets/js/dorm.js"></script>
    <link href="/yx/assets/css/dorm.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/yx/assets/css/layout.css">
    <link href="/yx/assets/css/style.css" rel='stylesheet' type='text/css' />
    <link type="text/css" rel='stylesheet' href="/yx/assets/css/welcome/welcome.css"/>
    <link type="text/css" rel='stylesheet' href="/yx/assets/css/dorm/hjd.css"/>
    <!-- <link rel="stylesheet" type="text/css" href="/yx/assets/css/all.css"> -->

</head>
<body>
<div id="wrapper">
    <!-- Navigation -->
    <nav class="top1 navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="../cd_index.html">迎新系统</a>
        </div>
        <ul class="user-menu">
        <li class="dropdown pull-right">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <span class="glyphicon glyphicon-user"></span>
            User
            <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="#">
                <span class="glyphicon glyphicon-user"></span>
                Profile
              </a>
            </li>
            <li>
              <a href="#">
                <span class="glyphicon glyphicon-cog"></span>
                Settings
              </a>
            </li>
            <li>
              <a href="#">
                <span class="glyphicon glyphicon-log-out"></span>
                Logout
              </a>
            </li>
          </ul>
        </li>
      </ul>
        
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">

                    <%@ include  file="/layout/layout.jsp"%>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>


    <!-- 以上为头部及左导航栏 -->


    <div id="page-wrapper">
        <div class="center-cont">
            <!--<h2 class="center_h2"><a href="#">宿舍区信息管理</a> &raquo; <a href="#" class="active">宿舍区信息列表</a></h2>-->
            <!--1-->
            <div class="grid_3 grid_5">
                <h3>Breadcrumbs</h3>
                <div class="but_list">
                    <!--<ol class="breadcrumb">-->
                    <!--<li class="active">Home</li>-->
                    <!--</ol>-->
                    <!--<ol class="breadcrumb">-->
                    <!--<li><a href="#">Home</a></li>-->
                    <!--<li class="active">Library</li>-->
                    <!--</ol>-->
                    <ol class="breadcrumb">
                        <li><a href="#">宿舍管理模块</a></li>
                        <li><a href="#">宿舍学生信息管理</a></li>
                        <li class="active">修改宿舍学生信息 </li>
                    </ol>
                </div>
            </div>

            <!--2-->
            <div class="tab-pane active" id="horizontal-form">
                <form class="form-horizontal" method="post" action="<%=request.getContextPath()%>/dormModule/dormStu/${detail.sId}/update">
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">学生姓名</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="stuName" value="${detail.student.studentName }" name="student.studentName">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">学号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="stuId" value="${detail.student.stuId }" name="student.stuId">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="disabledinput" class="col-sm-2 control-label">宿舍区</label>
                       <div class="col-sm-8">
                             <select id="selector1" class="form-control1 selectpicker" name="areaName" value="${detail.d.areaId}">
                                <option></option>
                                <option value="111">华山区</option> <!-- value="112"-->
                                <option value="222">五山区</option>
                                <option value="333">启林区</option>
                                <option value="444">燕山区</option>
                                <option value="555">东区</option>
                                <option value="666">泰山区</option>
                            </select>
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">楼栋号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="building" value="${detail.d.buildingId }" name="d.buildingId">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword" class="col-sm-2 control-label">楼层号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="floor" value="${detail.d.floorId }" name="d.floorId">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">宿舍号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="dorm" value="${detail.d.dormId }" name="d.dormId">
                        </div>
                    </div>
                     <div class="row">
		                 <div class="col-sm-8 col-sm-offset-3">
		                  <button class="btn-default btn">Cancel</button>
		                   <button class="btn-info btn" type="submit" updateId="${detail.sId}" id="sub">Submit</button>
		                </div>
		            </div><br><br>
                </form>
            </div>
           


            <!-- 3 -->


    </div>


<script type="text/javascript">

	$(document).ready(function() {
		var msg = "<%=request.getParameter("errorMsg")%>";
		console.log(msg);
		if (msg && msg != 'null' && msg.length > 0) {
			/* $('#error-msg').modal({
				  keyboard: false
				}); */
				alert(msg);
		}
	});

	
</script>


    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>
</body>


<script type="text/javascript">
	
	$("#sub").on('click',function (e){
		e.preventDefault(); //取消默认事件。不然会提交，不执行ajax
		var submit = $(this);
		var sId=submit.attr('updateId');
		var areaId=$("#selector1").val();
		var areaName=$("#selector1").find("option:selected").text();
		var stuName=$("#stuName").val();
		var stuId=$("#stuId").val();
		var buildingId =$("#building").val();
		var floorId = $("#floor").val();
		var dormId =$("#dorm").val();
		
		add(sId,areaId,areaName,stuName,stuId,buildingId,floorId,dormId);
	});
	
	function add(sId,areaId,areaName,stuName,stuId,buildingId,floorId,dormId){
		var url="/yx/dormModule/dormStu" + "/update/" + sId;
		
		$.post(url,{sId:sId,areaId:areaId,areaName:areaName,stuName:stuName,
		stuId:stuId,buildingId:buildingId,floorId:floorId,dormId:dormId},function(updateCount){
			
			if(updateCount!=0){
				var url="/yx/dormModule/dormStu/list";
				window.location.href=url;
			}else{
				alert("修改失败");
				var url="/yx/dormModule/dormStu/list";
				window.location.href=url;
			}
			
		});
	}
	
	$(function(){
		$("#selector1").find("option[value='"+ ${detail.d.areaId}+"']").attr("selected",true);
	});
</script>


</html>
