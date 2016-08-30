<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户信息管理</title>
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

<link type="text/css" rel='stylesheet' href="/yx/assets/css/welcome/welcome.css" />
<link type="text/css" rel='stylesheet' href="/yx/assets/css/welcome/yjq.css"/>
<link href="/yx/assets/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrapValidator.min.js"></script>
<link href="/yx/assets/css/bootstrap-select.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrap-select.min.js"></script>

<script type="text/javascript">

$(function() {

	
    $('#form2').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	searchUserName: {
                validators: {
                    notEmpty: {
                        message: '用户名称不能为空！'
                    }
                }
            }
        }
    }).on('success.form.bv',
    function(e) {
        e.preventDefault();
        
        var userName = $("#searchUserName").val();
        var url = "/yx/account/loadUserListByName/" + userName;
        $.get(url,
        function(userList) {
				
        	
        	dataDeal(userList);

        },
        "json");

    });
    
    
    $('#addUserForm').bootstrapValidator({
        message: '该值不能为空!',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            userName: {
                validators: {
                    notEmpty: {
                        message: '用户名称不能为空！'
                    }
                }
            },
            userId: {
                validators: {
                    notEmpty: {
                        message: '用户ID不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: '用户ID只能由数字组成'
                    }
                }
            },
            age: {
                validators: {
                    notEmpty: {
                        message: '用户年龄不能为空！'
                    }
                }
            }
            ,
            pwd: {
                validators: {
                    notEmpty: {
                        message: '用户密码不能为空！'
                    }
                }
            }
            ,
            userAuth: {
                validators: {
                    notEmpty: {
                        message: '至少选择一项权限！'
                    }
                }
            }
        }
    }).on('success.form.bv',
    function(e) {
    	 e.preventDefault();
    	  $("#addUserModal").modal("hide");
    	  var url = "/yx/account/addUser";
          $.post(url,{
        	  "userName":$("#userName").val(),
        	  "userId":$("#userId").val(),
        	  "userAuth":$("#userAuth").val().join(","),
        	  "age":$("#age").val(),
        	  "pwd":$("#pwd").val()
          },
          function(data) {
        	
        	  
          },
          "json");
       
      });
    	
   
    

    $('#modifiedUserForm').bootstrapValidator({
        message: '该值不能为空!',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	modifiedUserName: {
                validators: {
                    notEmpty: {
                        message: '用户名称不能为空！'
                    }
                }
            },
            modifiedUserId: {
                validators: {
                    notEmpty: {
                        message: '用户ID不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: '用户ID只能由数字组成'
                    }
                }
            },
            modifiedAge: {
                validators: {
                    notEmpty: {
                        message: '用户年龄不能为空！'
                    }
                }
            }
            ,
            modifiedPwd: {
                validators: {
                    notEmpty: {
                        message: '用户密码不能为空！'
                    }
                }
            }
            ,
            modifiedUserAuth: {
                validators: {
                    notEmpty: {
                        message: '至少选择一项权限！'
                    }
                }
            }
        }
    }).on('success.form.bv',
    function(e) {
    	
    	e.preventDefault();
  	  $("#modifiedUserModal").modal("hide");
  	  var url = "/yx/account/modifiedUser";
        $.post(url,{
      	  "modifiedUserName":$("#modifiedUserName").val(),
      	  "modifiedUserId":$("#modifiedUserId").val(),
      	  "modifiedUserAuth":$("#modifiedUserAuth").val().join(","),
      	  "modifiedAge":$("#modifiedAge").val(),
      	  "modifiedPwd":$("#modifiedPwd").val()
        },
        function(data) {
      	
      	  alert("修改成功!");
        },
        "json");
    	
    	

    });
    

    loadRoleList();
    
    function loadRoleList(){
    	
    	
   	 var url = "/yx/account/loadRoleList" ;
        $.get(url,
        function(data) {
				
        	
       	 roleList=data;
       	 
       	 
       	 
       	var div1=$("#addUserForm > div.modal-body > div:nth-child(5)");
    		var label=$('<label for="modifiedUserAuth" style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配角色<sup>*</sup></strong></label>');
    		var select=$('<select class="selectpicker form-control col-md-3" name="userAuth"  id="userAuth" multiple></select>');
    		div1.empty();
    		
    	  	if(roleList.length>0){ 
    	  		for(var i=0;i<roleList.length;i++){ 
    	  			select.append("<option  value='"+roleList[i].roleId+"'>"+roleList[i].roleName+"</option>"); 
    	  		}
    	  		
    	  	}
    	  	div1.append(label);
    		div1.append(select);
    	  	$('.selectpicker').selectpicker();

        },
        "json");

   
    	
    	
    }
    
    
});

    
	function dataDeal(userList){
		 var tbody = $("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
		 var insert=$("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.clearfix");
         	 tbody.empty("tr");
             $("#insert").remove();
             
		if(userList.length==0){
	          
	           var info=$('<div id="insert" class="alert alert-danger" user="alert"  style="margin-top: 20px;margin-bottom: 30px;"></div>').html('<strong>查询失败！</strong>该用户名称不存在！');
		           insert.after(info); 
	    	   return;
	       }else{
	        tempUserListData=userList;
	       }
		 
		
		

        $.each(userList,
        function(index, user) {
        	
        	var tr = $('<tr id="tr'+user.userId+'"></tr>');
        	tr.append($("<td></td>").html("序号"+index));
            tr.append($("<td></td>").html(user.userId));
            tr.append($("<td></td>").html(user.userName));
            tr.append($("<td></td>").html(user.age));
            tr.append($("<td></td>").html(user.pwd));
            
            
            var td=$("<td></td>");
            var div=$('<div class="dropdown"></div>');
            var button=$('<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">          角色列表                    <span class="caret"></span></button>');
            var ul=$('<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"></ul>');
            
            
           
            $.each(user.roleList,
                    function(index, role) {
            	var li=$('<li><a href="#">'+role.roleName+'</a></li>');
            	ul.append(li);
            });
            td.append(div);
            div.append(button);
            div.append(ul);
            
            tr.append(td);
            tr.append($("<td></td>").html('<a onclick="modifiedUserByUserId('+index+')" type="button" class="btn-warning btn-sm btn" >修改</a>'));
            tr.append($("<td></td>").html('<a onclick="deleteUserByUserId('+user.userId+')"  type="button" class="btn-danger btn-sm btn" >删除用户</a>'));
            
            tbody.append(tr);
            
           
        	
        });
      
        var info=$('<div id="insert" class="alert alert-success" style="margin-top: 20px;margin-bottom: 30px;" user="alert"></div>').html('<strong>查询成功！</strong>以下是查询到的结果！');
        insert.after(info);
	}
	
	
	
	
	function deleteUserByUserId(userId){
		
	        var url = "/yx/account/deleteUserByUserId/" + userId;
	        $.get(url,
	        function(data) {
					
	        	if(data>0){
	        	
	        		$("#tr"+userId).remove();
	        	}
	        	

	        },
	        "json");
		
		
	}
	

	
	var tempUserListData="";
	var roleList="";
	function modifiedUserByUserId(index){
		var userData=tempUserListData[index];
		$("#modifiedUserId").val(userData.userId);
		$("#modifiedUserName").val(userData.userName);
		$("#modifiedAge").val(userData.age);
		$("#modifiedPwd").val(userData.pwd);
		
		var div1=$("#modifiedUserForm > div.modal-body > div:nth-child(3)");
		var label=$('<label for="modifiedUserAuth" style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配角色<sup>*</sup></strong></label>');
		var select=$(' <select class="selectpicker form-control col-md-3" name="modifiedUserAuth"  id="modifiedUserAuth" multiple></select>');
		div1.empty();
		
		if(roleList.length>0){ 
 	  		for(var i=0;i<roleList.length;i++){ 
 	  			select.append("<option  value='"+roleList[i].roleId+"'>"+roleList[i].roleName+"</option>");
 	  		}
 	  		
 	  	}
	  
	  	
	  
	  	var arr=[];
        $.each(userData.roleList,
                function(index, role) {
        	arr.push(role.roleId);
        });
        
        
       
	  	
	  	div1.append(label);
		div1.append(select);
	  	$('#modifiedUserAuth').val(arr);
	  	$('#modifiedUserAuth').selectpicker('render');
		
	  	
	  	
	  	
		$("#modifiedUserModal").modal("show");
	}
	
	
</script>


</head>
<body>
  <div id="wrapper">
    <!-- Navigation -->
    <nav class="top1 navbar navbar-default navbar-static-top  navbar-inverse" user="navigation">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="index.html">迎新系统</a></div>
      <ul class="user-menu">
        <li class="dropdown pull-right">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <span class="glyphicon glyphicon-user"></span>User
            <span class="caret"></span></a>
          <ul class="dropdown-menu" user="menu">
            <li>
              <a href="#">
                <span class="glyphicon glyphicon-user"></span>Profile</a>
            </li>
            <li>
              <a href="#">
                <span class="glyphicon glyphicon-cog"></span>Settings</a>
            </li>
            <li>
              <a href="/yx/logout">
                <span class="glyphicon glyphicon-log-out"></span>Logout</a>
            </li>
          </ul>
        </li>
      </ul>
    </nav>
    <div class="navbar-default sidebar" user="navigation" style="min-height: 48em">
      <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
          <li>
            <a href="index.html">
              <i class="fa fa-dashboard fa-fw nav_icon"></i>Dashboard</a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-laptop nav_icon"></i>Layouts
              <span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="grids.html">Grid System</a></li>
            </ul>
            <!-- /.nav-second-level --></li>
          <li>
            <a href="#">
              <i class="fa fa-indent nav_icon"></i>Menu Levels
              <span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="graphs.html">Graphs</a></li>
              <li>
                <a href="typography.html">Typography</a></li>
            </ul>
            <!-- /.nav-second-level --></li>
          <li>
            <a href="#">
              <i class="fa fa-envelope nav_icon"></i>Mailbox
              <span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="inbox.html">Inbox</a></li>
              <li>
                <a href="compose.html">Compose email</a></li>
            </ul>
            <!-- /.nav-second-level --></li>
          <li>
            <a href="widgets.html">
              <i class="fa fa-flask nav_icon"></i>Widgets</a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-check-square-o nav_icon"></i>Forms
              <span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="forms.html">Basic Forms</a></li>
              <li>
                <a href="validation.html">Validation</a></li>
            </ul>
            <!-- /.nav-second-level --></li>
          <li>
            <a href="#">
              <i class="fa fa-table nav_icon"></i>Tables
              <span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="basic_tables.html">Basic Tables</a></li>
            </ul>
            <!-- /.nav-second-level --></li>
          <li>
            <a href="#">
              <i class="fa fa-sitemap fa-fw nav_icon"></i>Css
              <span class="fa arrow"></span></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="media.html">Media</a></li>
              <li>
                <a href="login.html">Login</a></li>
            </ul>
            <!-- /.nav-second-level --></li>
          <li>
            <a href="#">
              <i class="fa fa-sitemap fa-fw nav_icon"></i>现场迎新管理
              <span class="fa arrow" /></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="checkIn">登记报到单打印状态</a></li>
              <li>
                <a href="militarySuppliesManagement">军训用品发送管理</a></li>
              <li>
                <a href="cardManagement">一卡通发放管理</a></li>
              <li>
                <a href="sitePayment">现场缴费管理</a></li>
              <li>
                <a href="registerAndReport">注册报到管理</a></li>
              <li>
                <a href="fileSubmission">档案提交管理</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <!-- /.sidebar-collapse --></div>
    <div id="page-wrapper" style="background-color: #f2f4f8">
      <div class="graphs">
        <div class="col_3">
          <div class="col-md-12">
            <div class="r3_counter_box" style="margin-left: -14px;">
              <div class="stats">
                <h5>
                  <strong>用户信息列表管理</strong></h5>
              </div>
            </div>
          </div>
          <div class="clearfix"></div>
        </div>
        <div class="col_1" style="margin-top: 1em">
          <div class="col-md-12 box">
            <div class="row">
              <form id="form2">
                <div class="col-md-5">
                  <div class="form-group">
                    <div class="input-group">
                        <span class="input-group-addon">
                        	<span class="glyphicon glyphicon-user"></span>请输入用户名称
                        </span>
                      <input type="text" class="form-control1 required" placeholder="例:林景峰" id="searchUserName" name="searchUserName" data-bv-notempty data-bv-notempty-message="用户名称不能为空！" /></div>
                  </div>
                </div>
                <div class="col-md-1 form-group">
                  <button class="btn btn-info" type="submit" style="height: 40px;">
                    <span class="glyphicon glyphicon-search"></span>&nbsp;查询</button>
                </div>
              </form>
              <div class="col-md-1 form-group">
                <button class="btn btn-success" style="height: 40px;" onclick="$('#addUserModal').modal('show')">
                  <span class="glyphicon glyphicon-plus"></span>&nbsp;新增用户</button>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
              <div class="panel-heading" style="background-color: #5bc0de; border-color: #5bc0b2;">
                <h2 style="display:inline;">下面是查询到的用户信息列表</h2></div>
              <div class="panel-body no-padding" style="display: block;">
                <table class="table table-striped  table-bordered">
                  <thead>
                    <tr class="success">
                      <th>#</th>
                      <th>用户ID</th>
                      <th>用户名称</th>
                      <th>用户年龄</th>
                      <th>用户密码</th>
                      <th>操作</th>
                      <th>操作</th>
                      <th>操作</th></tr>
                  </thead>
                  <tbody>
                   
                  </tbody>
                </table>
              </div>
              
              
              											<!-- 添加用户模态框开始 -->
              <div class="modal fade" id="addUserModal" tabindex="-1" user="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" user="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                      <h3 class="modal-title pull-center" id="exampleModalLabel"><strong>新增用户</strong></h3>
                    </div>
                    <form id="addUserForm">
                    <div class="modal-body">
                        <div class="form-group">
                          <label for="userId" class="control-label"  style="font-size:16px;"><strong>用户ID<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="userId" name="userId" placeholder="例:1">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="userName" class="control-label" ><strong>用户名称<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="text"  class="form-control1"  id="userName" name="userName" placeholder="例:林景峰">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="age" class="control-label"  style="font-size:16px;"><strong>用户年龄<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="age" name="age" placeholder="例:21">
                          </div>
                        </div>
                        
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="pwd" class="control-label" ><strong>用户密码<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="password"  class="form-control1"  id="pwd" name="pwd" placeholder="例:123456">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="userAuth"  style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配角色<sup>*</sup></strong></label>
                          <select class="selectpicker form-control col-md-3" name="userAuth" id="userAuth" multiple>
                        	<option selected="selected">迎新模块</option>
                        	<option selected="selected">统计模块</option>
                        	<option selected="selected">咨询模块</option>
                        	<option>杀人模块</option>
                        	<option>救人模块</option>
                          </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-info" data-dismiss="modal">关闭</button>
                      <button type="submit" class="btn btn-info">添加</button>
                    </div>
                    </form>
                  </div>
                </div>
              </div>
              														<!-- 添加用户模态框结束 -->
              
              
              
              														<!-- 修改用户模态框开始 -->
              
               <div class="modal fade" id="modifiedUserModal" tabindex="-1" user="dialog" aria-labelledby="exampleModalLabel1">
                <div class="modal-dialog" user="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                      <h3 class="modal-title pull-center" id="exampleModalLabel1"><strong>修改用户操作</strong></h3>
                    </div>
                    <form id="modifiedUserForm">
                    <div class="modal-body">
                        <div class="form-group">
                          <label for="modifiedUserId" class="control-label"  style="font-size:16px;"><strong>用户ID<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="modifiedUserId" name="modifiedUserId" placeholder="例:1">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="modifiedUserName" class="control-label" ><strong>用户名称<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="text"  class="form-control1"  id="modifiedUserName" name="modifiedUserName" placeholder="例:林景峰">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="modifiedAge" class="control-label"  style="font-size:16px;"><strong>用户年龄<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="modifiedAge" name="modifiedAge" placeholder="例:21">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="modifiedPwd" class="control-label" ><strong>用户密码<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="password"  class="form-control1"  id="modifiedPwd" name="modifiedPwd" placeholder="例:123456">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="modifiedUserAuth"  style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配角色<sup>*</sup></strong></label>
                          <select class="selectpicker form-control col-md-3" name="modifiedUserAuth" id="modifiedUserAuth" multiple>
                        	<option selected="selected">迎新模块</option>
                        	<option selected="selected">统计模块</option>
                        	<option selected="selected">咨询模块</option>
                        	<option>杀人模块</option>
                        	<option>救人模块</option>
                          </select>
                        </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-info" data-dismiss="modal">关闭</button>
                      <button type="submit" class="btn btn-info">保存修改</button>
                    </div>
                    </form>
                  </div>
                </div>
              </div>
              
              																<!-- 修改用户模态框结束 -->
              
              
            </div>
            <div class="copy_layout">
              <p>Copyright © 2016.Company name All rights reserved.More Templates
                <a href="http://www.cssmoban.com/" target="_blank" title="迎新系统">迎新系统</a></p>
            </div>
          </div>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
    <!-- /#page-wrapper --></div>
  <!-- /#wrapper -->
  <!-- Nav CSS -->
  <link href="/yx/assets/css/custom.css" rel="stylesheet">
  <script src="/yx/assets/js/metisMenu.min.js"></script>
  <script src="/yx/assets/js/custom.js"></script>
</body>
</html>