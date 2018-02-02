<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#example-navbar-collapse">
				<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
			</button>
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/index/${userId}">NGU&nbsp;-&nbsp;个人主页</a>
		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav navbar-left" id="indexMenu">
				<c:forEach items="${sessionScope.headMenuList }" var="pmenu">
					<c:choose>
						<c:when
							test="${pmenu.headMenu_URL == null || pmenu.headMenu_URL == ''}">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"><i class="fa fa-bars"
									aria-hidden="true"></i>${pmenu.headMenu_Name } <b class="caret"></b></a>
								<ul class="dropdown-menu">
									<c:forEach items="${pmenu.blogHeadMenus }" var="cmenu">
										<li class="divider"></li>
										<li><a
											href="${pageContext.request.contextPath }/${cmenu.headMenu_URL }">
												<i class="fa ${cmenu.headMenu_Icon }" aria-hidden="true"></i>${cmenu.headMenu_Name }</a></li>
									</c:forEach>
								</ul></li>
						</c:when>
						<c:otherwise>
							<li><a
								href="${pageContext.request.contextPath }/${pmenu.headMenu_URL }"><i
									class="fa ${pmenu.headMenu_Icon }" aria-hidden="true"></i>${pmenu.headMenu_Name }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<li><a href="javascript:void(0);" data-toggle="modal"
					data-target="#searchModal"><i class="fa fa-search"
						aria-hidden="true"></i>搜索</a></li>
			</ul>
			<script>
				function searchAll() {
					$(".searchAll").html();
				}
			</script>
			<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${sessionScope.currentUser!=null}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" target="indexFrame"> <img alt="头像"
								src="${pageContext.request.contextPath }/img/user/head/default.png"
								width="20" height="20">&nbsp;<strong
								style="font-size: 16px; margin: 0px 5px;">${sessionScope.currentUser.userInfo_Name}</strong><b
								class="caret"></b>
						</a>
							<ul class="dropdown-menu dropdown-menu-sw">
								<li class="dropdown-header">当前用户：<strong
									style="font-size: 16px;">${sessionScope.currentUser.userInfo_Name}</strong></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/#"><span
										class="dropdown-menu-left-logo"><i class="fa fa-cog"
											aria-hidden="true"></i> </span>进入个人中心</a></li>
								<li class="divider"></li>
								<li><a
									href="${pageContext.request.contextPath}/pubLearningNotes"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-plus-square" aria-hidden="true"></i> </span>发表学习笔记</a></li>
								<li class="divider"></li>
								<li><a
									href="${pageContext.request.contextPath}/pubLearningNotes"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-plus-square" aria-hidden="true"></i> </span>管理学习笔记</a></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/#"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-plus-square" aria-hidden="true"></i> </span>进入管理后台</a></li>
								<li class="divider"></li>
								<li onclick="loginOut()"><a href="javascript:void(0)"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-sign-out" aria-hidden="true"></i> </span>注销登陆</a></li>
								<li class="divider"></li>
							</ul></li>
					</c:when>
					<c:otherwise>
						<%-- <li><a href="${pageContext.request.contextPath }/userInfo/regUser"
							target="blank"><i class="fa fa-plus" aria-hidden="true"></i>
								注册</a></li> --%>
						<li><a href="javascript:void(0)" data-toggle="modal"
							data-target="#loginModal"><i class="fa fa-sign-in"
								aria-hidden="true"></i> 登录</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>