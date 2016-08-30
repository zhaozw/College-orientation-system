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
  <h2 class="form-heading">欢迎系统管理员</h2>
  <form class="form-signin app-cam" action="<%=request.getContextPath()%>/UserInfo/register">
      <p>注册用户信息</p>
      	<input type="text" class="form-control1"  name="userId" placeholder="ID" autofocus="">
      	<input type="text" class="form-control1"  name="userName" placeholder="Name" autofocus="">
      	<input type="text" class="form-control1"  name="age" placeholder="Age" autofocus="">
      	<input type="text" class="form-control1"  name="pwd" placeholder="Password" autofocus="">
      <div class="radios">
        <label for="radio-01" class="label_radio">
            <input type="radio" checked=""> 男
        </label>
        <label for="radio-02" class="label_radio">
            <input type="radio"> 女
        </label>
	  </div>
      <label class="checkbox-custom check-success">
          <input type="checkbox" value="agree this condition" id="checkbox1"> <label for="checkbox1">我同意</label>
      </label>
      <button class="btn btn-lg btn-success1 btn-block" type="submit">提交</button>
      <div class="registration">
          Already Registered.
          <a class="" href="/yx/UserInfo/login">
              Login
          </a>
      </div>
  </form>
   <div class="copy_layout login register">
      <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
   </div>
</body>
</html>
