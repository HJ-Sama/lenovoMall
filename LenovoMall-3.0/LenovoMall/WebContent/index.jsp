<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Lenovo首页</title>
<script language="JavaScript">
	if (window != top)
		top.location.href = location.href;
</script>
<link rel="stylesheet" href="client/css/index.css" />
</head>
<body>
	<%@include file="./client/head.jsp"%>
	<%@include file="./client/nav_top.jsp" %> 
	
	
	<!-- 轮播图部分 start -->
	<div align="center">
		<div class="layui-carousel" id="test1" lay-filter="test1">
			<div carousel-item>
				<div>
					<img src="./client/images/test2.jpg" width="100%" height="400px"
						alt="">
				</div>
				<div>
					<img src="./client/images/test1.jpg" width="100%" height="400px"
						alt="">
				</div>
				
				<div >
				<img src="./client/images/test3.jpg" width="100%" height="400px"
						alt="">
				</div>
				<div >
				<img src="./client/images/test4.jpg" width="100%" height="400px"
						alt="">
				</div>
				
			</div>
		</div>
	</div>
	<!-- 轮播图部分 end -->
	
	<!-- 电脑广告标签 start -->
	<div class="w tabswitch-title">
     	<p>——个人&家庭产品——</p>
     </div>
     <div class="w tabswitch-list">
     	<ul>
     		<li>
     			<a href="#"><img src="client/images/le.png" alt="error"><p>lenovo电脑</p></a>
     		</li>
     		<li>
     			<a href="#"><img src="client/images/th.png" alt="error"><p>ThinkPad电脑</p></a>
     		</li>
     		<li>
     			<a href="#"><img src="client/images/ping.png" alt="error"><p>平板电脑</p></a>
     		</li>
     		<li>
     			<a href="#"><img src="client/images/mobile.png" alt="error"><p>手机/通信</p></a>
     		</li>
     	</ul>
     </div>
     <div class="w tabswitch-title">
     	<p>——企业用户——</p>
     </div>
     <div class="w tabswitch-list">
     	<ul>
     		<li>
     			<a href="#"><img src="client/images/busi1.png" alt="error"><p>商用产品</p></a>
     		</li>
     		<li>
     			<a href="#"><img src="client/images/busi2.png" alt="error"><p>商用解决方案</p></a>
     		</li>
     		<li>
     			<a href="#"><img src="client/images/busi3.png" alt="error"><p>数据中心产品</p></a>
     		</li>
     		<li>
     			<a href="#"><img src="client/images/busi4.png" alt="error"><p>数据中心解决方案</p></a>
     		</li>
     	</ul>
     </div>
     <!-- 电脑广告标签 end -->
     
	<%@include file="./client/foot.jsp"%>

	<script>
		layui.use([ 'carousel', 'form' ],
				function() {
					var carousel = layui.carousel, form = layui.form;

					//常规轮播
					carousel.render({
						elem : '#test1',
						arrow : 'always',
						width : '1200px',
						height : '400px',
						interval : 3000
					});

					//事件
					carousel.on('change(test4)', function(res) {
						console.log(res)
					});

					var $ = layui.$, active = {
						set : function(othis) {
							var THIS = 'layui-bg-normal', key = othis
									.data('key'), options = {};

							othis.css('background-color', '#5FB878').siblings()
									.removeAttr('style');
							options[key] = othis.data('value');
							ins3.reload(options);
						}
					};

					//监听开关
					form.on('switch(autoplay)', function() {
						ins3.reload({
							autoplay : this.checked
						});
					});

					$('.demoSet').on('keyup', function() {
						var value = this.value, options = {};
						if (!/^\d+$/.test(value))
							return;

						options[this.name] = value;
						ins3.reload(options);
					});

				});
	</script>
</body>
</html>
