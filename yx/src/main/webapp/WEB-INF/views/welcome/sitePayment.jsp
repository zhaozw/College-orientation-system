<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Validation</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
  <link href="/yx/assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
  <link href="/yx/assets/css/style.css" rel='stylesheet' type='text/css' />
  <link href="/yx/assets/css/font-awesome.css" rel="stylesheet">
 <script src="/yx/assets/js/jquery.min.js"></script>
  <link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
  <script src="/yx/assets/js/bootstrap.min.js"></script>

  <link type="text/css" rel='stylesheet' href="/yx/assets/css/welcome/welcome.css"/>
  <link href="/yx/assets/css/bootstrapValidator.min.css" rel="stylesheet">
  <script src="/yx/assets/js/bootstrapValidator.min.js"></script>

  <script type="text/javascript">
  
  $(function () {
      $('#form1').bootstrapValidator({
        message: 'This value is not valid',
          feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
          fields: {
            stuId: {
                  validators: {
                  notEmpty: {
                  message: '用户名不能为空'
                      }
                  }
              },
              name: {
                  validators: {
                       notEmpty: {nmessage: '学生号不能为空'}
                              }
                    }
          }
      }).on('success.form.bv', function (e) {
			e.preventDefault();
			  var name=$("#name").val();
		      var stuId=$("#stuId").val();
		      var url="/yx/welcome/loadFee2/"+stuId+"/"+name;
		  	      
		      $.get(url,function(student){        
		    	 
		     var tbody=$("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
		      	 tbody.empty("tr");
		      	
		      var tr=$("<tr></tr>");
		      var totalFee=student.payTheFee.schooling+student.payTheFee.textBooks+student.payTheFee.administrativeFee+student.payTheFee.medicalInsuranceFee+student.payTheFee.militaryTrainingClothesFee;
		      var feeStatus=(student.payTheFee.hadPaidTheFee ==0)?"未缴费":"已缴费";
		      var realPaidFee=(student.payTheFee.hadPaidTheFee ==0)?"0":totalFee;
		          tr.append($("<td></td>").html(student.id));
		          tr.append($("<td></td>").html(student.studentName));
		          tr.append($("<td></td>").html(student.class1.name));
		          tr.append($("<td></td>").html(student.payTheFee.schooling));
		          tr.append($("<td></td>").html(student.payTheFee.textBooks));
		          tr.append($("<td></td>").html(student.payTheFee.administrativeFee));
		          tr.append($("<td></td>").html(student.payTheFee.medicalInsuranceFee));
		          tr.append($("<td></td>").html(student.payTheFee.militaryTrainingClothesFee));
		          tr.append($("<td></td>").html(totalFee));
		          tr.append($("<td></td>").html(realPaidFee));
		          tr.append($("<td></td>").html(feeStatus));
		          tr.append($("<td></td>").html('<a type="button" class="btn-info btn-sm btn">缴费完成</a>'));
		          
		    	     tbody.append(tr);
		    		  
		    	  
		    	  
		    	  
		      },"json");
			
		});
      
      $('#form2').bootstrapValidator({
          message: 'This value is not valid',
            feedbackIcons: {
              valid: 'glyphicon glyphicon-ok',
              invalid: 'glyphicon glyphicon-remove',
              validating: 'glyphicon glyphicon-refresh'
          },
            fields: {
                 id: {
                     validators: {
                          notEmpty: {nmessage: '身份证不能为空'},
                          stringLength: {
                              min: 18,
                              max: 18,
                              message: '身份证号码长度须为18位'
                          }
                                }
                      }
            }
        }).on('success.form.bv', function (e) {
  			e.preventDefault();
  			 var id=$("#id").val();
  			 var url="/yx/welcome/loadFee1/"+id;
  		     $.get(url,function(student){  
  		    	 
  		     var tbody=$("#page-wrapper > div > div.col_1 > div.col-md-12.box > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
  		     	 tbody.empty("tr");
  		     	
  		     var tr=$("<tr></tr>");
  		     var totalFee=student.payTheFee.schooling+student.payTheFee.textBooks+student.payTheFee.administrativeFee+student.payTheFee.medicalInsuranceFee+student.payTheFee.militaryTrainingClothesFee;
  		     var feeStatus=(student.payTheFee.hadPaidTheFee ==0)?"未缴费":"已缴费";
  		     var realPaidFee=(student.payTheFee.hadPaidTheFee ==0)?"0":totalFee;
  		         tr.append($("<td></td>").html(student.id));
  		         tr.append($("<td></td>").html(student.studentName));
  		         tr.append($("<td></td>").html(student.class1.name));
  		         tr.append($("<td></td>").html(student.payTheFee.schooling));
  		         tr.append($("<td></td>").html(student.payTheFee.textBooks));
  		         tr.append($("<td></td>").html(student.payTheFee.administrativeFee));
  		         tr.append($("<td></td>").html(student.payTheFee.medicalInsuranceFee));
  		         tr.append($("<td></td>").html(student.payTheFee.militaryTrainingClothesFee));
  		         tr.append($("<td></td>").html(totalFee));
  		         tr.append($("<td></td>").html(realPaidFee));
  		         tr.append($("<td></td>").html(feeStatus));
  		         tr.append($("<td></td>").html('<a type="button" class="btn-info btn-sm btn">缴费完成</a>'));
  		         
  		   	     tbody.append(tr);
  		   		  
  		    	 
  		     },"json");
  	        
  			
  		});
      
      
      
});
  
  
  
  
  
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
        <a class="navbar-brand" href="index.html">迎新系统</a>
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
     </nav>
    <div class="navbar-default sidebar" role="navigation"  style="min-height:48em">
      <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
          <li>
            <a href="index.html">
              <i class="fa fa-dashboard fa-fw nav_icon"></i>
              Dashboard
            </a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-laptop nav_icon"></i>
              Layouts
              <span class="fa arrow"></span>
            </a>
            <ul class="nav nav-second-level">
              <li>
                <a href="grids.html">Grid System</a>
              </li>
            </ul>
            <!-- /.nav-second-level --> </li>
          <li>
            <a href="#">
              <i class="fa fa-indent nav_icon"></i>
              Menu Levels
              <span class="fa arrow"></span>
            </a>
            <ul class="nav nav-second-level">
              <li>
                <a href="graphs.html">Graphs</a>
              </li>
              <li>
                <a href="typography.html">Typography</a>
              </li>
            </ul>
            <!-- /.nav-second-level --> </li>
          <li>
            <a href="#">
              <i class="fa fa-envelope nav_icon"></i>
              Mailbox
              <span class="fa arrow"></span>
            </a>
            <ul class="nav nav-second-level">
              <li>
                <a href="inbox.html">Inbox</a>
              </li>
              <li>
                <a href="compose.html">Compose email</a>
              </li>
            </ul>
            <!-- /.nav-second-level --> </li>
          <li>
            <a href="widgets.html">
              <i class="fa fa-flask nav_icon"></i>
              Widgets
            </a>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-check-square-o nav_icon"></i>
              Forms
              <span class="fa arrow"></span>
            </a>
            <ul class="nav nav-second-level">
              <li>
                <a href="forms.html">Basic Forms</a>
              </li>
              <li>
                <a href="validation.html">Validation</a>
              </li>
            </ul>
            <!-- /.nav-second-level --> </li>
          <li>
            <a href="#">
              <i class="fa fa-table nav_icon"></i>
              Tables
              <span class="fa arrow"></span>
            </a>
            <ul class="nav nav-second-level">
              <li>
                <a href="basic_tables.html">Basic Tables</a>
              </li>
            </ul>
            <!-- /.nav-second-level --> </li>
          <li>
            <a href="#">
              <i class="fa fa-sitemap fa-fw nav_icon"></i>
              Css
              <span class="fa arrow"></span>
            </a>
            <ul class="nav nav-second-level">
              <li>
                <a href="media.html">Media</a>
              </li>
              <li>
                <a href="login.html">Login</a>
              </li>
            </ul>
            <!-- /.nav-second-level --> </li>
          <li>
            <a href="#">
              <i class="fa fa-sitemap fa-fw nav_icon"></i>
              现场迎新管理
              <span class="fa arrow"/>
            </a>
            <ul class="nav nav-second-level">

              <li>
                <a href="checkIn">登记报到单打印状态</a>
              </li>
              <li>
                <a href="militarySuppliesManagement">军训用品发送管理</a>
              </li>
              
              <li>
                <a href="cardManagement">一卡通发放管理</a>
              </li>
              <li>
                <a href="medicareManagment">医保办理管理</a>
              </li>
              <li>
                <a href="sitePayment">现场缴费管理</a>
              </li>
              <li>
                <a href="registerAndReport">注册报到管理</a>
              </li>
              <li>
                <a href="fileSubmission">档案提交管理</a>
              </li>

            </ul>
          </li>
        </ul>
      </div>
      <!-- /.sidebar-collapse --> </div>

    <div id="page-wrapper" style="background-color:#f2f4f8">
      <div class="graphs">

        <div class="col_3">
          <div class="col-md-12">
            <div class="r3_counter_box"  style="margin-left:-14px;">
              <div class="stats">
                <h5>
                  <strong>现场缴费管理</strong>
                </h5>
              </div>
            </div>
          </div>

          <div class="clearfix"></div>
        </div>

        <div class="col_1"  style="margin-top:1em">

          <div class="col-md-12 box">
             <div class="row">

                <form id="form1" class="bv-form">
                  <div class="col-md-4">
                    <div class="form-group has-feedback">
                      <div class="input-group">
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-user"></span>
                          &nbsp;学生编号
                        </span>
                        <input type="text" class="form-control1 required" placeholder="例:201135260327" id="stuId" name="stuId" data-bv-notempty="" data-bv-notempty-message="学生编号不能为空！" data-bv-field="stuId">
                      </div><i class="form-control-feedback bv-no-label bv-icon-input-group" data-bv-icon-for="stuId" style="display: none;"></i>
                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="stuId" data-bv-result="NOT_VALIDATED" style="display: none;">学生编号不能为空！</small></div>
                  </div>

                  <div class="col-md-4">
                    <div class="form-group has-feedback">
                      <div class="input-group">
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-user"></span>
                          &nbsp;学生姓名
                        </span>
                        <input type="text" class="form-control1 required" placeholder="例:张继科" id="name" name="name" data-bv-notempty="" data-bv-notempty-message="学生姓名不能为空！" data-bv-field="name">
                      </div><i class="form-control-feedback bv-no-label bv-icon-input-group" data-bv-icon-for="name" style="display: none;"></i>
                    <small class="help-block" data-bv-validator="notEmpty" data-bv-for="name" data-bv-result="NOT_VALIDATED" style="display: none;">学生姓名不能为空！</small></div>
                  </div>

                  <div class="col-md-1 form-group">
                    <button class="btn-info btn" tyep="submit" style="height:40px;" onclick="loadFeeInfoStuIdAndName()">
                      <span class="glyphicon glyphicon-search"></span>
                      &nbsp;查询
                    </button>
                  </div>

                </form>

              </div>
              
              
              <div class="form-group">
                <br>
                <label class="control-label"> <strong>或</strong>
                </label>
                <br>
              </div>
              
                  <div class="row">

                <form id="form2">
                  <div class="col-md-4">
                    <div class="form-group">
                      <div class="input-group" >
                        <span class="input-group-addon">
                          <span class="glyphicon glyphicon-user"></span>
                          &nbsp;身份证号码
                        </span>
                        <input type="text" class="form-control1 required" placeholder="例:440783199407270910" id="id" name="id" data-bv-notempty data-bv-notempty-message="身份证不能为空！" />
                      </div>
                    </div>
                  </div>

                   <div class="col-md-1 form-group">
                    <button class="btn btn-info" type="submit"  style="height:40px;">
                      <span class="glyphicon glyphicon-search"></span>
                      &nbsp;查询
                    </button>
                  </div>

                </form>

              </div>
              
              <div class="clearfix"></div>

            <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
              <div class="panel-heading" style="background-color: #5bc0de;border-color: #5bc0b2;">
                <h2>下面是查询到的学生缴费情况</h2>
                <div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}">
                  <span class="button-icon has-bg">
                    <i class="ti ti-angle-down"></i>
                  </span>
                </div>
              </div>
              <div class="panel-body no-padding" style="display: block;">
                <table class="table table-striped  table-bordered">
                  <thead>
                    <tr class="success">
                      <th>身份证号</th>
                      <th>姓名</th>
                      <th>班级</th>
                      <th>学费</th>
                      <th>书本费</th>
                      <th>管理费</th>
                      <th>医疗保险费</th>
                      <th>军训费用</th>
                      <th>应缴总费用</th>
                      <th>实缴总费用</th>
                      <th>状态</th>
                      <th>操作</th>
                    </tr>
                  </thead>
                  <tbody>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="copy_layout">
              <p>
                Copyright © 2016.Company name All rights reserved.More Templates
                <a href="http://www.cssmoban.com/" target="_blank" title="迎新系统">迎新系统</a>
              </p>
            </div>
          </div>

          <div class="clearfix"></div>
          
        </div>
		    
      </div>
    </div>
    <!-- /#page-wrapper --> </div>
  <!-- /#wrapper -->
  <!-- Nav CSS -->
  <link href="/yx/assets/css/custom.css" rel="stylesheet">
  <script src="/yx/assets/js/metisMenu.min.js"></script>
  <script src="/yx/assets/js/custom.js"></script>
</body>
</html>