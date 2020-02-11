<%@ page  pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/src/css/layui.css"
	media="all">
	<link rel="stylesheet" type="text/css" href="../css/myAccount.css">
</head>
<body>
<div class="layui-nav" >
		<li class="layui-nav" style="font-size: 20px;">修改密码</li>
	</div>
<div class="detail">
		<form class="layui-form layui-form-pane" action=""
			>
			<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
					<label class="layui-form-label">${user.getUsername() }</label>
				
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">新密码</label>
				<div class="layui-input-inline">
					<input type="text" name="username" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input" value="">
				</div>
			</div>
			<div class="layui-form-item" pane="">
				<label class="layui-form-label">重复新密码</label>
				<div class="layui-input-inline">
					<input type="text" name="gender" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input" value="">
				</div>
			</div>
			

			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit="" lay-filter="demo1">修改</button>
					
				</div>
			</div>
		</form>
	</div>
</body>
</html>