<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="panel panel-primary">
	<div class="panel-heading">
		<h3 class="panel-title" style="display: inline-block;">Nerver
			Give Up</h3>
		<span data-toggle="tooltip"
			onclick="javascript:location.href='${pageContext.request.contextPath}/index/${userId }'"
			title="进入首页" class="panel-menu-button"> <i class="fa fa-home" aria-hidden="true"></i>
		</span><span data-toggle="tooltip" onclick="javascript:history.back()"
			title="点击返回上一页" class="panel-menu-button"> <i
			class="fa fa-arrow-circle-left" aria-hidden="true"></i>
		</span> <span data-toggle="tooltip" onclick="javascript:location.reload()"
			title="点击刷新" class="panel-menu-button"> <i
			class="fa fa-refresh" aria-hidden="true"></i>
		</span>
	</div>
	<!-- <ol class="breadcrumb breadcrumb-default">
				<li><a href="#">Home</a></li>
				<li><a href="#">2013</a></li>
				<li class="active">十一月</li>
			</ol> -->
	<!-- ${pageContext.request.contextPath }/index.action -->
	<div class="my-panel-body" id="panel-body"></div>
	<div class="panel-footer" align="center">
		本网站源码均在<a href="https://github.com/lyt2598/MyBlog" target="_blank"><i
			class="fa fa-github" aria-hidden="true"></i>GitHub</a>上，联系方式：<a
			href="http://wpa.qq.com/msgrd?v=3&uin=31448522&site=qq&menu=yes"
			target="_blank"><i class="fa fa-qq" aria-hidden="true"></i>
			31448522</a> — Lyt
	</div>
</div>
