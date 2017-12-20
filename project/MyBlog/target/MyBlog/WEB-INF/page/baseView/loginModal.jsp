<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">Nerver Give Up -
					Login (登录)</h4>
			</div>
			<div class="modal-body">
				<script
					src="${pageContext.request.contextPath }/js/mybuild/utils/login.js"></script>
				<div id="loginMessage"></div>
				<div id="loginBody" align="center">
					<div class="input-group col-sm-8" style="padding-bottom: 20px;">
						<span class="input-group-addon">用户名：</span> <input type="text"
							class="form-control login-username" placeholder="请输入用户名"
							onblur="checkUserName(this.value)">
					</div>
					<div class="input-group col-sm-8" style="padding-bottom: 20px;">
						<span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码：</span>
						<input type="password" class="form-control login-password"
							placeholder="请输入用户口令" onblur="checkPassWord(this.value)">
					</div>
					<div class="input-group col-sm-8" style="padding-bottom: 20px;">
						<span class="input-group-addon">验证码：</span> <input type="text"
							class="form-control login-checkcode" placeholder="请输入验证码"
							onblur="checkCheckCode(this.value)">
					</div>
					<div class="input-group col-sm-8">
						<img src="${pageContext.request.contextPath }/img/aboutme_top.jpg"
							class="img-rounded" height="150px" width="100%"
							title="看不清？点击即可更换" />
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary"
					onclick="submitLogin()">立即登录</button>
			</div>
		</div>
		<!-- /.modal-content -->
	</div>
	<!-- /.modal -->
</div>