<%@ page language="java" pageEncoding="UTF-8"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath}/admin/css/Style.css"
	type="text/css" rel="stylesheet">
<LINK href="${pageContext.request.contextPath}/layui/src/css/layui.css"
	type="text/css" rel="stylesheet">
</HEAD>
<body>
	<form id="userAction_save_do" name="Form1"
		action="${pageContext.request.contextPath}/addProduct" method="post"
		enctype="multipart/form-data">
		&nbsp;
		<table cellSpacing="1" cellPadding="5" width="100%" align="center"
			bgColor="#eeeeee" style="border: 1px solid #8ba7e3" border="0">
			<tr>
				<td class="ta_01" align="center" bgColor="#afd1f3" colSpan="4"
					height="26"><strong><STRONG>添加商品</STRONG> </strong></td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品名称：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="name" class="bg" /></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品价格：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="price" class="bg" /></td>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品数量：</td>
				<td class="ta_01" bgColor="#ffffff"><input type="text"
					name="pnum" class="bg" /></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品类别：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="category"
					id="category">
						<option value="" selected="selected">--选择商品类别--</option>
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
						<option value="" selected="selected">--选择硬盘--</option>
						<option value="256G 固态">256G 固态  </option>
						<option value="1T 机械">1T 机械</option>
						<option value="256G 固态+ 1T 机械">256G 固态+ 1T 机械</option>
						<option value="512G 固态">512G 固态</option>
						<option value="512G 固态+ 1T 机械">512G 固态+ 1T 机械</option>
				</select></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">CPU：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="cpu"
					id="cpu">
						<option value="" selected="selected">--选择CPU--</option>
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
						<option value="" selected="selected">--选择内存--</option>
						<option value="4G">4G</option>
						<option value="8G">8G</option>
						<option value="16G">16G</option>
						<option value="32G">32G</option>
						<option value="定制">定制</option>
				</select></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">显卡：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="graphics"
					id="graphics">
						<option value="" selected="selected">--选择显卡--</option>
						<option value="显存 1G">显存 1G</option>
						<option value="显存 2G">显存 2G</option>
						<option value="显存 4G">显存 4G</option>
						<option value="定制">定制</option>
				</select></td>
			</tr>
			
			<tr>
			<td align="center" bgColor="#f5fafe" class="ta_01">屏幕：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="screen"
					id="screen">
						<option value="" selected="selected">--选择屏幕--</option>
						<option value="14英寸 窄边">14英寸 窄边</option>
						<option value="15.6英寸 窄边">15.6英寸 窄边</option>
						<option value="15.6英寸 宽边">15.6英寸 宽边</option>
						<option value="17英寸">17英寸</option>
						<option value="定制">定制</option>
				</select></td>
				<td align="center" bgColor="#f5fafe" class="ta_01">颜色：</td>
				<td class="ta_01" bgColor="#ffffff"><select name="color"
					id="color">
						<option value="" selected="selected">--选择颜色--</option>
						<option value="黑">黑</option>
						<option value="白">白</option>
						<option value="灰">灰</option>
						<option value="定制">定制</option>
				</select></td>
			</tr>
			</tr>
			<tr>
				<td align="center" bgColor="#f5fafe" class="ta_01">商品图片（封面）：</td>
				<td class="ta_01" bgColor="#ffffff" colspan="3"><input
					type="file" name="upload" size="30" value="" /></td>
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
				<TD class="ta_01" bgColor="#ffffff" colSpan="3"><textarea
						name="descript" cols="30" rows="3" style="WIDTH: 96%"></textarea>
				</TD>
			</TR>
			<TR>
				<td align="center" colSpan="4" class="sep1"><img
					src="${pageContext.request.contextPath}/admin/images/shim.gif">
				</td>
			</TR>
			<tr>
				<td class="ta_01" style="WIDTH: 100%" align="center"
					bgColor="#f5fafe" colSpan="4"><input type="submit"
					class="button_ok" value="确定" > <FONT face="宋体">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT>
					<input type="reset" value="重置" class="button_cancel"> <FONT
					face="宋体"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </FONT> <INPUT
					class="button_ok" type="button" onclick="history.go(-1)" value="返回" />
					<span id="Label1"></span></td>
			</tr>
		</table>
		<!-- <div class="layui-upload">
				<button type="button" class="layui-btn layui-btn-normal"
					id="testList">选择多文件</button>
				<div class="layui-upload-list">
					<table class="layui-table">
						<thead>
							<tr>
								<th>文件名</th>
								<th>大小</th>
								<th>状态</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody id="demoList"></tbody>
					</table>
				</div>
				<button type="button" class="layui-btn" id="testListAction">开始上传</button>
			</div> -->
	</form>
	
	<script src="${pageContext.request.contextPath}/layui/src/layui.js"
		charset="utf-8"></script>
	<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
</body>
</HTML>