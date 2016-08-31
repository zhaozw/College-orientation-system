<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<style>
#back:hover {
    background-color: #fffff !important;
}

</style>
</head>
<body> 

         <li>
            <a href="#">
               <span class="glyphicon glyphicon-user"></span>&nbsp;现场迎新管理
              <span class="fa arrow" /></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="/yx/welcome/checkIn">登记报到单打印状态</a></li>
              <li>
                <a href="/yx/welcome/militarySuppliesManagement">军训用品发送管理</a></li>
              <li>
                <a href="/yx/welcome/cardManagement">一卡通发放管理</a></li>
              <li>
                <a href="/yx/welcome/sitePayment">现场缴费管理</a></li>
              <li>
                <a href="/yx/welcome/registerAndReport">注册报到管理</a></li>
              <li>
                <a href="/yx/welcome/fileSubmission">档案提交管理</a></li>
            </ul>
          </li>
          <li>
            <a href="#">
               <span class="glyphicon glyphicon-cog"></span>&nbsp;权限管理模块
              <span class="fa arrow" /></a>
            <ul class="nav nav-second-level">
              <li>
                <a href="/yx/account/userInfo">用户管理</a>
              </li>
              <li>
                <a href="/yx/account/roleInfo">角色列表管理</a>
              </li>
              <li>
                <a href="/yx/account/powerInfo">权限列表管理</a>
              </li>
            </ul>
          </li>
          					<li><a href="#"><span
							class="glyphicon glyphicon-credit-card"></span> 教务管理子系统<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">院系管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/department/addDepartment">院系信息增加</a></li>
									<li><a href="/yx/education/department/findDepartment">院系信息查询</a></li>

								</ul></li>
							<li><a href="#">专业管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/major/addMajor">专业信息增加</a></li>
									<li><a href="/yx/education/major/findMajor">专业信息查询</a></li>

								</ul></li>
							<li><a href="#">年级管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/grade/addGrade">年级信息增加</a></li>
									<li><a href="/yx/education/grade/findGrade">年级信息查询</a></li>

								</ul></li>
							<li><a href="#">班级管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/education/class/addClass">班级信息增加</a></li>
									<li><a href="/yx/education/class/findClass">班级信息查询</a></li>

								</ul></li>
						</ul> <!-- /.nav-second-level --></li>
					<li><a href="#"><span
							class="glyphicon glyphicon-tasks"></span> 学生信息管理子系统<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">学生信息管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/studentInfo/addStudent">学生信息增加</a></li>
									<li><a href="/yx/studentInfo/findStudent">学生信息查询</a></li>
									<li><a href="/yx/studentInfo/viewInfoForStudent">查看个人信息</a></li>
								</ul></li>
						</ul> <!-- /.nav-second-level -->
				</li>
				
				
				     <li>
                        <a href="#"><i class="glyphicon glyphicon-home"></i>&nbsp;宿舍管理模块<span class="fa arrow"></span></a>
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
                            
                        </ul>
                    </li>

                    <li >
                        <a href="#"><i class="glyphicon glyphicon-question-sign"></i>&nbsp;管理员管理咨询模块<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/yx/advisory/list">咨询记录管理</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="glyphicon glyphicon-question-sign"></i>&nbsp;用户咨询模块<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="/yx/advisory/user/sendAdvisory">发布咨询信息</a>
                            </li>
                            <li>
                                <a href="/yx/advisory/user/list">查看咨询记录</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                 
					<li><a href="#"><span
							class="glyphicon glyphicon-credit-card"></span> 学校信息公布子系统<span
							class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li><a href="#">公布信息管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/noticePublish/message/addMessage.html">信息发布</a></li>
									<li><a href="/yx/noticePublish/message/findMessage.html">信息查询</a></li>

								</ul></li>
							<li><a href="#">栏目管理模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/noticePublish/column/addColumn.html">栏目增加</a></li>
									<li><a href="/yx/noticePublish/column/findColumn.html">栏目查询</a></li>

								</ul></li>
						        <li><a href="#">学生浏览模块</a>
								<ul class="nav nav-second-level">
									<li><a href="/yx/noticePublish/comment/showMessage.html">查询信息</a></li>
							

								</ul></li>
						</ul> <!-- /.nav-second-level --></li>
					
						   <li id="back" style="min-height:700px;">
                    </li>
</body>          
</html>          

