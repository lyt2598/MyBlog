<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'learningNotesList.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/bootstrap/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/learningNotes.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/font-awesome/font-awesome.min.css" />
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>

</head>

<body class="lnBody">
	<div class="page-header">
		<h1>
			学习笔记 <small>学无止境</small>
		</h1>
	</div>
	<p>以下文章均为个人学习时得出的结论以及碰到的问题的整理,如果有不对的地方欢迎大家指出。</p>
	<p>
		<button type="button" class="btn btn-primary">
			<i class="fa fa-pencil-square-o" aria-hidden="true"></i> <i
				class="fa fa-book" aria-hidden="true"></i> 发表学习笔记
		</button>
	</p>
	<table class="table table-bordered table-condensed">
		<thead>
			<tr class="success">
				<th style="width:5%;">#</th>
				<th>文章标题</th>
				<th style="width:10%; min-width:150px;">发布时间</th>
				<th style="width:5%; min-width:100px;">浏览次数</th>
				<th style="width:5%; min-width:100px;">转发次数</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Bangalore<i class="fa fa-eye-slash i-red" aria-hidden="true"></i></td>
				<td><i class="fa fa-clock-o i-blue" aria-hidden="true"></i>2017年12月15日</td>
				<td><i class="fa fa-eye i-blue" aria-hidden="true"></i>9999999</td>
				<td><i class="fa fa-code-fork i-blue" aria-hidden="true"></i>99999999</td>
			</tr>
			<tr>
				<td>2</td>
				<td>Mumbai</td>
				<td>Bangalore</td>
				<td>Tanmay</td>
				<td>Bangalore</td>
			</tr>
		</tbody>
	</table>
	<div align="center">
		<ul class="pagination">
			<li><a href="#">&laquo;</a></li>
			<li><a href="#">上一页</a></li>
			<li class="active"><a href="#">1</a></li>
			<li class="disabled"><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#">下一页</a></li>
			<li><a href="#">&raquo;</a></li>
		</ul>
	</div>
</body>
</html>
