<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>用户信息管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="/yx/assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="/yx/assets/css/style.css" rel='stylesheet' type='text/css' />
<link href="/yx/assets/css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="/yx/assets/js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>
</head>
<body id="login">
  <div class="login-logo">
    <a href="index.html"><img src="/yx/assets/images/logo.png" alt=""/></a>
  </div>
  <h2 class="form-heading" href="/yx/account/userInfo">登录</h2>
  <div class="app-cam">
	  <form action="/yx/login" method="post">
		<input type="text" name="userId" class="text" value="账号" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '账号';}">
		<input type="password" name="pwd" value="password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
		<div class="submit"><input type="submit" onclick="myFunction()" value="登录"></div>
		<div class="login-social-link">
          <a href="index.html" class="facebook">
              脸皮书
          </a>
          <a href="index.html" class="twitter">
              推特
          </a>
        </div>
		<ul class="new">
			<li class="new_left"><p><a href="#">忘记密码 ?</a></p></li>
			<li class="new_right"><p class="sign">新用户 ?<a href="/yx/UserInfo/reg"> 注册</a></p></li>
			<div class="clearfix"></div>
		</ul>
	</form>
  </div>
   <div class="copy_layout login">
      <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
   </div>
</body>
</html>
