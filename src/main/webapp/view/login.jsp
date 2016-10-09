﻿<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录后台管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
       
    <div class="loginbox loginbox3">
       <form action="Login_login.action" method="post" >
	    <ul>
	    <li><input name="user.name" type="text" class="loginuser" value="用户名"  onclick="JavaScript:this.value=''"/></li>
	    <li><input name="user.password" type="password" class="loginpwd"  onclick="JavaScript:this.value=''"/></li>
	     <li class="yzm">
   	 		<span><input name="info" type="text" value="验证码" onclick="JavaScript:this.value=''"/></span><cite><em>	<img border="0" src="VerifyCodeAction" />	</em></cite> 
    	</li>
	    <li><input name="" type="submit" class="loginbtn" value="登录"   /><label><input type="checkbox"   />记住密码</label><label><a href="#"><c:out value="${info}" /></a></label></li>
	    </ul>
    </form>
    </div>
    </div>
</body>

</html>
