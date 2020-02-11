<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML>
<HEAD>
	<meta http-equiv="Content-Language" content="zh-cn">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<LINK href="${pageContext.request.contextPath}/admin/css/Style.css" type="text/css" rel="stylesheet">
	<script language="javascript" src="${pageContext.request.contextPath}/admin/js/public.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/admin/js/check.js"></script>
	<script type="text/javascript">
		//设置类别的默认值
		function setProductCategory(t) {
			var category = document.getElementById("category");
	
			var ops = category.options;
			for ( var i = 0; i < ops.length; i++) {
	
				if (ops[i].value == t) {
					ops[i].selected = true;
					return;
				}
			}
	
		};
	</script>
</HEAD>
<body onload="setProductCategory('${p.category}')">
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/editProduct" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="id" value="${p.id}" /> &nbsp;
		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4" height="26">
					<strong>编辑商品</strong>
				</td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品名称：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input type="text" name="name" class="bg" value="${p.name }" />
				</td>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品价格：</td>
				<td class="ta_01" bgColor="#ffffff">
					<input type="text" name="price" class="bg" value="${p.price }" />
				</td>
			</tr>
				<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01" >商品数量：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="pnum" class="bg" value="${p.pnum }" /></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品类别：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="category"
					id="category">
						<option value="" selected="selected">--${p.category }--</option>
						<option value="常规笔记本">常规笔记本</option>
						<option value="轻薄笔记本">轻薄笔记本</option>
						<option value="商务笔记本">商务笔记本</option>
						<option value="游戏笔记本">游戏笔记本</option>
						<option value="变形笔记本">变形笔记本</option>
				</select></td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">硬盘：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="disk"
					id="disk">
						<option value="" selected="selected">--${p.disk }--</option>
						<option value="256G 固态">256G 固态  </option>
						<option value="1T 机械">1T 机械</option>
						<option value="256G 固态+ 1T 机械">256G 固态+ 1T 机械</option>
						<option value="512G 固态">512G 固态</option>
						<option value="512G 固态+ 1T 机械">512G 固态+ 1T 机械</option>
				</select></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">CPU：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="cpu"
					id="cpu">
						<option value="" selected="selected">--${p.cpu }--</option>
						<option value="i5-6200U">i5-6200U</option>
						<option value="i5-7200U">i5-7200U</option>
						<option value="i5-7300HQ">i5-7300HQ</option>
						<option value="i7-6500U">i7-6500U</option>
						<option value="i7-6700HQ">i7-6700HQ</option>
				</select></td>
				
			</tr>
			<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">内存：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="memory"
					id="memory">
						<option value="" selected="selected">--${p.memory }--</option>
						<option value="4G">4G</option>
						<option value="8G">8G</option>
						<option value="16G">16G</option>
						<option value="32G">32G</option>
						<option value="定制">定制</option>
				</select></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">显卡：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="graphics"
					id="graphics">
						<option value="" selected="selected">--${p.graphics }--</option>
						<option value="显存 1G">显存 1G</option>
						<option value="显存 2G">显存 2G</option>
						<option value="显存 4G">显存 4G</option>
						<option value="定制">定制</option>
				</select></td>
			</tr>
			<tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品图片：</td>
				<td class="ta_01" bgColor="#ffffff" colSpan="3">
				<input type="file" name="upload" size="30" value="" /></td>
				<td class="ta_01" bgColor="#ffffff" colSpan="3">${p.imgurl }</td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品图片（1）：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="file" name="upload1" size="30" value="" /></td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品图片（2）：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="file" name="upload2" size="30" value="" /></td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品图片（3）：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="file" name="upload3" size="30" value="" /></td>
			</tr>
			<TR>
				<TD class="ta_01" align="center" bgColor="#f5fafe">商品描述：</TD>
				<TD class="ta_01" bgColor="#ffffff" colSpan="3">
					<textarea name="descript" cols="30" rows="3" style="WIDTH: 96%">${p.descript}</textarea>
				</TD>
			</TR>
			
			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center" bgColor="#f5fafe" colSpan="4">
					<input type="submit" class="button_ok" value="确定"> 
					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					<input type="reset" value="重置" class="button_cancel" /> 
					<FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT> 
					<INPUT class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"> </span>
				</td>
			</tr>
		</table>
	</form>
</body>
</HTML>