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
        	searchRoleName: {
                validators: {
                    notEmpty: {
                        message: '角色名称不能为空！'
                    }
                }
            }
        }
    }).on('success.form.bv',
    function(e) {
        e.preventDefault();
        
        var roleName = $("#searchRoleName").val();
        var url = "/yx/account/loadRoleListByName/" + roleName;
        $.get(url,
        function(roleList) {
				
        	
        	dataDeal(roleList);

        },
        "json");

    });
    
    
    $('#addRoleForm').bootstrapValidator({
        message: '该值不能为空!',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            roleName: {
                validators: {
                    notEmpty: {
                        message: '角色名称不能为空！'
                    }
                }
            },
            roleId: {
                validators: {
                    notEmpty: {
                        message: '角色ID不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: '角色ID只能由数字组成'
                    }
                }
            },
            description: {
                validators: {
                    notEmpty: {
                        message: '角色描述内容不能为空！'
                    }
                }
            }
            ,
            roleAuth: {
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
    	  $("#addRoleModal").modal("hide");
    	  var url = "/yx/account/addRole";
          $.post(url,{
        	  "roleName":$("#roleName").val(),
        	  "roleId":$("#roleId").val(),
        	  "roleAuth":$("#roleAuth").val().join(","),
        	  "description":$("#description").val()
          },
          function(data) {
        	
        	  
          },
          "json");
       
      });
    	
   
    

    $('#modifiedRoleForm').bootstrapValidator({
        message: '该值不能为空!',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	modifiedRoleName: {
                validators: {
                    notEmpty: {
                        message: '角色名称不能为空！'
                    }
                }
            },
            modifiedRoleId: {
                validators: {
                    notEmpty: {
                        message: '角色ID不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: '角色ID只能由数字组成'
                    }
                }
            },
            modifiedDescription: {
                validators: {
                    notEmpty: {
                        message: '角色描述内容不能为空！'
                    }
                }
            }
            ,
            modifiedRoleAuth: {
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
  	  $("#modifiedRoleModal").modal("hide");
  	  var url = "/yx/account/modifiedRole";
        $.post(url,{
      	  "modifiedRoleName":$("#modifiedRoleName").val(),
      	  "modifiedRoleId":$("#modifiedRoleId").val(),
      	  "modifiedRoleAuth":$("#modifiedRoleAuth").val().join(","),
      	  "modifiedDescription":$("#modifiedDescription").val()
        },
        function(data) {
      	
        	var roleName = $("#searchRoleName").val();
            var url = "/yx/account/loadRoleListByName/" + roleName;
            $.get(url,
            function(roleList) {
    				
            	
            	dataDeal(roleList);

            },
            "json");
        	
        },
        "text");
    	
    	

    });
    
    loadPowerList();
    
    function loadPowerList(){
    	
    	
    	 var url = "/yx/account/loadPowerList" ;
         $.get(url,
         function(data) {
 				
         	
        	 powerList=data;
        	 
        	 
        	 
        	var div1=$("#addRoleForm > div.modal-body > div:nth-child(3)");
     		var label=$('<label for="modifiedRoleAuth" style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配权限<sup>*</sup></strong></label>');
     		var select=$('<select class="selectpicker form-control col-md-3" name="roleAuth"  id="roleAuth" multiple></select>');
     		div1.empty();
     		
     	  	if(powerList.length>0){ 
     	  		for(var i=0;i<powerList.length;i++){ 
     	  			select.append("<option  value='"+powerList[i].powerId+"'>"+powerList[i].powerName+"</option>"); 
     	  		}
     	  		
     	  	}
     	  	div1.append(label);
     		div1.append(select);
     	  	$('.selectpicker').selectpicker();

         },
         "json");
    	
    }
    
    
});

	function dataDeal(roleList){
		 var tbody = $("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
		 var insert=$("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.clearfix");
         	 tbody.empty("tr");
             $("#insert").remove();
             
		if(roleList.length==0){
	          
	           var info=$('<div id="insert" class="alert alert-danger" role="alert"  style="margin-top: 20px;margin-bottom: 30px;"></div>').html('<strong>查询失败！</strong>该角色名称不存在！');
		           insert.after(info); 
	    	   return;
	       }else{
	        tempRoleListData=roleList;
	       }
		 
		
		

        $.each(roleList,
        function(index, role) {
        	
        	var tr = $('<tr id="tr'+role.roleId+'"></tr>');
        	tr.append($("<td></td>").html("序号"+index));
            tr.append($("<td></td>").html(role.roleId));
            tr.append($("<td></td>").html(role.roleName));
            tr.append($("<td></td>").html(role.description));
            
            
            
            var td=$("<td></td>");
            var div=$('<div class="dropdown"></div>');
            var button=$('<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">          权限列表                    <span class="caret"></span></button>');
            var ul=$('<ul class="dropdown-menu" aria-labelledby="dropdownMenu1"></ul>');
            
            
           
            $.each(role.powerList,
                    function(index, power) {
            	var li=$('<li><a href="#">'+power.powerName+'</a></li>');
            	ul.append(li);
            });
            td.append(div);
            div.append(button);
            div.append(ul);
            
            tr.append(td);
            tr.append($("<td></td>").html('<a onclick="modifiedRoleByRoleId('+index+')" type="button" class="btn-warning btn-sm btn" >修改</a>'));
            tr.append($("<td></td>").html('<a onclick="deleteRoleByRoleId('+role.roleId+')"  type="button" class="btn-danger btn-sm btn" >删除角色</a>'));
            
            tbody.append(tr);
            
           
        	
        });
      
        var info=$('<div id="insert" class="alert alert-success" style="margin-top: 20px;margin-bottom: 30px;" role="alert"></div>').html('<strong>查询成功！</strong>以下是查询到的结果！');
        insert.after(info);
	}
	
	
	
	
	function deleteRoleByRoleId(roleId){
		
	        var url = "/yx/account/deleteRoleByRoleId/" + roleId;
	        $.get(url,
	        function(data) {
					
	        	if(data>0){
	        	
	        		$("#tr"+roleId).remove();
	        	}
	        	

	        },
	        "json");
		
		
	}
	

	
	var tempRoleListData="";
	var powerList="";
	function modifiedRoleByRoleId(index){
		var roleData=tempRoleListData[index];
		$("#modifiedRoleId").val(roleData.roleId);
		$("#modifiedRoleName").val(roleData.roleName);
		$("#modifiedDescription").val(roleData.description);
		
		var div1=$("#modifiedRoleForm > div.modal-body > div:nth-child(3)");
		var label=$('<label for="modifiedRoleAuth" style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配权限<sup>*</sup></strong></label>');
		var select=$(' <select class="selectpicker form-control col-md-3" name="modifiedRoleAuth"  id="modifiedRoleAuth" multiple></select>');
		div1.empty();
		
		if(powerList.length>0){ 
 	  		for(var i=0;i<powerList.length;i++){ 
 	  			select.append("<option  value='"+powerList[i].powerId+"'>"+powerList[i].powerName+"</option>");
 	  		}
 	  		
 	  	}
	  
	  	
	  
	  	var arr=[];
        $.each(roleData.powerList,
                function(index, power) {
        	arr.push(power.powerId);
        });
        
        
       
	  	
	  	div1.append(label);
		div1.append(select);
	  	$('#modifiedRoleAuth').val(arr);
	  	$('#modifiedRoleAuth').selectpicker('render');
		
	  	
	  	
	  	
		$("#modifiedRoleModal").modal("show");
	}
	
	
</script>


</head>
<body>
  <div id="wrapper">
    <!-- Navigation -->
    <nav class="top1 navbar navbar-default navbar-static-top  navbar-inverse" role="navigation">
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
          <ul class="dropdown-menu" role="menu">
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
    <div class="navbar-default sidebar" role="navigation" style="min-height: 48em">
      <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
 				<%@ include  file="/layout/layout.jsp"%>
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
                  <strong>角色信息列表管理</strong></h5>
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
                        	<span class="glyphicon glyphicon-user"></span>请输入角色名称
                        </span>
                      <input type="text" class="form-control1 required" placeholder="例:管理员" id="searchRoleName" name="searchRoleName" data-bv-notempty data-bv-notempty-message="角色名称不能为空！" /></div>
                  </div>
                </div>
                <div class="col-md-5 form-group">
                  <button class="btn btn-info" type="submit" style="height: 40px;">
                    <span class="glyphicon glyphicon-search"></span>&nbsp;查询</button>
                </div>
              </form>
              <div class="col-md-1 form-group">
                <button class="btn btn-success" style="height: 40px;" onclick="$('#addRoleModal').modal('show')">
                  <span class="glyphicon glyphicon-plus"></span>&nbsp;新增角色</button>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
              <div class="panel-heading" style="background-color: #5bc0de; border-color: #5bc0b2;">
                <h2 style="display:inline;">下面是查询到的角色信息列表</h2></div>
              <div class="panel-body no-padding" style="display: block;">
                <table class="table table-striped  table-bordered">
                  <thead>
                    <tr class="success">
                      <th>#</th>
                      <th>角色ID</th>
                      <th>角色名称</th>
                      <th>角色描叙</th>
                      <th>角色拥有的权限列表</th>
                      <th>操作</th>
                      <th>操作</th></tr>
                  </thead>
                  <tbody>
                   
                  </tbody>
                </table>
              </div>
              
              
              											<!-- 添加角色模态框开始 -->
              <div class="modal fade" id="addRoleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                      <h3 class="modal-title pull-center" id="exampleModalLabel"><strong>新增角色</strong></h3>
                    </div>
                    <form id="addRoleForm">
                    <div class="modal-body">
                        <div class="form-group">
                          <label for="roleId" class="control-label"  style="font-size:16px;"><strong>角色ID<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="roleId" name="roleId" placeholder="例:XP-1">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="roleName" class="control-label" ><strong>角色名称<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="text"  class="form-control1"  id="roleName" name="roleName" placeholder="例:管理员">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="roleAuth"  style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配权限<sup>*</sup></strong></label>
                          <select class="selectpicker form-control col-md-3" name="roleAuth" id="roleAuth" multiple>
                        	<option selected="selected">迎新模块</option>
                        	<option selected="selected">统计模块</option>
                        	<option selected="selected">咨询模块</option>
                        	<option>杀人模块</option>
                        	<option>救人模块</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="description" style="margin-top:30px;font-size:16px;" class="control-label"><strong>角色描述<sup>*</sup></strong></label>
                          <textarea class="form-control1" style="border-radius: 4px;min-height: 78px;" id="description" name="description" placeholder="&nbsp;&nbsp;例:系统管理员用于管理整个迎新系统，拥有最高的权限。" ></textarea>
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
              														<!-- 添加角色模态框结束 -->
              
              
              
              														<!-- 修改角色模态框开始 -->
              
               <div class="modal fade" id="modifiedRoleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                      <h3 class="modal-title pull-center" id="exampleModalLabel1"><strong>修改角色操作</strong></h3>
                    </div>
                    <form id="modifiedRoleForm">
                    <div class="modal-body">
                        <div class="form-group">
                          <label for="modifiedRoleId" class="control-label"  style="font-size:16px;"><strong>角色ID<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="modifiedRoleId" disabled="true" name="modifiedRoleId" placeholder="例:10000044">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="modifiedRoleName" class="control-label" ><strong>角色名称<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="text"  class="form-control1"  id="modifiedRoleName" name="modifiedRoleName" placeholder="例:管理员">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="modifiedRoleAuth"  style="margin-top:30px;font-size:16px;" class="control-label"><strong>分配权限<sup>*</sup></strong></label>
                          <select class="selectpicker form-control col-md-3" name="modifiedRoleAuth"  id="modifiedRoleAuth" multiple>
                        	<option selected="selected">迎新模块</option>
                        	<option selected="selected">统计模块</option>
                        	<option selected="selected">咨询模块</option>
                        	<option>杀人模块</option>
                        	<option>救人模块</option>
                          </select>
                        </div>
                        <div class="form-group">
                          <label for="message-text" style="margin-top:30px;font-size:16px;" class="control-label"><strong>角色描述<sup>*</sup></strong></label>
                          <textarea class="form-control1" style="border-radius: 4px;min-height: 78px;" id="modifiedDescription" name="modifiedDescription" placeholder="&nbsp;&nbsp;例:系统管理员用于管理整个迎新系统，拥有最高的权限。" ></textarea>
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
              
              																<!-- 修改角色模态框结束 -->
              
              
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
  <link href="/yx/assets/css/custom.css" rel="stylesheet">
  <script src="/yx/assets/js/metisMenu.min.js"></script>
  <script src="/yx/assets/js/custom.js"></script>
</body>
</html>