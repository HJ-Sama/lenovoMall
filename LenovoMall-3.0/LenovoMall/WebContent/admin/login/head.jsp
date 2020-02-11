<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  
  <link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/src/css/layui.css"
	media="all">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin ">
  <div class="layui-header layui-bg-gray">
    <div class="layui-logo">Lenovo系统后台</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
     <!--  此处target要绑定到ifream的name属性上，不是id！！！ -->
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/listProduct" target="loginbody">商品管理</a></li>
      <!-- <li class="layui-nav-item"><a href="">销售榜单</a></li> -->
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/findOrders" target="loginbody">订单管理</a></li>
      <%-- <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/listProduct?list4index=true" target="loginbody">首页管理</a></li> --%>
      <<!-- li class="layui-nav-item">
        <a href="javascript:;">其它系统</a>
        <dl class="layui-nav-child">
          <dd><a href="">邮件管理</a></dd>
          <dd><a href="">消息管理</a></dd>
          <dd><a href="">授权管理</a></dd>
        </dl>
      </li> -->
    </ul>
    <ul class="layui-nav layui-layout-right">
      
      <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/logout" onclick="exitSys()">退出系统</a></li>
    </ul>
  </div>

  
  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">
    <iframe src="welcome.jsp"  frameborder="0" id="login-body" 
    name="loginbody" style="width: 100%;height:600px; "
    ></iframe> 
    </div>
  </div>
  
</div>
<script type="text/javascript">
	function exitSys() {
		var msg = "您确定要退出登录吗？";   
	    if (confirm(msg)==true){   
	    return true;   
	    }else{   
	    return false;
		/* var flag = window.confirm("确认退出系统吗?");
		if (flag) {
			window.top.open('', '_parent', '');
			window.top.close();
		} */
		//如果你使用的是firefox浏览器必须要做以下设置 
		//1、在地址栏输入about:config然后回车，警告确认 
		//2、在过滤器中输入”dom.allow_scripts_to_close_windows“，双击即可将此值设为true 即可完成了 
	}
	}
</script>

<script src="${pageContext.request.contextPath }/layui/src/layui.js"></script>
<script>
//JavaScript代码区域
layui.use('element', function(){
  var element = layui.element;
  
});

</script>
</body>
</html>