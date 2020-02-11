<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>在线支付</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/src/css/layui.css"
	media="all">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/client/css/base_register.css">
</head>
<body>
<div id="divcontent"  class="adbox box--white  box--is-rounded box--has-shadow ph10 mb8" >
<p:user/>
	<form action="${pageContext.request.contextPath}/pay" method="post">
	<table width="850px" border="0" cellspacing="0">
	<tr><td style="padding: 30px"><h2 style="text-align: center">订单信息</h2>
	<tr>
	
		<td style="text-align:center;padding-top:20px;">
		<h3>订单号：<INPUT TYPE="text" NAME="orderid" value="${param.id}" style="width:350px;"></h3>
		<h3>支付金额：<INPUT TYPE="text" NAME="money" value="${param.money}">元</h3>
		
		</td>
		</tr>
		<tr>
		
		<td style="text-align:center;padding-top:20px;">
		<div class="divBank" style="left:30px;">
			<div class="divText">选择支付方式</div>
			<div style="margin-left: 20px;">
				<div style="margin-bottom: 20px;">
					<input id="ICBC-NET-B2C" type="radio" name="yh"
						value="ICBC-NET-B2C" checked="checked" /> 
						<img name="ICBC-NET-B2C" align="middle" style="height:40px; width:40px;" src="<c:url value='/client/images/ali.png'/>" /> 
						<input id="CMBCHINA-NET-B2C" type="radio" name="yh" value="CMBCHINA-NET-B2C" /> 
						<img name="CMBCHINA-NET-B2C" align="middle" style="height:40px; width:40px;" src="<c:url value='/client/images/wechat.png'/>" /> 
						<input id="ABC-NET-B2C" type="radio" name="yh" value="ABC-NET-B2C" /> 
						<img name="ABC-NET-B2C" align="middle" style="height:40px; width:40px;" src="<c:url value='/client/images/card.png'/>" /> 
						<input id="CCB-NET-B2C" type="radio" name="yh" value="CCB-NET-B2C" /> 
						<img name="CCB-NET-B2C" align="middle" style="height:40px; width:40px;" src="<c:url value='/client/images/paypal.png'/>" />
				</div>
			</div>
			<div style="margin: 40px;">
			<a class="layui-btn layui-btn-warm" href="#" onClick="javascript :history.back(-1);">取消</a>
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
