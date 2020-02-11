<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="edu.ouc.lenovo.domain.User"%>
<!DOCTYPE html>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/layui/src/css/layui.css"
	media="all">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/layui/src/layui.js"></script>


<ul class="layui-nav layui-bg-gray" style="height:50px" >
	<li class="layui-nav-item fl" ><a href="${pageContext.request.contextPath }/index.jsp" >Lenovo Mall</a></li>



	<%
		User user = (User) request.getSession().getAttribute("user");
		if (null == user) {
	%>
	<li class="layui-nav-item fr"><a
		href="${pageContext.request.contextPath}/client/register.jsp">新用户注册</a>
	</li>
	<li class="layui-nav-item fr"><a
		href="${pageContext.request.contextPath}/myAccount">我的帐户</a></li>
	
	<%
		} else {
	%>
	<li class="layui-nav-item fr" lay-unselect="" ><a
		href="${pageContext.request.contextPath}/myAccount">个人中心</a>
		<dl class="layui-nav-child">
			<dd>
				<a href="${pageContext.request.contextPath}/myAccount">修改信息</a>
			</dd>
			
			<dd>
				<a href="${pageContext.request.contextPath}/logout" onclick="javascript:return confirm_logout()">注销</a>
			</dd>
		</dl></li>
	<%-- <a href="${pageContext.request.contextPath}/logout" onclick="javascript:return confirm_logout()">用户退出</a>
	<br><br><br>欢迎您： ${user.username} --%>
	<%
		}
	%>
	
	<li class="layui-nav-item fr"><a href="">帮助<span
			class="layui-badge-dot"></span></a></li>

	<li class="layui-nav-item fr">
	<a href="${pageContext.request.contextPath}/client/cart.jsp">购物车
			</a></li>
</ul>

<script type="text/javascript">
//注销确认框
function confirm_logout() {   
    var msg = "您确定要退出登录吗？";   
    if (confirm(msg)==true){   
    return true;   
    }else{   
    return false;   
    }   
} 
</script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
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