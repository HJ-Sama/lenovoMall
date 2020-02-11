<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="p" uri="http://www.itcast.cn/tag"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/client/css/main.css"
	type="text/css" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/layui/src/layui.js"></script>
<script type="text/javascript">
	//删除订单
	function o_del() {
		var msg = "您确定要删除该订单吗？";
		if (confirm(msg) == true) {
			return true;
		} else {
			return false;
		}
	}
</script>
</head>
<body>
	<%@include file="head.jsp"%>
	<%@include file="nav_top.jsp"%>
	<!-- 面包屑 start -->
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 1px;"></fieldset>
	<span class="layui-breadcrumb" style="margin-left: 100px"> <a
		href="${pageContext.request.contextPath }/index.jsp">首页</a> <a><cite>订单中心</cite></a>
	</span>
	<h1 style="display:none" id="successFlag">${paySuccess }!!</h1>
	<!-- 面包屑 end -->
	<!-- 侧边导航栏 start -->
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 1px;"></fieldset>
	<ul class="sidebar layui-nav layui-nav-tree layui-inline "
		lay-filter="demo" style="">
		<li class="layui-nav-item layui-nav-itemed"><a
			href="javascript:;">账户中心</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="${pageContext.request.contextPath }/client/myAccount.jsp"
						>个人信息</a>
				</dd>
				<dd>
					<a href="${pageContext.request.contextPath }/client/myAccount.jsp">修改密码</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item layui-nav-itemed"><a
			href="javascript:;">订单中心</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="${pageContext.request.contextPath }/findOrderByUser">我的订单</a>
				</dd>
				
			</dl></li>

	</ul>
	<!-- 侧边导航栏 end -->
	<div class="box">
		<div id="divpagecontent" style="width: 1000px;">
			<table width="100%" border="0" cellspacing="0">
				<tr>

					<td>
						<table cellspacing="0" class="infocontent">
							<tr>
								<td style="padding: 20px"><p>
										<b>我的订单</b>
									</p>
									<p>
										共有<font style="color: #FF0000">${orders.size()}</font>订单
									</p>
									<table width="100%" border="0" cellspacing="0"
										class="tableopen">
										<tr>
											<td bgcolor="#A3E6DF" class="tableopentd01">订单号</td>
											<td bgcolor="#A3D7E6" class="tableopentd01">收件人</td>
											<td bgcolor="#A3CCE6" class="tableopentd01">订单时间</td>
											<td bgcolor="#A3B6E6" class="tableopentd01">状态</td>
											<td bgcolor="#A3E2E6" class="tableopentd01">操作</td>
										</tr>
										<c:forEach items="${orders}" var="order">
											<tr>
												<td class="tableopentd02">${order.id}</td>
												<td class="tableopentd02">${order.receiverName }</td>
												<td class="tableopentd02">${order.ordertime}</td>
												<td class="tableopentd02">${order.paystate==0?"未支付":"已支付"}</td>
												<td class="tableopentd03"><a
													href="${pageContext.request.contextPath}/findOrderById?id=${order.id}">查看</a>&nbsp;&nbsp;
													<c:if test="${order.paystate==0 }">
														<a
															href="${pageContext.request.contextPath}/delOrderById?id=${order.id}"
															onclick="javascript:return o_del()">刪除</a>
													</c:if> <c:if test="${order.paystate!=0 }">
														<a
															href="${pageContext.request.contextPath}/delOrderById?id=${order.id}&type=client"
															onclick="javascript:return o_del()">刪除</a>
													</c:if></td>
											</tr>
										</c:forEach>
									</table></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
		</div>
	</div>
	
	<div style="height:300px;">
	<!-- <div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
  <button data-method="notice" class="layui-btn" type="hidden">示范一个公告层</button> -->
</div>
 
	</div>
	<script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
  
  //触发事件
  var active = {
    setTop: function(){
      var that = this; 
      //多窗口模式，层叠置顶
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '当你选择该窗体时，即会在最顶端'
        ,area: ['390px', '260px']
        ,shade: 0
        ,maxmin: true
        ,offset: [ //为了演示，随机坐标
          Math.random()*($(window).height()-100)
          ,Math.random()*($(window).width()-390)
        ] 
        ,content: '//layer.layui.com/test/settop.html'
        ,btn: ['继续弹出', '全部关闭'] //只是为了演示
        ,yes: function(){
          $(that).click(); 
        }
        ,btn2: function(){
          layer.closeAll();
        }
        
        ,zIndex: layer.zIndex //重点1
        ,success: function(layero){
          layer.setTop(layero); //重点2
        }
      });
    }
    ,notice: function(){
      //示范一个公告层
      layer.open({
        type: 1
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: '500px;'
        ,offset: '100px;'
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: [ '我知道了']
        ,btnAlign: 'c'
        ,moveType: 1 //拖拽模式，0或者1
        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">亲！恭喜您购物成功！<br><br>您本次完成支付的订单为<br>${orderid }<br><br>感谢您的购买<br><br>您可以在 “个人中心”-“我的订单” 中查看您的订单 ^_^</div>'
        ,success: function(layero){
          /* var btn = layero.find('.layui-layer-btn');
          btn.find('.layui-layer-btn0').attr({
            href: 'http://www.layui.com/'
            ,target: '_blank'
          }); */
        }
      });
    }
  };
  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
  
  $(document).ready(function(){
	  if($("#successFlag").html()=="success!!")
		  {
		  active.notice();
		  }
	  });
});
</script>
	<%@include file="foot.jsp"%>
</body>
<style>
.box{
	width: 1020px;
	height: 500px;
	display:inline-block;
	background-color: #e7e8e9;
	position: absolute;
	left: 320px
}
.sidebar{
	position: absolute;
	left: 100px;
}
</style>
</html>
