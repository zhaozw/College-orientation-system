<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">

                    <li>
                        <a href="#"><i class="fa"></i>宿舍管理模块<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                           <li>
                                <a href="#"><i class="fa"></i>宿舍信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/yx/dormModule/dorm/list">查询宿舍信息列表</a>
                                    </li>
                                    <li>
                                        <a href="/yx/dormModule/dorm/addDorm">添加宿舍信息</a>
                                    </li>
                                </ul>
                            </li>
                            
                            <li>
                                <a href="#"><i class="fa"></i>住宿学生信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                       <a href="/yx/dormModule/dormStu/list">住宿学生信息列表</a>
                                    </li>
                                    <li>
                                        <a href="/yx/dormModule/dormStu/addDormStu">添加住宿学生信息</a>
                                    </li>
                                </ul>
                            </li>
                             <!-- <li>
                                <a href="#"><i class="fa"></i>宿舍区信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="../views1/view_dorm_area.html">查看宿舍区信息</a>
                                    </li>
                                    <li>
                                        <a href="../views1/add_dorm_area.html">增加宿舍区信息</a>
                                    </li>
                                    <li>
                                        <a href="../views1/del_dorm_area.html">删除住户</a>
                                    </li>
                                    <li>
                                        <a href="../views1/edit_dorm_area.html">修改宿舍区信息</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa"></i>楼栋信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="../views2/view_building_d.html">查看楼栋信息</a>
                                    </li>
                                    <li>
                                        <a href="../views2/add_building_d.html">增加楼栋信息</a>
                                    </li>
                                    <li>
                                        <a href="../views2/del_building_d.html">删除楼栋信息</a>
                                    </li>
                                    <li>
                                        <a href="../views2/edit_building_d.html">修改楼栋信息</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa"></i>楼层信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="../views6/view_building_c.html">查看楼层信息</a>
                                    </li>
                                    <li>
                                        <a href="../views6/add_building_c.html">增加楼层信息</a>
                                    </li>
                                    <li>
                                        <a href="../views6/del_building_c.html">删除楼层信息</a>
                                    </li>
                                    <li>
                                        <a href="../views6/edit_building_c.html">修改楼层信息</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa"></i>宿舍基本信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="../views3/view_dorm_basic.html">查看宿舍基本信息</a>
                                    </li>
                                    <li>
                                        <a href="../views3/add_dorm_basic.html">增加宿舍基本信息</a>
                                    </li>
                                    <li>
                                        <a href="../views3/del_dorm_basic.html">删除宿舍基本信息</a>
                                    </li>
                                    <li>
                                        <a href="../views3/edit_dorm_basic.html">修改宿舍基本信息</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa"></i>宿舍学生信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="../views4/view_dorm_stu.html">查看宿舍学生信息</a>
                                    </li>
                                    <li>
                                        <a href="../views4/add_dorm_stu.html">增加宿舍学生信息</a>
                                    </li>
                                    <li>
                                        <a href="../views4/add_dorm_stu.html">不明白？？？批量增加宿舍学生信息</a>
                                    </li>
                                    <li>
                                        <a href="../views4/del_dorm_stu.html">删除宿舍学生信息</a>
                                    </li>
                                    <li>
                                        <a href="../views4/del_dorm_stu_more.html">批量删除宿舍学生信息</a>
                                    </li>
                                    <li>
                                        <a href="../views4/edit_dorm_stu.html">修改宿舍学生信息</a>
                                    </li>
                                </ul>
                            </li>
                           <li>
                                <a href="#"><i class="fa"></i>宿舍迎新物品信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="../views5/view_wel_goods.html">查看宿舍迎新物品信息</a>
                                    </li>
                                    <li>
                                        <a href="../views5/add_wel_goods.html">增加宿舍迎新物品信息</a>
                                    </li>
                                    <li>
                                        <a href="../views5/add_wel_goods_more.html">批量增加宿舍迎新物品信息</a>
                                    </li>
                                    <li>
                                        <a href="../views5/edit_wel_goods.html">修改宿舍迎新物品信息</a>
                                    </li>
                                    <li>
                                        <a href="../views5/del_wel_goods.html">删除宿舍迎新物品信息</a>
                                    </li>
                                    <li>
                                        <a href="../views5/del_wel_goods_more.html">批量删除宿舍迎新物品信息</a>
                                    </li>
                                    <li>
                                        <a href="../views5/set_wel_goods_status.html">设置宿舍迎新物品状态</a>
                                    </li>
                                    <li>
                                        <a href="../views5/set_wel_goods_status_more.html">批量设置宿舍迎新物品状态</a>
                                    </li>
                                </ul>
                            </li>
                            -->
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>

                    <li>
                        <a href="#"><i class="fa"></i>管理员管理咨询模块<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/yx/advisory/list">咨询记录管理</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
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
                        <li><a href="#">楼层信息管理</a></li>
                        <li class="active">增加宿舍信息 </li>
                    </ol>
                </div>
            </div>

            <!--2-->
            <div class="tab-pane active" id="horizontal-form">
                <form class="form-horizontal"  method="post" >
                    
                    <div class="form-group">
                        <label for="disabledinput" class="col-sm-2 control-label">宿舍区</label>
                       <div class="col-sm-8">
                             <select id="selector1" class="form-control1" name="areaName">
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
                        <label for="disabledinput" class="col-sm-2 control-label">楼栋号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="building" name="buildingId">
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">楼层号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="floor" name="floorId">
                        </div>
                    </div>
                     <div class="form-group">
                        <label for="focusedinput" class="col-sm-2 control-label">宿舍号</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control1" id="dorm" name="dormId">
                        </div>
                    </div>
                     <div class="row">
		                <div class="col-sm-8 col-sm-offset-3">
		                  <button class="btn-default btn">Cancel</button>
		                   <button class="btn-info btn" type="submit" id="submit">Submit</button>
		                </div>
		            </div>
                </form>
            </div>
           
    </div>





    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>
</body>

<script type="text/javascript">
	
	$("#submit").on('click',function (e){
		e.preventDefault(); //取消默认事件。不然会提交，不执行ajax
		var areaId=$("#selector1").val();
		var areaName=$("#selector1").find("option:selected").text();
		var buildingId =$("#building").val();
		var floorId = $("#floor").val();
		var dormId =$("#dorm").val();
		add(areaId,areaName,buildingId,floorId,dormId);
	});
	
	function add(areaId,areaName,buildingId,floorId,dormId){
		var url="/yx/dormModule/add1";
		$.post(url,{areaId:areaId,areaName:areaName,buildingId:buildingId,floorId:floorId,dormId:dormId},function(addCount){
			if(addCount!=0){
				var url="/yx/dormModule/dorm/list";
				window.location.href=url;
			}else{
				alert("添加失败");
				var url="/yx/dormModule/dorm/list";
				window.location.href=url;
			}
		});
	}
</script>


</html>
