<%@ page pageEncoding="UTF-8"%>
<script type="text/javascript">
/**
 * my_click和my_blur均是用于前台页面搜索框的函数
 */
//鼠标点击搜索框时执行
function my_click(obj, myid){
	//点击时，如果取得的值和搜索框默认value值相同，则将搜索框清空
	if (document.getElementById(myid).value == document.getElementById(myid).defaultValue){
	  document.getElementById(myid).value = '';
	  obj.style.color='#000';
	}
}
//鼠标不聚焦在搜索框时执行
function my_blur(obj, myid){
	//鼠标失焦时，如果搜索框没有输入值，则用搜索框的默认value值填充
	if (document.getElementById(myid).value == ''){
	 document.getElementById(myid).value = document.getElementById(myid).defaultValue;
	 obj.style.color='#999';
 }
}

/**
 * 点击搜索按钮执行的函数
 */
function search(){
	document.getElementById("searchform").submit();
}
</script>

<ul class="layui-nav layui-bg-gray">

	<li class="layui-nav-item" style="margin-left: 60px;"><a
		href="${pageContext.request.contextPath}/showProductByPage?category=常规笔记本">常规笔记本</a></li>
	<li class="layui-nav-item"><a 
	href="${pageContext.request.contextPath}/showProductByPage?category=轻薄笔记本">轻薄笔记本</a></li>
	<li class="layui-nav-item"><a 
	href="${pageContext.request.contextPath}/showProductByPage?category=商务笔记本">商务笔记本</a></li>
	<li class="layui-nav-item"><a 
	href="${pageContext.request.contextPath}/showProductByPage?category=游戏笔记本">游戏笔记本</a></li>
	<li class="layui-nav-item"><a 
	href="${pageContext.request.contextPath}/showProductByPage?category=变形笔记本">变形笔记本</a></li>
	
	<li class="layui-nav-item"><a href="${pageContext.request.contextPath}/showProductByPage">随便看看</a></li>
	<li class="layui-nav-item"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
</ul>
 <div class="layui-form-item" style="position: absolute; right:157px ;top:61px">
 <form action="${pageContext.request.contextPath}/MenuSearchServlet" id="searchform">
    <div class="layui-input-inline">
      <input type="text" name="textfield" placeholder="请输入" 
      autocomplete="off" class="layui-input" id="textfield"
      onmouseover="this.focus();"
				onclick="my_click(this, 'textfield');"
				onBlur="my_blur(this, 'textfield');">
    </div>
    <button class="layui-btn layui-btn-warm">搜索</button></form>
  </div>