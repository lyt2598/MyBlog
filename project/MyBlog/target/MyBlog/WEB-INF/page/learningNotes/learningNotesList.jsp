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

<!-- 通用样式 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/bootstrap/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/referenced/font-awesome/font-awesome.min.css" />
<script
	src="${pageContext.request.contextPath }/js/referenced/jquery/jquery-3.2.1.min.js"></script>
<script
	src="${pageContext.request.contextPath }/js/referenced/bootstrap/bootstrap.min.js"></script>
<!-- 页面级样式 -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/mybuild/learningNotes/learningNotes.css" />
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/dataFormat.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/utils/tableUtils.js"></script>
<script
	src="${pageContext.request.contextPath }/js/mybuild/learningNotes/learningNotes.js"></script>
</head>

<body class="lnBody">
	<div class="page-header">
		<h1>
			学习笔记 <small>学无止境</small>
		</h1>
	</div>
	<p>以下文章均为个人学习时得出的结论以及碰到的问题的整理,如果有不对的地方欢迎大家指出。</p>
	<div class="table-menu">
		<button type="button" class="btn btn-primary">
			<i class="fa fa-pencil-square-o" aria-hidden="true"></i> 发表学习笔记
		</button>
		<div class="searchDiv">
			<input type="text" id="searchData" placeholder="请输入需要查询的内容">
			<button title="点击查询" onclick="search()">
				<i class="fa fa-search" aria-hidden="true"></i>
			</button>
		</div>
	</div>
	<table class="table table-bordered table-condensed">
		<thead>
			<tr class="success">
				<th class="textAlign" style="width:5%;">#</th>
				<th>文章标题</th>
				<th style="width:10%; min-width:155px;">发布时间</th>
				<th style="width:5%; min-width:100px;">浏览次数</th>
				<th style="width:5%; min-width:100px;">评论次数</th>
			</tr>
		</thead>
		<tbody id="table-body"></tbody>
	</table>
	<div id="paging" align="center"></div>
</body>
</html>
