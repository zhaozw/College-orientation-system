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

var tempPowerListData;
$(function() {
    $('#form2').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	searchPowerName: {
                validators: {
                    notEmpty: {
                        message: '权限名称不能为空！'
                    }
                }
            }
        }
    }).on('success.form.bv',
    function(e) {
        e.preventDefault();
        
        
        var powerName = $("#searchPowerName").val();
        
        
        var url = "/yx/account/findPowerByName?"+"powerName=" + powerName;
        $.get(url,
        function(data) {

        	dataDeal(data);

        },
        "json");

    });
    
    
    $('#addPowerForm').bootstrapValidator({
        message: '该值不能为空!',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            powerName: {
                validators: {
                    notEmpty: {
                        message: '权限名称不能为空！'
                    }
                }
            },
            powerId: {
                validators: {
                    notEmpty: {
                        message: '权限ID不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: '权限ID只能由数字组成'
                    },
                    stringLength: {
                        min: 8,
                        max: 8,
                        message: '长度错误!权限ID由八位数字组成'
                    }
                }
            },
            description: {
                validators: {
                    notEmpty: {
                        message: '权限描述内容不能为空！'
                    }
                }
            }
        }
    }).on('success.form.bv',
    function(e) {
    	 e.preventDefault();
   	  $("#addRoleModal").modal("hide");
   	  var url = "/yx/account/addPower";
         $.post(url,{
       	  "powerName":$("#powerName").val(),
       	  "powerId":$("#powerId").val(),
       	  "description":$("#description").val()
         },
         function(data) {
       	     
       	     if(data>0){
       	    	 alert("添加成功！");
       	    	 return;
       	     }
       	     
       	     alert("添加出错！");
       	    	 
         },
         "json");
    	
    	

    });

    $('#modifiedPowerForm').bootstrapValidator({
        message: '该值不能为空!',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	modifiedPowerName: {
                validators: {
                    notEmpty: {
                        message: '权限名称不能为空！'
                    }
                }
            },
            modifiedPowerId: {
                validators: {
                    notEmpty: {
                        message: '权限ID不能为空！'
                    },
                    regexp: {
                        regexp: /^[0-9]+$/,
                        message: '权限ID只能由数字组成'
                    }
                }
            },
            modifiedDescription: {
                validators: {
                    notEmpty: {
                        message: '权限描述内容不能为空！'
                    }
                }
            }
        }
    }).on('success.form.bv',
    function(e) {
    	
    	
    	
    	e.preventDefault();
  	  $("#modifiedPowerModal").modal("hide");
  	
  	 var url = "/yx/account/modifiedPower";
     $.post(url,{
   	  "modifiedPowerId":$("#modifiedPowerId").val(),
   	  "modifiedPowerName":$("#modifiedPowerName").val(),
   	  "modifiedDescription":$("#modifiedDescription").val(),
     },
     function(data) {
    	 var powerName = $("#searchPowerName").val();
         
         
         var url = "/yx/account/findPowerByName?"+"powerName=" + powerName;
         $.get(url,
         function(data) {

         	dataDeal(data);

         },
         "json");
   	 
     },
     "text");
    	

    });
    

});

	function dataDeal(data){
		
		
		
		 var tbody = $("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
		 var insert=$("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.clearfix");
         	 tbody.empty("tr");
             $("#insert").remove();
             
		if(data.length==0){
	          
	           var info=$('<div id="insert" class="alert alert-danger" role="alert"  style="margin-top: 20px;margin-bottom: 30px;"></div>').html('<strong>查询失败！</strong>该权限名称不存在！');
		           insert.after(info); 
	    	   return;
	       }else{
	        tempPowerListData=data;
	       }
		
		

        $.each(data,
        function(index, power) {
        	
        	var tr = $('<tr id="tr'+power.powerId+'"></tr>');
        	tr.append($("<td></td>").html("序号"+index));
            tr.append($("<td></td>").html(power.powerId));
            tr.append($("<td></td>").html(power.powerName));
            tr.append($("<td></td>").html(power.powerDescription));
            tr.append($("<td></td>").html('<a onclick="modifiedPowerByPowerId('+index+')" type="button" class="btn-info btn-sm btn" >修改</a>'));
            tr.append($("<td></td>").html('<a onclick="deletePowerByPowerId('+power.powerId+')" type="button" class="btn-danger btn-sm btn" style="height:34px;">删除权限</a>'));
            
            
            tbody.append(tr);
            
           
        	
        });
      
        var info=$('<div id="insert" class="alert alert-success" style="margin-top: 20px;margin-bottom: 30px;" role="alert"></div>').html('<strong>查询成功！</strong>以下是查询到的结果！');
        insert.after(info);
	}
	
	
	
	
	function deletePowerByPowerId(powerId){
		
		 var url = "/yx/account/deletePowerByPowerId/" + powerId;
	        $.get(url,
	        function(data) {
					
	        	if(data>0){
	        	     alert("删除成功!")
	        		$("#tr"+powerId).remove();
	        	     return;
	        	}
	        	   alert("删除出错!")
	        	

	        },
	        "json");
		
	}
	
	function modifiedPowerByPowerId(index){
		var powerData=tempPowerListData[index];
		$("#modifiedPowerId").val(powerData.powerId);
		$("#modifiedPowerName").val(powerData.powerName);
		$("#modifiedDescription").val(powerData.powerDescription);
		
	  	
	  	
		$("#modifiedPowerModal").modal("show");
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
              <a href="#">
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
                  <strong>权限列表管理</strong></h5>
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
                        	<span class="glyphicon glyphicon-user"></span>&nbsp;请输入权限名称
                        </span>
                      <input type="text" class="form-control1 required" placeholder="例:浏览权限" id="searchPowerName" name="searchPowerName" data-bv-notempty data-bv-notempty-message="权限名称不能为空！" /></div>
                  </div>
                </div>
                <div class="col-md-1 form-group">
                  <button class="btn btn-info" type="submit" style="height: 40px;">
                    <span class="glyphicon glyphicon-search"></span>&nbsp;查询</button>
                </div>
              </form>
              <div class="col-md-1 form-group">
                <button class="btn btn-success" style="height: 40px;" onclick="$('#addRoleModal').modal('show')">
                  <span class="glyphicon glyphicon-plus"></span>&nbsp;新增权限</button>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
              <div class="panel-heading" style="background-color: #5bc0de; border-color: #5bc0b2;">
                <h2 style="display:inline;">下面是查询到的权限信息列表</h2></div>
              <div class="panel-body no-padding" style="display: block;">
                <table class="table table-striped  table-bordered">
                  <thead>
                    <tr class="success">
                      <th>#</th>
                      <th>权限ID</th>
                      <th>权限ID名称</th>
                      <th>权限描叙</th>
                      <th>操作</th>
                      <th>操作</th>
                     </tr>
                  </thead>
                  <tbody>
                  </tbody>
                </table>
              </div>
              
              
              
              <div class="modal fade" id="addRoleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                      <h3 class="modal-title pull-center" id="exampleModalLabel"><strong>新增权限</strong></h3>
                    </div>
                    <form id="addPowerForm">
                    <div class="modal-body">
                        <div class="form-group">
                          <label for="recipient-name" class="control-label"  style="font-size:16px;"><strong>权限ID<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="powerId" name="powerId" placeholder="例:44444444">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="recipient-name" class="control-label" ><strong>权限名称<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="text"  class="form-control1"  id="powerName" name="powerName" placeholder="例:迎新模块权限">
                          </div>
                        </div>
                        <div class="form-group">
                          <label for="message-text" style="margin-top:30px;font-size:16px;" class="control-label"><strong>权限描述<sup>*</sup></strong></label>
                          <textarea class="form-control1" style="border-radius: 4px;min-height: 78px;" id="description" name="description" placeholder="&nbsp;&nbsp;例:该权限可以执行统计模块提供的所有功能" ></textarea>
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
              
              
              
              
                														<!-- 修改权限模态框开始 -->
              <div class="modal fade" id="modifiedPowerModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                      <h3 class="modal-title pull-center" id="exampleModalLabel1"><strong>修改权限操作</strong></h3>
                    </div>
                    <form id="modifiedPowerForm">
                    <div class="modal-body">
                        <div class="form-group">
                          <label for="modifiedPowerId" class="control-label"  style="font-size:16px;"><strong>权限ID<sup>*</sup>(不可修改)</strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          		<input type="text" class="form-control1" id="modifiedPowerId" name="modifiedPowerId" disabled="disabled" placeholder="例:100000044">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="modifiedPowerName" class="control-label" ><strong>权限名称<sup>*</sup></strong></label>
                          <div class="input-group">
                          		<span class="input-group-addon">
                        		      <span class="glyphicon glyphicon-user"></span>
                       			</span>
                          <input type="text"  class="form-control1"  id="modifiedPowerName" name="modifiedPowerName" placeholder="例:管理员">
                          </div>
                        </div>
                        
                        <div class="form-group">
                          <label for="modifiedDescription" style="margin-top:30px;font-size:16px;" class="control-label"><strong>权限描述<sup>*</sup></strong></label>
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
              																<!-- 修改权限模态框结束 -->
              
              
              
              
              
              
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