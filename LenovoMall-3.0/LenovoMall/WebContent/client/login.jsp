<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/login.css">
	<!-- <script type="text/javascript" src = "login.js"></script> -->
	<title>联想中国</title>
</head>
<body>
<%@include file="head.jsp"%>
<div class="header">
		<!-- 头部旁的图片开始 需要插入链接 -->
		<div class="logo">
			<a href="${pageContext.request.contextPath }/index.jsp">
			<img src="${pageContext.request.contextPath}/client/images/logo_roatated.png" width="60" height="180">
		    </a>
		</div>
		<!-- 头部旁边的图片结束 -->
    </div>

<form class="form1" action="${pageContext.request.contextPath}/login">
	<div class = "login_main">

		<!-- 头 -->
		<div class = "title">联想会员登录</div>
		
	
		<div > <font color="#ff0000">${requestScope["register_message"]}</font></div>							
		<!-- 账号密码 -->
		<div class = "login_account">
			<input name = "username" type="text" placeholder="用户名" class="input_account">
		</div>
		<div class = "login_password">
			<input name="password" type="password" placeholder="密码" class="input_pwd">

		</div>
		<!-- 自动登录 -->
		<div class = "check">
			<input class="persistent" checked="" type="checkbox" latag="latag_pc_login_autologin" id="psAuto">
			<label for="psAuto">自动登录</label>
		</div>
		<!-- 登录按钮 -->
		<div class = "button">
			<input type="submit" value="登录" onclick="Check()">
		</div>
		<!-- 快捷栏 -->
		<div class = "fast">
			<!-- <a href="111" class ="login_fast" >手机验证码快捷登录</a> -->
			<a href="./register.jsp" class = "register">立即注册</a>
			<!-- <a href="333" class = "forget">忘记密码</a> -->
		</div>
	</div>
	</form>
	<%@include file="foot.jsp"%>
</body>

</html>