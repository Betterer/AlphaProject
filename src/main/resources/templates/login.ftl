<#import "common/template.ftl" as template>
<@template.head title="登录">
	<style type="text/css">
		body { background: url(img/bg-login.jpg) !important; }
	</style>
</@template.head>
<@template.body>
	<div class="container-fluid-full">
		<div class="row-fluid">

			<div class="row-fluid">
				<div class="login-box">
					<div class="icons">
						<a href="#"><i class="halflings-icon home"></i></a>
						<a href="#"><i class="halflings-icon cog"></i></a>
					</div>
					<h2>账户登录</h2>
					<form class="form-horizontal" action="/login" method="post">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<div class="input-prepend" title="Username">
							<span class="add-on"><i class="halflings-icon staff"></i></span>
							<input class="input-large span10" name="username" id="username" type="text" placeholder="用户账号"/>
						</div>
						<div class="clearfix"></div>

						<div class="input-prepend" title="Password">
							<span class="add-on"><i class="halflings-icon lock"></i></span>
							<input class="input-large span10" name="password" id="password" type="password" placeholder="用户密码"/>
						</div>
						<div class="clearfix"></div>

						<label class="remember" for="remember"><input type="checkbox" id="remember" />记住我</label>

						<div class="button-login">
							<button type="submit" class="btn btn-primary">登录</button>
						</div>
						<div class="clearfix"></div>
					</form>
					<h3>忘记密码?</h3>
					<p>
						没问题, <a href="#">点击这里</a> 找回密码.
					</p>
				</div><!--/span-->
			</div><!--/row-->


		</div><!--/.fluid-container-->

	</div><!--/fluid-row-->
	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="#">Admin templates</a></li>
				<li><a href="http://themescloud.org">Bootstrap themes</a></li>
			</ul>
		</div>
	</div>
	<@template.javascript></@template.javascript>
</@template.body>


