<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>个人中心</title>
<link rel="stylesheet" type="text/css" href="css/myAccount.css">
</head>
<body>
	<%@include file="head.jsp"%> 
	<%@include file="nav_top.jsp"%>
	<!-- 面包屑 start -->
	<fieldset class="layui-elem-field layui-field-title"
		style="margin-top: 1px;"></fieldset>
	<span class="layui-breadcrumb" style="margin-left: 100px"> <a
		href="${pageContext.request.contextPath }/index.jsp">首页</a> <a><cite>个人中心</cite></a>
	</span>
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
					<a href="${pageContext.request.contextPath }/client/myAccount.jsp">个人信息</a>
				</dd>
				<dd>
					<a href="${pageContext.request.contextPath }/client/myAccountBox/userAccount.jsp" target="boxContent">修改密码</a>
				</dd>
			</dl></li>
		<li class="layui-nav-item layui-nav-itemed"><a
			href="javascript:;">订单中心</a>
			<dl class="layui-nav-child">
				<dd>
					<a href="${pageContext.request.contextPath }/findOrderByUser" >我的订单</a>
				</dd>
				
			</dl></li>
		
	</ul>
	<!-- 侧边导航栏 end -->
	<div class="box" style="">
	<iframe src="./myAccountBox/userInfo.jsp" frameborder="0" name="boxContent" ></iframe>
	</div>
	<div style="height:150px;">
	</div>
	<%@include file="foot.jsp"%> 
</body>
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});
		});
	</script>
	<script>
		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form, layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

							//日期
							laydate.render({
								elem : '#date'
							});
							laydate.render({
								elem : '#date1'
							});

							//创建一个编辑器
							var editIndex = layedit.build('LAY_demo_editor');

							//自定义验证规则
							form.verify({
								title : function(value) {
									if (value.length < 5) {
										return '标题至少得5个字符啊';
									}
								},
								pass : [ /(.+){6,12}$/, '密码必须6到12位' ],
								content : function(value) {
									layedit.sync(editIndex);
								}
							});

							//监听指定开关
							form.on('switch(switchTest)', function(data) {
								layer.msg('开关checked：'
										+ (this.checked ? 'true' : 'false'), {
									offset : '6px'
								});
								layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF',
										data.othis)
							});

							//监听提交
							form.on('submit(demo1)', function(data) {
								layer.alert(JSON.stringify(data.field), {
									title : '最终的提交信息'
								})
								return false;
							});

							//表单初始赋值
							form.val('example', {
								"username" : "贤心" // "name": "value"
								,
								"password" : "123456",
								"interest" : 1,
								"like[write]" : true //复选框选中状态
								,
								"close" : true //开关状态
								,
								"sex" : "女",
								"desc" : "我爱 layui"
							})

						});
	</script>


	

</html>