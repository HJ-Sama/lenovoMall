<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN>
<html lang="en">
<head>
	
	<!-- css基本样式 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/base_register.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/normalize.css">
	<script  src="${pageContext.request.contextPath}/client/javascript/cli.js"></script>
    <script type="text/javascript"
	src="${pageContext.request.contextPath}/client/js/form.js"></script>
    <script type="text/javascript">
	function changeImage() {
		// 改变验证码图片中的文字
		document.getElementById("img").src = "${pageContext.request.contextPath}/imageCode?time="
				+ new Date().getTime();
	}
	</script>
	<title>注册联想中国（Lenovo China）</title>
</head>
<body>
	<!-- 头部开始
	-->
	<%@include file="./head.jsp"%>
	<div >
		<!-- 头部旁的图片开始 需要插入链接 -->
		<div class="logo">
			<a href="${pageContext.request.contextPath }/index.jsp">
			<img src="${pageContext.request.contextPath}/client/images/logo_roatated.png" width="60" height="180">
		    </a>
		</div>
		<!-- 头部旁边的图片结束 -->
    </div>
		<!-- 头部结束 -->

	
	    <!-- 3.用户注册  start -->
	<div id="divcontent"  class="adbox box--white  box--is-rounded box--has-shadow ph10 mb8">
		<form action="${pageContext.request.contextPath}/register"
			method="post" onsubmit="return checkForm();">
			<table width="850px" border="0" cellspacing="0">
				<tr>
				<td style="padding: 30px"><h1 style="text-align: center">新用户注册</h1>
					<tr>
					<td style="text-align:center;padding-top:20px;"> <font color="#ff0000">${requestScope["register_message"]}</font></td>
						</tr>
						<table   border="0" cellspacing="2" class="upline">
							<tr>
								<td style="text-align: right; width: 20%">邮箱：</td>
								<td style="width: 40%"><input type="text"  class="textinput"
									id="email" name="email" onkeyup="checkEmail();" /></td>
								<td colspan="2"><span id="emailMsg"></span><font
									color="#999999">请输入有效的邮箱地址</font></td>
							</tr>
							<tr>
								<td style="text-align: right">用户名：</td>
								<td><input type="text" class="textinput" id="username"
									name="username" onkeyup="checkUsername();" /></td>
								<td colspan="2"><span id="usernameMsg"></span><font
									color="#999999">字母数字下划线1到10位, 不能是数字开头</font></td>
							</tr>
							<tr>
								<td style="text-align: right">密码：</td>
								<td><input type="password" class="textinput" id="password"
									name="password" onkeyup="checkPassword();" /></td>
								<td><span id="passwordMsg"></span><font color="#999999">密码请设置6-16位字符</font></td>
							</tr>
							<tr>
								<td style="text-align: right">重复密码：</td>
								<td><input type="password" class="textinput"
									id="repassword" name="repassword" onkeyup="checkConfirm();" />
								</td>
								<td><span id="confirmMsg"></span>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: right">性别：</td>
								<td colspan="2">&nbsp;&nbsp; <input type="radio"
									name="gender" value="男" checked="checked" /> 男
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
									name="gender" value="女" /> 女
								</td>
								<td>&nbsp;</td>
							</tr>
							<tr>
								<td style="text-align: right">联系电话：</td>
								<td colspan="2"><input type="text" class="textinput"
									 name="telephone" /></td>
								<td>&nbsp;</td>
							</tr>
							
						</table>


					

						<table width="70%" border="0" cellspacing="0">
							<tr>
								<td style="padding-top: 20px;padding-left:200px; text-align: center">
								<input type="submit" class="submit" value="立即注册" name="incsubmit"
								style="width:293px;
	height:50px;
	background-color: rgb(226, 35, 25);
	color: rgb(255, 255, 255);
	font-size: 14px;">
								
								</td>
							</tr>
						</table></td>
				</tr>
			</table>
		</form>
		<!-- 注册底部文字开始 -->
			<div class="regist_agreement" align="center" style="width:291px;margin:0 auto" >
                <span  align="center">注册即表示您同意并遵守联想
                 <a href="https://shop.lenovo.com.cn/investor/html/legal.html" target="_blank" style="text-decoration: none"><strong style="color:rgb(66, 66, 66)">使用条款</strong></a> 和 <a href="https://www.lenovo.com.cn/public/privacy.html" target="_blank"style="text-decoration: none"><strong style="color:rgb(66, 66, 66)">隐私策略</strong></a></br>
                </span>

                <span class="go_login">已有账号 <a href="${pageContext.request.contextPath }/client/login.jsp" class="go-login" style="text-decoration: none"><strong style="color:rgb(66, 66, 66)">点此登录&gt;</strong></a></span>
                
            </div>


            <!-- 注册底部文字结束 -->
	</div>

	<!-- 用户注册  end -->

<%@include file="./foot.jsp"%>

</body>
</html>