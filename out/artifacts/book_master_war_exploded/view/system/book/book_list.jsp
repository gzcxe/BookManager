<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	//获取绝对路径路径 
	String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
				+ request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
%> 
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>用户管理-用户查询</title>
	<style type="text/css">
		.table{
			display:table;
			border-collapse:collapse;
			border:1px solid #ccc;
			margin:0px auto;
		}
		.table-caption{
			display:table-caption;
			margin:0px;
			padding:0px;
			font-size:20px;
			caption-side:top;
			text-align:center;
			margin-bottom:5px;
		}
		.table-colmun-group{
			display:table-column-group;
		}
		.table-column{
			display:table-column;
			width:120px;
		}
		.table-header-group{
			display:table-header-group;
			background:#cae8ea;
			font-weight:bold;
		}
		.table-row{
			display:table-row;
		}
		.table-cell{
			display:table-cell;
			padding:20px 5px;
			border:1px solid #ccc;
			text-align:center;
		}
		.table-row-group{
			display:table-row-group;
		}
		.table-row-group .table-row:hover{
			background:#f6f6f6;
		}
	</style>
<link href="resource/css/bootstrap.min.css" rel="stylesheet" />
<script type="text/javascript" src="resource/js/jquery.min.js"></script>
<script type="text/javascript" src="resource/js/bootstrap.min.js"></script>


<script type="text/javascript">
	$(document).ready(function(){
		$("#clickIt").click(function(){
			alert("sorry,此类图书数量为0,不可借阅......");
		});
	});

</script>
</head>
<body>
	<div>
		<ul class="breadcrumb" style="margin: 0px;">
			<li>系统管理</li>
			<li>用户管理</li>
			<li>用户查询</li>
		</ul>
	</div>
	<form action="${basePath }system/book/select" method="post" class="form-inline">
		<div class="row alert alert-info" style="margin: 0px; padding: 5px;">
			<div class="form-group">
				<label>条件:</label> 
				<select name="condition" class="form-control">
					<option value="bookName">图书名称</option>
					<option value="bookAuthor">图书作者</option>
				</select>
				<input type="text" name="content" value="${result }" class="form-control" placeholder="请输入查询条件" />
			</div>
			<input type="submit" class="btn btn-danger" value="查询"> 
			<!-- <a href="view/system/book/book_add.jsp" class="btn btn-success">
				添加图书
			</a> -->
			<a href="system/book/insert" class="btn btn-success">
				添加图书
			</a>
		</div>
		<div class="row" style="padding: 15px;">
			<%--<table class="table table-hover table-striped table-bordered">--%>
				<%--<!-- 图书名称 图书作者 图书价格 图书类型 图书出版社 图书总数 -->--%>
				<%--<tr>--%>
					<%--<th>图书编号</th>--%>
					<%--<th>图书名称</th>--%>
					<%--<th>图书作者</th>--%>
					<%--<th>图书价格</th>--%>
					<%--<th>图书类型</th>--%>
					<%--<th>图书出版社</th>--%>
					<%--<th>图书总数</th>--%>
					<%--<!-- <th>图书标识</th> -->--%>
					<%--<th>图书操作</th>--%>
					<%--<td>操作</td>--%>
				<%--</tr>--%>
				<%--<!-- bookId bookName bookAuthor bookPrice bookType bookPublish bookSum bookMark -->--%>
				<%--<c:forEach items="${list }" var="list">--%>
				<%--<tr>        --%>
					<%--<td>${list.bookId}</td>--%>
					<%--<td>${list.bookName }</td>--%>
					<%--<td>${list.bookAuthor }</td>--%>
					<%--<td>${list.bookPrice }</td>--%>
					<%--<td>${list.bookType }</td>--%>
					<%--<td>${list.bookPublish }</td>--%>
					<%--<td>${list.bookSum }</td>--%>
					<%--&lt;%&ndash; <td>${list.bookMark }</td> &ndash;%&gt;--%>
					<%--<td>--%>
						<%--<c:choose>--%>
							<%--<c:when test="${list.bookSum  ==0}">--%>
								<%--<a id="clickIt" class="btn btn-default btn-sm" href="javascript:void(0)">借书</a> --%>
							<%--</c:when>--%>
							<%--<c:when test="${list.bookSum  > 0}">--%>
								<%--<a class="btn btn-warning btn-sm" href="system/book/borrow?bookId=${list.bookId}">借书</a> --%>
							<%--</c:when>--%>
						<%--</c:choose>--%>
						<%--<a class="btn btn-danger btn-sm" href="system/book/repay?bookId=${list.bookId}">还书</a>--%>
					<%--</td>--%>
					<%--<td>--%>
						<%--<a class="btn btn-warning btn-sm" href="system/book/update?bookId=${list.bookId}">修改</a> --%>
						<%--<a class="btn btn-danger btn-sm" href="system/book/delete?bookId=${list.bookId}">删除</a>--%>
					<%--</td>--%>
				<%--</tr>--%>
				<%--</c:forEach>--%>
			<%--</table>--%>
				<div class="table-colmun-group">

					<div class="table-column">
					</div>
					<div class="table-column">
					</div>
					<div class="table-column">
					</div>
					<div class="table-column">
					</div>

				</div>

				<!--设置多个行的分组显示（表的标题） -->
				<div class="table-header-group">
					<ul class="table-row">
						<li class="table-cell">图书编号</li>
						<li class="table-cell">图书名称</li>
						<li class="table-cell">图书作者</li>
						<li class="table-cell">图书价格</li>
						<li class="table-cell">图书类型</li>
						<li class="table-cell">图书出版社</li>
						<li class="table-cell">图书总数</li>
						<%--<！--li class="table-cell">图书标识</li-->--%>
						<li class="table-cell">图书操作</li>
						<li class="table-cell">操作</li>


					</ul>
				</div>

				<!--设置多个行的分组显示（表的具体内容） -->
				<c:forEach items="${list }" var="list">
					<div class="table-row-group">
						<ul class="table-row">
							<li class="table-cell">${list.bookId}</li>
							<li class="table-cell">${list.bookName }</li>
							<li class="table-cell">${list.bookAuthor }</li>
							<li class="table-cell">${list.bookPrice }</li>
							<li class="table-cell">${list.bookType }</li>
							<li class="table-cell">${list.bookPublish }</li>
							<li class="table-cell">${list.bookSum }</li>
							<%--<li class="table-cell">${list.bookMark }</li>--%>
							<li class="table-cell">
									<c:choose>
									<c:when test="${list.bookSum  ==0}">
									<a id="clickIt" class="btn btn-default btn-sm" href="javascript:void(0)">借书</a>
									</c:when>
									<c:when test="${list.bookSum  > 0}">
									<a class="btn btn-warning btn-sm" href="system/book/borrow?bookId=${list.bookId}">借书</a>
									</c:when>
									</c:choose>
									<a class="btn btn-danger btn-sm" href="system/book/repay?bookId=${list.bookId}">还书</a>
							</li>
							<li class="table-cell">
									<a class="btn btn-warning btn-sm" href="system/book/update?bookId=${list.bookId}">修改</a>
									<a class="btn btn-danger btn-sm" href="system/book/delete?bookId=${list.bookId}">删除</a>
							</li>

						</ul>
					</div>
				</c:forEach>
		</div>
	</form>
</body>
</html>