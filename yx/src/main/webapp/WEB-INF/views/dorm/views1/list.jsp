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
        <!-- /.navbar-header -->
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-comments-o"></i><span class="badge">4</span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-menu-header">
                        <strong>Messages</strong>
                        <div class="progress thin">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                <span class="sr-only">40% Complete (success)</span>
                            </div>
                        </div>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="images/1.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                            <span class="label label-info">NEW</span>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="images/2.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                            <span class="label label-info">NEW</span>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="images/3.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="images/4.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="images/5.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="avatar">
                        <a href="#">
                            <img src="images/pic1.png" alt=""/>
                            <div>New message</div>
                            <small>1 minute ago</small>
                        </a>
                    </li>
                    <li class="dropdown-menu-footer text-center">
                        <a href="#">View all messages</a>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown"><img src="images/1.png"><span class="badge">9</span></a>
                <ul class="dropdown-menu">
                    <li class="dropdown-menu-header text-center">
                        <strong>Account</strong>
                    </li>
                    <li class="m_2"><a href="#"><i class="fa fa-bell-o"></i> Updates <span class="label label-info">42</span></a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-envelope-o"></i> Messages <span class="label label-success">42</span></a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-tasks"></i> Tasks <span class="label label-danger">42</span></a></li>
                    <li><a href="#"><i class="fa fa-comments"></i> Comments <span class="label label-warning">42</span></a></li>
                    <li class="dropdown-menu-header text-center">
                        <strong>Settings</strong>
                    </li>
                    <li class="m_2"><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-wrench"></i> Settings</a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-usd"></i> Payments <span class="label label-default">42</span></a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-file"></i> Projects <span class="label label-primary">42</span></a></li>
                    <li class="divider"></li>
                    <li class="m_2"><a href="#"><i class="fa fa-shield"></i> Lock Profile</a></li>
                    <li class="m_2"><a href="#"><i class="fa fa-lock"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
        <form class="navbar-form navbar-right">
            <input type="text" class="form-control" value="Search..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search...';}">
        </form>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">

                    <li>
                        <a href="#"><i class="fa"></i>宿舍管理模块<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#"><i class="fa"></i>宿舍区信息管理<span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="/yx/dorm/list">查看宿舍区信息</a>
                                    </li>
                                    <li>
                                        <a href="yx/dorm/add">增加宿舍区信息</a>
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
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>

                    <li>
                        <a href="#"><i class="fa"></i>管理员管理咨询模块<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../view_consult/search_consult.html">搜索咨询记录</a>
                            </li>
                            <li>
                                <a href="../view_consult/del_consult.html">删除咨询记录</a>
                            </li>
                            <li>
                                <a href="../view_consult/reply_update_consult.html">回复修改咨询记录</a>
                            </li>
                            <li>
                                <a href="../view_consult/type_config.html">类型配置</a>
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
                    <ol class="breadcrumb">
                        <li><a href="#">宿舍管理模块</a></li>
                        <li><a href="#">宿舍区信息管理</a></li>
                        <li class="active">查看宿舍区信息 </li>
                    </ol>
                </div>
            </div>

            <!--2-->
            
            
            
            
           <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
            <div class="panel-heading" style="background-color: #5bc0de;border-color: #5bc0b2;">
              <h2>下面是宿舍区列表信息</h2>
              <div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
                <span class="button-icon has-bg">
                  <i class="ti ti-angle-down"></i>
                </span>
              </div>
            </div>
            <div class="panel-body no-padding" style="display: block;">
              <table class="table table-striped  table-bordered" id="dormArea-list">
                <thead>
                  <tr class="success">
                    <th>
                       <input type="checkbox" class="checkbox" onclick="$('input[name*=\'check\']').prop('checked',this.checked);" />
                    </th>
                    <th>序号</th>
                    <th>宿舍区编号</th>
                    <th>宿舍区名字</th>
                    <th>楼栋数量</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="da" items="${list}">
                  <tr>
                    <td>
                      <input name="check" type="checkbox" class="checkbox">
                    </td>
                    <td>1</td>
                    <td>${da.areaId }</td>
                    <td>${da.areaName}</td>
                    <td>${da.buildingCount}</td>
                    <td>
                      <!-- <a type="button" class="btn-info btn-sm btn details" href="#" 
                      data-toggle="modal" data-target="#detail" detailId="${pb.problemsId}" 
              	>详情</a>  -->
                      <a type="button" class="btn-info btn-sm btn dels" href="#" 
                      data-toggle="modal" data-target="#del"  delId="${da.areaId}" 
                      >删除</a>
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
            
            
            
            
            
            
           <!--  <div class="table-responsive">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>序号</th>
                        <th>宿舍区编号</th>
                        <th>宿舍区名字</th>
                        <th>楼层数量</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>HS112</td>
                        <td>华山区</td>
                        <td>20层</td>
                        <td>
                            <span><a href="../views1/edit_dorm_area.html">修改</a></span>
                            <span><a href="#" data-toggle="modal" data-target="#about">删除</a></span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>WS666</td>
                        <td>五山区</td>
                        <td>10层</td>
                        <td>
                            <span><a href="../views1/edit_dorm_area.html">修改</a></span>
                            <span><a href="#" data-toggle="modal" data-target="#about">删除</a></span>
                        </td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>QL888</td>
                        <td>启林区</td>
                        <td>8层</td>
                        <td>
                            <span><a href="../views1/edit_dorm_area.html">修改</a></span>
                            <span><a href="#" data-toggle="modal" data-target="#about">删除</a></span>
                        </td>
                    </tr>
                  
                    </tbody>
                </table>
            </div>--><!-- /.table-responsive -->

            <!--3-->
 

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





    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>
</body>

<script type="text/javascript">
//功能3：删除数据并使用ajax重写
		$("#dormArea-list").on('click','.dels',function(){
			var a=$(this);
			var areaId=a.attr('delId');
			//alert(problemsId + 'del..');
			console.log(areaId);
			$("#confirmDel").on('click',function(){
				$('#del').modal('hide');
				$('#del').on('hidden.bs.modal',function(){
					//alert("del test"); 
					delData(areaId);
				});
			});
		});
		function delData(areaId){
			var url="/yx/dorm/dormArea/" + areaId + "/del";
			$.post(url,function(delCount){
				if(delCount!=0){
					var url="/yx/dorm/dormArea/list";
					window.location.href=url;
				}else{
					alert("删除失败");
					var url="/yx/dorm/dormArea/list";
					window.location.href=url;
				}
			},"text");
		}
</script>
</html>
