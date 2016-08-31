<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no">
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

<div class="container-fluid">
    <div id="page-wrapper">
        <div class="center-cont">
            <!--<h2 class="center_h2"><a href="#">宿舍区信息管理</a> &raquo; <a href="#" class="active">宿舍区信息列表</a></h2>-->
           <!--1-->
            <div class="grid_3 grid_5">
                <h3>Breadcrumbs</h3>
                <div class="but_list">
                    <ol class="breadcrumb">
                        <li><a href="#">宿舍管理模块</a></li>
                        <li><a href="#">楼层信息管理</a></li>
                        <li class="active">查看宿舍基本信息 </li>
                    </ol>
                </div>
            </div>
            
            <div class="col_1"  style="margin-top:-3em">
            <div class="col-md-12">
            <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="" >
            <div class="panel-heading" style="background-color: #5bc0de;border-color: #5bc0b2;">
              <h2>下面是宿舍基本信息列表</h2>
              <div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
                <span class="button-icon has-bg">
                  <i class="ti ti-angle-down"></i>
                </span>
              </div>
            </div>
            <div class="panel-body no-padding" style="display: block;">
              <table class="table table-striped  table-bordered" id="dorm-list">
                <thead>
                  <tr class="success">
                    <th>
                       <input type="checkbox" class="checkbox" onclick="$('input[name*=\'check\']').prop('checked',this.checked);" />
                    </th> 
                    <th>宿舍区</th>
                    <th>楼栋号</th>
                    <th>楼层号</th>
                    <th>宿舍号</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="d" items="${list}">
                  <tr>
                   <td>
                      <input name="check" type="checkbox" class="checkbox">
                    </td>
                    <td>${d.areaName}</td>
                    <td>${d.buildingId}</td>
                    <td>${d.floorId}</td>
                    <td>${d.dormId }</td>
                    <td>
                      <!-- <a type="button" class="btn-info btn-sm btn details" href="#" 
                      data-toggle="modal" data-target="#detail" detailId="${pb.problemsId}" 
              	>详情</a>  -->
                      <a type="button" class="btn-danger btn-sm btn dels" href="#" 
                      data-toggle="modal" data-target="#del"  delId1="${d.areaId}" 
                      delId2="${d.buildingId}" delId3="${d.floorId}" delId4="${d.dormId}">删除</a>
                    </td>
                  </tr>
                  </c:forEach>
                </tbody>
              </table>

              <nav style="text-align:center">
                <ul class="pagination">
                  <li class="disabled">
                    <a href="#" aria-label="Previous">
                      <span aria-hidden="true">«</span>
                    </a>
                  </li>
                  <li class="active">
                    <a href="#">
                      1
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li class="">
                    <a href="#">
                      2
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li class="">
                    <a href="#">
                      3
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li class="">
                    <a href="#">
                      4
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li class="">
                    <a href="#">
                      5
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li class="">
                    <a href="#">
                      6
                      <span class="sr-only">(current)</span>
                    </a>
                  </li>
                  <li>
                    <a href="#" aria-label="Next">
                      <span aria-hidden="true">»</span>
                    </a>
                  </li>
                </ul>
              </nav>

            </div>
            </div>
        </div>
            <div class="clearfix"></div>
          </div>       

            <!-- 4 -->
            <!--弹出框（模态框）modal-->
           <div class="modal fade" id="del">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">删除宿舍区信息</h4>
                  </div>
                  <div class="modal-body">
                    <p>确定删除将不可恢复！您确定删除该条记录吗？&hellip;</p>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary" id="confirmDel">确定删除</button>
                  </div>
                </div><!-- /.modal-content -->
              </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
     

        </div>
    </div>
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
//功能3：删除数据并使用ajax重写
		$("#dorm-list").on('click','.dels',function(){
			var a=$(this);
			var areaId=a.attr('delId1');
			var buildingId=a.attr('delId2');
			var floorId=a.attr('delId3');
			var dormId=a.attr('delId4');
			//alert(problemsId + 'del..');
			console.log(areaId);
			$("#confirmDel").on('click',function(){
				$('#del').modal('hide');
				$('#del').on('hidden.bs.modal',function(){
					//alert("del test"); 
					delData(areaId,buildingId,floorId,dormId);
				});
			});
		});
		function delData(areaId,buildingId,floorId,dormId){
			var url="/yx/dormModule/dorm/" + "/"+ areaId + "/"+ buildingId + "/"+ floorId + "/"+ dormId + "/del";
			$.post(url,function(delCount){
				if(delCount!=0){
					var url="/yx/dormModule/dorm/list";
					window.location.href=url;
				}else{
					alert("删除失败");
					var url="/yx/dormModule/dorm/list";
					window.location.href=url;
				}
			},"text");
		}
</script>

</html>
