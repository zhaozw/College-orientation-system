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
            <a class="navbar-brand" href="/yx/assets/cd_index.html">迎新系统</a>
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
              <a href="/yx/logout">
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

        <!--1-->
        <div class="grid_3 grid_5">
            <h3>Breadcrumbs</h3>
            <div class="but_list">
                <!--<ol class="breadcrumb">-->
                <!--<li class="active">Home</li>-->
                <!--</ol>-->
                <ol class="breadcrumb">
                <li><a href="#">用户咨询模块</a></li>
                <li class="active">发布咨询</li>
                </ol>
            </div>
        </div>
        
            <!-- 333 -->
         
            <div class="col-md-8 inbox_right">
            <div class="Compose-Message">               
                <div class="panel panel-default">
                   
                    <div class="panel-body">
                    <form class="form-horizontal"  method="post" action="<%=request.getContextPath()%>/advisory/user/add">
                        <hr>
                        <label>选择主题: </label>
                             <select id="selector1" class="form-control1 control3" name="problemsTheme.problemsThemeId">
                                <option></option>
                                <option value="1">专业课程</option> <!-- value="112"-->
                                <option value="2">录取工作</option>
                                <option value="3">学校生活</option>
                                <option value="4">收费标准</option>
                                <option value="5">寝室</option>
                                <option value="6">助学</option>
                                <option value="7">就业</option>
                                <option value="8">学生活动</option>
                                <option value="9">交友</option>
                            </select>
                        <label>输入咨询内容: </label>
                        <textarea rows="6" class="form-control1 control2" name="content">
                        	
                        </textarea>
                        <hr>
                        <div class="row">
	                         <div class="col-sm-8 col-sm-offset-3">
	                          <button class="btn-default btn">Cancel</button>
	                           <button class="btn-info btn" type="submit" id="submit">Submit</button>
	                        </div>
                    	</div>
                    </form>
                    </div>
                 </div>
              </div>
         </div>
         <div class="clearfix"> </div>

				<!-- Modal -->
		<div id="error-msg" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		  <div class="modal-header">
		    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		    <h3 id="myModalLabel">发布咨询提示信息</h3>
		  </div>
		  <div class="modal-body">
		    <p>${errorMsg}</p>
		  </div>
		  <div class="modal-footer">
		    <button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
		  </div>
		</div>

    </div>


    <!-- /#page-wrapper -->
</div>
 

<!-- /#wrapper -->
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>
</body>

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


</html>
