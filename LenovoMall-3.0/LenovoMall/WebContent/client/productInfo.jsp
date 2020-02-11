<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>电子书城</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/client/css/main.css"
	type="text/css" />
	<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/src/css/layui.css"
	media="all">
<style type="text/css">
a {
	font-size: 14px;
}
b{
	font-size: 24px;
}
font{
font-size:22px;
}
</style>
</head>
<body class="main">
	<jsp:include page="head.jsp" />
	<jsp:include page="nav_top.jsp" />
	<div id="divpagecontent">
		<table width="100%" border="0" cellspacing="0">
			<tr>
				<td>
					<div style="text-align: left; margin: 5px 10px 5px 0px;">
						<a href="${pageContext.request.contextPath }/index.jsp">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp; <a
							href="${pageContext.request.contextPath}/showProductByPage?category=${p.category}">&nbsp;${p.category}</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;<a>${p.name}</a>
					</div>
					<div style="padding: 20px; background-color: #F2F2F2;">
						<div class="layui-row layui-col-space15">
							<div class="layui-col-md4">
								<div class="layui-card">
									<div class="layui-card-body">
									
									<div class="layui-carousel" id="test3" lay-filter="test4">
  <div carousel-item="">
    <div><img src="${pageContext.request.contextPath}${p.imgurl}"
											width="300" height="300" border="0" /></div>
    <div><img src="${pageContext.request.contextPath}${pis[0].url}"
										width="300" height="300" border="0" /></div>
    <div><img src="${pageContext.request.contextPath}${pis[1].url}"
										width="300" height="300" border="0" /></div>
  </div>
</div> 
									
										
									</div>
								</div>
							</div>
							<div class="layui-col-md8">
								<div class="layui-card">

									<div class="layui-card-body">
										<font class="bookname" style="font-size:22px">&nbsp;${p.name}</font><br>
										<hr class="layui-bg-black">
										<b>售价：</b><br><br>
										<font color="#FF0000" >￥${p.price}</font>
										<hr class="layui-bg-black">
										<b>类别：</b>
										<font >${p.category }</font>
										<br><br>
										<b>CPU：</b>
										<font >${p.cpu }</font><br><br>
										<b>内存：</b>
										<font >${p.memory }</font><br><br>
										<b>硬盘：</b>
										<font >${p.disk }</font><br><br>
										<b>屏幕：</b>
										<font >${p.screen }</font><br><br>
										<b>颜色：</b>
										<font >${p.color }</font><br><br>
										<hr class="layui-bg-black">
										<p>
											<b >内容简介：</b><br>
											<font style="font-size:22px">${p.descript}</font>
										</p>
									</div>
								</div>
							</div>
							<div style="text-align: center; margin-top: 10px;">
								<a href="${pageContext.request.contextPath}/addCart?id=${p.id}">
									<button class="layui-btn layui-btn-warm" style="width:200px;height:60px;font-size:30px;margin-left:800px;">购买</button>
								</a>

							</div>
						</div>

					</div> <%-- <td style="padding: 20px 5px 5px 5px">
										<div class="layui-card">
										 <font class="bookname">&nbsp;${p.name}</font>
											<hr />售价：<font color="#FF0000">￥${p.price}</font>
											<hr /> 类别：${p.category }
											<hr />
											<p>	
												<b>内容简介：</b>
											</p> ${p.descript}</td>
										</div>
												
									</tr> --%>
					<div class="layui-row layui-col-space15">
						<div class="layui-col-md3">
							<div class="layui-card">
								<p>
									<img src="${pageContext.request.contextPath}${pis[0].url}"
										width="300" height="300" border="0" />

								</p>
							</div>
						</div>
						<div class="layui-col-md3">

							<div class="layui-card">
								<p>
									<img src="${pageContext.request.contextPath}${pis[1].url}"
										width="300" height="300" border="0" />

								</p>
							</div>
						</div>
						<div class="layui-col-md3">

							<div class="layui-card">
								<p>
									<img src="${pageContext.request.contextPath}${p.imgurl}"
										width="300" height="300" border="0" />

								</p>
							</div>
						</div>


					</div>

					</div> <jsp:include page="foot.jsp" />
					
					<script src="${pageContext.request.contextPath }/layui/src/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['carousel', 'form'], function(){
  var carousel = layui.carousel
  ,form = layui.form;
  
  //常规轮播
  carousel.render({
    elem: '#test3'
    ,arrow: 'always'
  });
  
  //改变下时间间隔、动画类型、高度
  carousel.render({
    elem: '#test3'
    ,autoplay:false
    ,anim: 'fade'
    ,height: '300px'
    ,width:'300px'
    ,indicator:'none'
  });
  
  

  

});
</script>
</body>
</html>
