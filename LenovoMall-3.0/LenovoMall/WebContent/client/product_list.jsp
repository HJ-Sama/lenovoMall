<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>商品列表</title>
<%--导入css --%>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/client/css/result.css">
</head>
<body>
	<jsp:include page="head.jsp" />
	<jsp:include page="nav_top.jsp" />
	<!-- <div class = "results">
		分类
		<div class = "result_bar">
		<div class = "kinds">
			<div class = "tip">CPU型号</div>
			<ul >
				<li>
					<a href="intel i5">intel i5</a>
				</li>
				<li>
					<a href="intel i7">intel i7</a>
				</li>
			</ul>
		</div>
		<div class = "kinds">
			<div class = "tip">内存容量</div>
			<ul >
				<li>
					<a href="4G">4G</a>
				</li>
				<li>
					<a href="8G">8G</a>
				</li>
				<li>
					<a href="16G">16G</a>
				</li>
			</ul>
		</div>
		<div class = "kinds">
			<div class = "tip">硬盘</div>
			<ul>
				<li>
					<a href="1TB">1TB</a>
				</li>
				<li>
					<a href="512GB">512GB</a>
				</li>
			</ul>
			
		</div>
		</div> -->
		<!-- 快捷栏 -->
		<div class = "fast" >
		<form id="Form1" name="Form1" 
		
		>
		<ul style="margin-left:80px;">
		<div style="text-align:left; margin:5px 10px 5px 0px">
						<a href="${pageContext.request.contextPath }/index.jsp">首页</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&gt;&nbsp;&nbsp;&nbsp;&nbsp;<a>${bean.category }</a>
						<br><br><h3>共${bean.totalCount}种商品</h3>
					</div>
				<!-- li class = "active">推荐</li>
				<li>价格</li>
				
				<li class = "search_box">
					<input type="text" id = "startPrice" name="minprice" placeholder="¥" value="">
					 -
					<input type="text" id = "endPrice" name="maxprice" placeholder="¥" value="">
					<button type="submit" id="search" >确认</button>
					<input name="ty" value="user0"></input>
				</li> -->
			</ul>
		</form>
			
		</div> 
		<!-- 商品展示栏 -->
		<div class ="display">
			<ul>
				<!-- 商品1 -->
				<c:forEach items="${bean.ps}" var="p" varStatus="vs" begin="0" end="3">
				<li>
					<a class = "image_1" href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
					<img src="${pageContext.request.contextPath}${p.imgurl}"
					width:="250" height="160" border="0"/>
					</a>
					<div class = "name">
						<a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
							<em>${p.name}</em>
					    </a>
					</div>
					<div class = "message">
						<a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
							${p.descript}
						</a>
					</div>
					<div class = "price">
						<a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
							¥${p.price}
						</a>
					</div>
				</li>
			</c:forEach>
			</ul>

			<!-- 第二栏 -->
			<ul>
				<!-- 商品1 -->
				<c:forEach items="${bean.ps}" var="p" varStatus="vs" begin="4" end="7">
				<li>
					<a class = "image_1" href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
					<img src="${pageContext.request.contextPath}${p.imgurl}"
					width:="250" height="160" border="0"/>
					</a>
					<div class = "name">
						<a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
							<em>${p.name}</em>
					    </a>
					</div>
					<div class = "message">
						<a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
							${p.descript}
						</a>
					</div>
					<div class = "price">
						<a href="${pageContext.request.contextPath}/findProductById?id=${p.id}">
							¥${p.price}
						</a>
					</div>
				</li>
			</c:forEach>
			</ul>
			</div>

			<!-- 页面 -->
			<div class="page">
			<nav>
				<ul>
					<c:if test="${bean.currentPage!=1}">
					     <li class="disablepage_p"><a class="disablepage_a"
					     href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage-1}&category=${bean.category}"></a>
					     </li>
					</c:if>
					<c:if test="${bean.currentPage==1}">
						<li class="disablepage_p2"></li>
					</c:if>
					<c:forEach begin="1" end="${bean.totalPage}" var="pageNum">
						<c:if test="${pageNum==bean.currentPage}">
						<li class="currentpage">${pageNum }</li>
						</c:if>
					    <c:if test="${pageNum!=bean.currentPage}">
						<li><a
						href="${pageContext.request.contextPath}/showProductByPage?currentPage=${pageNum}&category=${bean.category}">${pageNum}</a>
						</li>
						</c:if>
					</c:forEach>

					<c:if
					test="${bean.currentPage==bean.totalPage||bean.totalPage==0}">
						<li class="disablepage_n2"></li>
						</c:if>
					<c:if
					test="${bean.currentPage!=bean.totalPage&&bean.totalPage!=0}">
					    <li class="disablepage_n"><a class="disablepage_a"
						href="${pageContext.request.contextPath}/showProductByPage?currentPage=${bean.currentPage+1}&category=${bean.category}"></a>
						</li>
					</c:if>
				</ul>
			</div>
<jsp:include page="foot.jsp" />
</body>
</html>
