<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<span class="navbar-brand">NGU&nbsp;-&nbsp;个人主页</span>
		</div>
		<div>
			<ul class="nav navbar-nav navbar-left" id="indexMenu">
				<c:forEach items="${sessionScope.headMenuList }" var="pmenu">
					<c:choose>
						<c:when
							test="${pmenu.headMenu_URL == null || pmenu.headMenu_URL == ''}">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">${pmenu.headMenu_Name } <b
									class="caret"></b></a>
								<ul class="dropdown-menu">
									<c:forEach items="${pmenu.blogHeadMenus }" var="cmenu">
										<li class="divider"></li>
										<li><a
											href="${pageContext.request.contextPath }/${cmenu.headMenu_URL }">
												${cmenu.headMenu_Name }</a></li>
									</c:forEach>
								</ul></li>
						</c:when>
						<c:otherwise>
							<li><a
								href="${pageContext.request.contextPath }/${pmenu.headMenu_URL }">${pmenu.headMenu_Name }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${sessionScope.currentUser!=null}">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" target="indexFrame"> <img alt="头像"
								src="${pageContext.request.contextPath }/img/user/head/default.png"
								width="20" height="20">&nbsp;<b class="caret"></b>
						</a>
							<ul class="dropdown-menu dropdown-menu-sw">
								<li class="dropdown-header">当前用户：<strong
									style="font-size: 16px;">${sessionScope.currentUser.userInfo_Name}</strong></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/#"><span
										class="dropdown-menu-left-logo"><i class="fa fa-cog"
											aria-hidden="true"></i> </span>个人中心</a></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/#"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-plus-square" aria-hidden="true"></i> </span>生活分享</a></li>
								<li class="divider"></li>
								<li><a
									href="${pageContext.request.contextPath}/pubLearningNotes"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-plus-square" aria-hidden="true"></i> </span>学习笔记</a></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/#"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-plus-square" aria-hidden="true"></i> </span>进入后台</a></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/loginOut"><span
										class="dropdown-menu-left-logo"><i
											class="fa fa-sign-out" aria-hidden="true"></i> </span>注销</a></li>
								<li class="divider"></li>
							</ul></li>
					</c:when>
					<c:otherwise>
						<li><a href="${pageContext.request.contextPath }/regUser"
							target="indexFrame"><i class="fa fa-plus" aria-hidden="true"></i>
								注册</a></li>
						<li><a href="javascript:void(0)" data-toggle="modal"
							data-target="#loginModal"><i class="fa fa-sign-in"
								aria-hidden="true"></i> 登录</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>