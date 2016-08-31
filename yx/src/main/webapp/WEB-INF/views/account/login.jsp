<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>迎新系统</title>
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
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->
<script src="/yx/assets/js/bootstrap.min.js"></script>
<link href="/yx/assets/css/bootstrapValidator.min.css" rel="stylesheet">
<script src="/yx/assets/js/bootstrapValidator.min.js"></script>
<script type="text/javascript">

$(function() {
$('#loginForm').bootstrapValidator({
    message: 'This value is not valid',
    feedbackIcons: {
        valid: 'glyphicon glyphicon-ok',
        invalid: 'glyphicon glyphicon-remove',
        validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
    	userId: {
            validators: {
                notEmpty: {
                    message: '登录名不能为空！'
                }
            }
        },
        pwd: {
            validators: {
                notEmpty: {
                    message: '密码不能为空！'
                }
            }
        }
        
    }
});

});

</script>

</head>
<body id="login">
  <div class="login-logo">
    <a href="index.html"><img src="/yx/assets/images/logo.png" alt=""/></a>
  </div>
  <h2 class="form-heading">登录</h2>
  <div class="app-cam" >
	  <form  method="post" action="/yx/login" id="loginForm">
	  
	  
	       <div class="form-group">
                          <label for="modifiedRoleId" class="control-label"  style="font-size:16px;"><strong>账号</strong></label>
                          <div class="input-group">
                          		<input type="text" class="form-control1" id="userId"  name="userId"  placeholder="ID">
                          </div>
                        </div>
                        <div class="form-group" style="margin-top:30px;font-size:16px;">
                          <label for="modifiedRoleName" class="control-label" ><strong>密码</strong></label>
                          <div class="input-group">
                          <input type="password"  class="form-control1"  id="pwd" name="pwd" placeholder="Password">
                          </div>
                        </div>
                        
                        
                        
		<div class="submit"><input type="submit"  value="登录"></div>
		<div class="login-social-link">
          <a href="/yx/userAdvisory" class="facebook">
              咨询
          </a>
          <a href="/yx/noticePublish/showMessage" class="twitter">
              评论
          </a>
        </div>

	</form>
  </div>
   <div class="copy_layout login">
      <p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="迎新系统">迎新系统</a> - Collect from <a href="http://www.cssmoban.com/" title="迎新系统" target="_blank">迎新系统</a></p>
   </div>
</body>
</html>
