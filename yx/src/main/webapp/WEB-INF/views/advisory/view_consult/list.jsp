<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
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
    <link href="/yx/assets/css/style.css" rel='stylesheet' type='text/css' />
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
    <!-- <link rel="stylesheet" type="text/css" href="../css/all.css"> -->
	<link href="/yx/assets/css/bootstrap-select.min.css" rel="stylesheet">
    <script src="/yx/assets/js/bootstrap-select.min.js"></script>
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

        <!--1-->
        <div class="grid_3 grid_5">
            <h3>Breadcrumbs</h3>
            <div class="but_list">
                <!--<ol class="breadcrumb">-->
                <!--<li class="active">Home</li>-->
                <!--</ol>-->
                <ol class="breadcrumb">
                <li><a href="#">管理员管理咨询模块</a></li>
                <li class="active">搜索咨询记录</li>
                </ol>
            </div>
        </div>
        
            <!-- 333 -->
         <div class="col_1"  style="margin-top:-3em">

        <div class="col-md-12">
          <div class="">
            <div class="control-group  col-md-3">
              <div class="controls">
                <!-- <label class="control-label">
                  <strong>审核状态</strong>
                </label> -->
                <select id="selectAudit" title="== 请选择审核状态    ==" class="selectpicker form-control" data-width="fit">
                  <option></option>
                  <option>通过</option>
                  <option>未通过</option>
                  <option>未审查</option>
                </select>
              </div>
            </div>

            <div class="control-group  col-md-3">
              <div class="controls">
                <select id="selectAuthority" title="== 请选择权限状态 ==" class="selectpicker form-control" data-width="fit">
                 <option></option>
                  <option>全部可见</option>
                  <option>问题不显示</option>
                  <option>仅学生可见</option>
                  <option>不限</option>
                </select>
              </div>
            </div>

             <div class="search">
                <div class="input-append input-prepend">
                    <span class="add-on"><i class="icon-search"></i></span>
                    <div class="col-md-4" style="display:inline;">
                    <input type="text" name="s" id="keyWord" placeholder="请输入关键字"  class="form-control1" style="height:34px;">
                    </div>
                    <input type="button" class="btn btn-info " id="searchBtn" value="搜索"/>
                  <!-- <button  class="btn btn-info">类型配置</button>  -->
                </div>
            </div>
           <!-- <button type="submit" style="margin-top:-4px" class="btn btn-info">Search</button> -->
           
          </div>

          <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
            <div class="panel-heading" style="background-color: #5bc0de;border-color: #5bc0b2;">
              <h2>下面是搜索到的咨询记录信息</h2>
              <div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
                <span class="button-icon has-bg">
                  <i class="ti ti-angle-down"></i>
                </span>
              </div>
            </div>
            <div class="panel-body no-padding" style="display: block;">
              <table class="table table-striped  table-bordered" id="propblem-list">
                <thead>
                  <tr class="success">
                    <th>
                       <input type="checkbox" class="checkbox" onclick="$('input[name*=\'check\']').prop('checked',this.checked);" />
                    </th>
                    <th>咨询编号</th>
                    <th>主题分类</th>
                    <th>内容简介</th>
                    <th>咨询者</th>
                    <th>咨询时间</th>
                    <th>操作</th>
                    <th>操作</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="pb" items="${list}">
                  <tr>
                    <td>
                      <input name="check" type="checkbox" class="checkbox"></td>
                    <td>${pb.problemsId }</td>
                    <td>${pb.problemsTheme.themeName }</td>
                    <td>${pb.content }</td>
                    <td>${pb.userInfoAsk.userName }</td>
                    <td><fmt:formatDate value="${pb.time }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                    <td>
                      <a type="button" class="btn-info btn-sm btn details" href="#" 
                      data-toggle="modal" data-target="#detail" detailId="${pb.problemsId}" 
              	>详情</a>
                     
                    </td>
                    
                     <td>
                     <a type="button" class="btn-danger btn-sm btn dels" href="#" 
                      data-toggle="modal" data-target="#del"  delId="${pb.problemsId }" 
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
                    <h4 class="modal-title">删除信息</h4>
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

            
            <!-- 5 -->
            <!-- 基于模态框实现对话框 -->
            <div class="modal fade  modal-fixed-footer" id="detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">回复/修改</h4>
                  </div>
                  <div class="modal-body">

                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <!-- <thead> -->
                                
                                <!-- </thead> -->
                                
                                <tr>
                                    <th class="th1">主题分类</th>
                                    <td colspan="3" id="d_theme"></td>
                                </tr>
                                <tr>
                                    <th>咨询者</th>
                                    <td colspan="3" id="d_asker"></td>
                                </tr>
                                <tr>
                                    <th class="th1">咨询内容</th>
                                    <td colspan="3" id="d_askContent"></td>
                                </tr>
                                <tr>
                                    <th class="th1">咨询时间</th>
                                    <td colspan="3" id="d_askTime"></td>
                                </tr>
                                <tr>
                                    <th>审核状态</th>
                                    <td colspan="3" id="d_audit">
                                    <span><input type="radio" name="audit11" value="通过">通过</span>
                                    <span><input type="radio" name="audit11" value="不通过">不通过</span>
                                    </td>
                                </tr>
                                <tr>
                                    <th>权限状态</th>
                                     <td colspan="3" id="d_authority">
                                        <span><input type="radio" name="authority11" value="全部可见">全部可见</span>
                                        <span><input type="radio" name="authority11" value="问题不显示">问题不显示</span>
                                        <span><input type="radio" name="authority11" value="仅学生可见">仅学生可见</span>
                                     </td>
                                </tr>
                                <tr>
                                    <th>回复内容</th>
                                    <td colspan="3" id="d_ansContent">
                                        <textarea cols="40" id="d_answer">
                                            
                                        </textarea>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="th1">回复时间</th>
                                    <td colspan="3" id="d_ansTime"></td>
                                </tr>
                                <tr>
                                    <th class="th1">回复人</th>
                                    <td colspan="3" id="d_anser"></td>
                                </tr>
                            </table>
                        </div><!-- /.table-responsive -->
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                  	<button type="button" class="btn btn-info" id="reply">回复</button>
                  </div>
                </div>
              </div>
            </div>



    </div>





    <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#search-btn").click(function(){
		//alert("text about search-btn");
		});
	});
	
	
		/*$("#search-btn").click(function(){
		var searchKey=$("#search-key").val();
		alert(searchKey);
		});*/
		//功能1:ajax请求数据并重写
		$("#searchBtn").on('click', function() {
			search();
		});
		
		function search(){
			
			var keyWord=$("#keyWord").val();
			var audit=$("#selectAudit").val();
			var authority=$("#selectAuthority").val();

			var url="/yx/advisory/search";
			$.get(url,{audit:audit,authority:authority,keyWord:keyWord},function(datas){
				//console.log(datas);
				var tbody=$("#page-wrapper > div.col_1 > div.col-md-12 > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
				tbody.empty("tr");
				
				
				$.each(datas,function(index,datas){
					var tr=$("<tr></tr>");
					var input=$("<input></input>");
					input.attr({name:"check",type:"checkbox",class:"checkbox"});
					var a1=$("<a></a>");
					a1.attr({href:"#",type:"button",class:"btn-info btn-sm btn details"});
					a1.attr("data-toggle","modal")
					 .attr("data-target","#detail")
					 .attr("detailId",datas.problemsId)
					 ;
					var a2=$("<a></a>");
					a2.attr({href:"#",type:"button",class:"btn-danger btn-sm btn dels"});
					a2.attr("data-toggle","modal")
					 .attr("data-target","#del")
					 .attr("delId",datas.problemsId)
					 ;
					tr.append($("<td></td>").append(input));
					tr.append($("<td></td>").html(datas.problemsId));
					tr.append($("<td></td>").html(datas.problemsTheme.themeName));
					tr.append($("<td></td>").html(datas.content));
					tr.append($("<td></td>").html(datas.userInfoAsk.userName));
					//<fmt:formatDate value="${pb.time }" pattern="yyyy-MM-dd HH:mm:ss"/>
					var time=new Date( datas.time ).Format('yyyy-MM-dd hh:mm:ss');
					tr.append($("<td></td>").html(time));
					
					
					tr.append($("<td></td>").html(a1.html("详情")));
					tr.append($("<td></td>").html(a2.html("删除")));
					
					tbody.append(tr);	
				});
							
			},"json");
			
		}
		
		//功能2：ajax请求数据并加载在模态框中
		$("#propblem-list").on('click','.details', function(){
			var a = $(this);
			var problemsId = a.attr('detailId');
			//console.log(problemsId);
			details(problemsId);
		});
		function details(problemsId){
			var url="/yx/advisory/" + problemsId + "/detail";
			$.get(url,function(details){
				//alert(details.time);
				//console.log(details);  
				$("#reply").attr("replyId",details.problemsId);
				$("#d_theme").html(details.problemsTheme.themeName);
				$("#d_asker").html(details.userInfoAsk.userName);
				$("#d_askContent").html(details.content);
				var time=new Date( details.time ).Format('yyyy-MM-dd hh:mm:ss');
				$("#d_askTime").html(time);
				var input1=$("input:radio[name='audit11']").eq(0).val();
				var input11=$("input:radio[name='audit11']").eq(1).val();
				var input2=$("input:radio[name='authority11']").eq(0).val();
				//alert(input2);
				var input22=$("input:radio[name='authority11']").eq(1).val();
				//alert(input22);
				var input222=$("input:radio[name='authority11']").eq(2).val();
				//alert(input222);
				if(input1 == details.audit){
					$("input:radio[name='audit11']").eq(0).attr("checked",true);
				}else if(input11 == details.audit){
					$("input:radio[name='audit11']").eq(1).attr("checked",true);
				}else{
					$("input:radio[name='audit11']").eq(3).attr("checked",true);
				}
				
				if(input2==details.authority){
					$("input:radio[name='authority11']").eq(0).attr("checked",true);
				}else if(input22 == details.authority){
					$("input:radio[name='authority11']").eq(1).attr("checked",true);
				}else if(input222 == details.authority){
					$("input:radio[name='authority11']").eq(2).attr("checked",true);
				}else{
					$("input:radio[name='authority11']").eq(3).attr("checked",true);
					//$("input:radio[name='authority11']").attr("checked",false); //让页面中的radio都置于“未选中”状态
				}
				//alert(input2);
				//$("input:radio[name='audit11']").eq(0).attr("checked",true);
				//$("input:radio[name='authority11']").eq(details.authority).attr("checked",true);
				//$("#d_audit").val(details.audit);
				//$("#d_authority").find("input").val(details.authority);
				if(details.answer){
					$("#d_ansContent").html(details.answer);
				}else{
					
					//$("#d_ansContent").html();
					
					var td1=$("#detail > div > div > div.modal-body > div > table > tbody > tr:nth-child(7) > #d_ansContent");
					td1.remove();
					var tr=$("#detail > div > div > div.modal-body > div > table > tbody > tr:nth-child(7)");
					var td2=$("<td></td>");
					td2.attr({"colspan":3,"id":"d_ansContent"});
					var t=$("<textarea></textarea>");
					t.attr("cols",'40')
					  .attr("id","d_answer");
					
					
					tr.append(td2.append(t));
					
				}
				
				if(details.ansTime){
					$("#d_ansTime").html(new Date( details.ansTime ).Format('yyyy-MM-dd hh:mm:ss'));
				}else{
					$("#d_ansTime").html(null);
				}
				if (details.userInfoAns){
					$("#d_anser").html(details.userInfoAns.userName);
				}else{
					$("#d_anser").html(null);
				}
			},"json");
		}
		
		//功能3：删除数据并使用ajax重写
		$("#propblem-list").on('click','.dels',function(){
			var a=$(this);
			var problemsId=a.attr('delId');
			//alert(problemsId + 'del..');
			console.log(problemsId);
			$("#confirmDel").on('click',function(){
				$('#del').modal('hide');
				$('#del').on('hidden.bs.modal',function(){
					//alert("del test"); 
					delData(problemsId);
				});
			});
		});
		function delData(problemsId){
			var url="/yx/advisory/" + problemsId + "/del";
			$.post(url,function(delCount){
				if(delCount!=0){
					search();
				}else{
					alert("删除失败");
				}
			},"text");
		}
	
		//详情页的单选框
		$(function(){
			//$("#d_audit")
		});
		
		
		/*
		获取单选框的值有三种方式：
		1、$('input:radio:checked').val()；
		2、$("input[type='radio']:checked").val();
		3、$("input[name='rd']:checked").val();
		*/
		
		//回复功能
		$("#reply").on('click',function(){
			var bt=$(this);
			var replyId=bt.attr('replyId');
			
			/*$(function(){
				$("input").click(function(){
					if($(this).attr("checked")){
						var audit=$("input[name='audit11']:checked").val();
						alert("选中了");
					}
				});
			});*/
			
			var audit=$("input[name='audit11']:checked").val();
			var authority = $("input[name='authority11']:checked").val();
			var answer=$("#d_answer").val();
			//alert(answer);
			var ansPersonId=10000;
			//alert(audit);
			//alert(authority);
			reply(replyId,audit,authority,answer,ansPersonId);
		});
		function reply(replyId,audit,authority,answer,ansPersonId){
			var url="/yx/advisory/"+ replyId + "/reply";
			$.post(url,{replyId:replyId,audit:audit,authority:authority,answer:answer,ansPersonId:ansPersonId},function(updateCount){
				if(updateCount!=0){
					var url="/yx/advisory/list";
					window.location.href=url;
				}else{
					alert("更新回复出错");
				}
			});
		}
		
		//时间格式转换
		Date.prototype.Format = function (fmt) { //author: meizz 
		    var o = {
		        "M+": this.getMonth() + 1, //月份 
		        "d+": this.getDate(), //日 
		        "h+": this.getHours(), //小时 
		        "m+": this.getMinutes(), //分 
		        "s+": this.getSeconds(), //秒 
		        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
		        "S": this.getMilliseconds() //毫秒 
		    };
		    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
		    for (var k in o)
		    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
		    return fmt;
		}
		
</script>

</body>
</html>
