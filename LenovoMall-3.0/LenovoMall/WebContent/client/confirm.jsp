<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/src/css/layui.css"
	media="all">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/base_register.css">
<title>确认支付</title>
</head>
<body>
<div id="divcontent"  class="adbox box--white  box--is-rounded box--has-shadow ph10 mb8">
<!-- 确认支付form -->
	<form action="${pageContext.request.contextPath }/orderstate" method="post">
	<table width="850px" border="0" cellspacing="0">
	<tr><td style="padding: 30px"><h2 style="text-align: center">订单信息确认</h2>
	<tr>
		<td style="text-align:center;padding-top:20px;">
		<h3>订单号：<INPUT TYPE="text" NAME="orderid" value="${orderid}" style="width:350px;"></h3>
		<h3>支付金额：<INPUT TYPE="text" NAME="money" value="${money}">元</h3>
		
		</td>
		</tr>
		<tr>
		
		<td style="text-align:center;padding-top:20px;">
		<div class="divBank" style="left:30px;">
			<div style="margin: 40px;">
			<input type="hidden" name="orderid" value="${orderid}"/> 
			<a class="layui-btn layui-btn-warm" href="#" onClick="javascript :history.back(-1);">返回</a>
			<button class="layui-btn layui-btn-warm" TYPE="submit" >确定支付</button>
			</div>
		</div>
		</td>
		</tr>
		</table>
	</form>
</div>
	
</body>
</html>