<%@ page  pageEncoding="UTF-8"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/src/css/layui.css"
	media="all">
	<link rel="stylesheet" type="text/css" href="../css/myAccount.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/layui/src/layui.js"></script>
</head>
<body style="overflow-x:hidden;">
	<div class="layui-nav" >
		<li class="layui-nav" style="font-size: 20px;">个人信息</li>
	</div>
	<div class="detail">
		<form class="layui-form layui-form-pane" action=""
			>
			<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
					<label class="layui-form-label">${user.getUsername() }</label>
				
			</div>
			<!-- <div class="layui-form-item">
				<label class="layui-form-label">昵称</label>
				<div class="layui-input-inline">
					<input type="text" name="username" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input">
				</div>
			</div> -->
			<div class="layui-form-item">
				<label class="layui-form-label">真实姓名</label>
				<div class="layui-input-inline">
					<input type="text" name="username" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input" value="${user.getName() }">
				</div>
			</div>
			<div class="layui-form-item" pane="">
				<label class="layui-form-label">性别</label>
				<div class="layui-input-inline">
					<input type="text" name="gender" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input" value="${user.getGender() }">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
					<label class="layui-form-label">电话</label>
					<div class="layui-input-inline">
					<input type="text" name="telephone" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input" value="${user.getTelephone() }">
				</div>
				</div>

			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">详细地址</label>
				<div class="layui-input-block" style="width: 40%">
				<input type="text" name="telephone" lay-verify="required"
						placeholder="请输入" autocomplete="off" class="layui-input" value="${user.getAddress() }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">邮箱</label>
				<div class="layui-input-block" style="width: 40%">
					<input type="text" name="title" lay-verify="title"
						autocomplete="off" placeholder="请输入" class="layui-input" value="${user.getEmail() }">
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
<script>
layui.use(['form', 'layedit', 'laydate'], function(){
  var form = layui.form
  ,layer = layui.layer
  ,layedit = layui.layedit
  ,laydate = layui.laydate;
  
  //日期
  laydate.render({
    elem: '#date'
  });
  laydate.render({
    elem: '#date1'
  });
  
  //创建一个编辑器
  var editIndex = layedit.build('LAY_demo_editor');
 
  //自定义验证规则
  form.verify({
    title: function(value){
      if(value.length < 5){
        return '标题至少得5个字符啊';
      }
    }
    ,pass: [/(.+){6,12}$/, '密码必须6到12位']
    ,content: function(value){
      layedit.sync(editIndex);
    }
  });
  
  //监听指定开关
  form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
  
  //监听提交
  form.on('submit(demo1)', function(data){
    layer.alert(JSON.stringify(data.field), {
      title: '最终的提交信息'
    })
    return false;
  });
 
  //表单初始赋值
  form.val('example', {
    "username": "贤心" // "name": "value"
    ,"password": "123456"
    ,"interest": 1
    ,"sex": ${user.getGender()}
    ,"desc": "我爱 layui"
  }) 
});
</script>
</html>