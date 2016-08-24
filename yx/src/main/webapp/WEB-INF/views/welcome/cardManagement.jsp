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


                     <!-- Bootstrap Select链接 -->
<link   href="/yx/assets/css/bootstrap-select.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrap-select.min.js"></script>

<script type="text/javascript">

function loadCardInfo(){
    
    var college=$("#department").val();
    var major=$("#major").val();
    var Class=$("#Class").val();
    var grade=$("#grade").val();
    
    var url="/yx/welcome/loadCard/"+college+"/"+major+"/"+grade+"/"+Class;
    $.get(url,function(data){    
       
    var tbody=$("#page-wrapper > div > div.col_1 > div.col-md-12 > div.panel.panel-warning > div.panel-body.no-padding > table > tbody");
    	tbody.empty("tr");
    	
    	 $.each(data,function(index,student){
    		  var tr=$("<tr></tr>")
              tr.append($("<td></td>").html(student.class1.name));
              tr.append($("<td></td>").html(student.studentName));
              tr.append($("<td></td>").html(student.oneCardPass.oneCardPassId));
              
              var cardstatus=(student.studentStatus.oneCard ==0)?"未领取":"已领取";
              
              tr.append($("<td></td>").html(cardstatus));
              tr.append($("<td></td>").html(' <a type="button" class="btn-info btn-sm btn">领取</a>'));
    		  tbody.append(tr);
    		  });
    	
        
      },"json");
    
    
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
    <!-- /.navbar-static-side -->
  <div id="page-wrapper" style="background-color:#f2f4f8">
    <div class="graphs">

      <div class="col_3">
        <div class="col-md-12">
          <div class="r3_counter_box">
            <div class="stats">
              <h5>
                <strong>一卡通发放管理</strong>
              </h5>
              <span>New Index</span>
            </div>
          </div>
        </div>

        <div class="clearfix"></div>
      </div>

      <div class="col_1"  style="margin-top:1em">

        <div class="col-md-12">
          <div class="box">
          
          <div class="row">
                <div class="col-xs-2">
                    <div class="form-group">
                        <select  title="== 请选择学院 ==" class="selectpicker form-control" id="department" data-width="fit">
                  <option>信息学院</option>
                  <option>软件学院</option>
                  <option>农学院</option>
                  <option>外国语学院</option>
                </select>
                     </div>
                </div>
                <div class="col-xs-2">
                    <div class="form-group">
                        <select title="== 请选择专业 ==" class="selectpicker form-control" id="major" data-width="fit">
                  <option>软件工程</option>
                  <option>网络工程</option>
                  <option>计算机网络</option>
                </select>
                     </div>
                </div>
                
                <div class="col-xs-2">
                    <div class="form-group">
                        <select title="== 请选择年级 ==" class="selectpicker form-control" id="grade"  data-width="fit">
                  <option>大一</option>
                  <option>大二</option>
                  <option>大三</option>
                  <option>大四</option>
                </select>
                     </div>
                </div>
                
                <div class="col-xs-2">
                    <div class="form-group">
                        <select title="== 请选择班级 ==" class="selectpicker form-control" id="Class" data-width="fit">
                  <option>R1</option>
                  <option>R2</option>
                  <option>R3</option>
                  <option>R4</option>
                </select>
                     </div>
                </div>
                
                 <div class="col-xs-2">
                <button  class="btn btn-info"  onclick="loadCardInfo()" >Search</button>
                 </div>
          </div>
           

            

          </div>

          <div class="panel panel-warning" style="border-color: #5bc0b2;" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
            <div class="panel-heading" style="background-color: #5bc0de;border-color: #5bc0b2;">
              <h2>下面是查询到的一卡通领取信息</h2>
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

    </div>
  </div>
</div>
<link href="/yx/assets/css/custom.css" rel="stylesheet">
<script src="/yx/assets/js/metisMenu.min.js"></script>
<script src="/yx/assets/js/custom.js"></script>
</body>
</html>