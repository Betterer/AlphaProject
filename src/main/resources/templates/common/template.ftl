<#compress>
    <!-- 指定项目路径,方便静态文件读取-->
    <#assign base = "http://localhost:8080/" />
    <!-- 引入Spring Security 标签,控制显示-->
    <#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<#-- 头部信息 -->
    <#macro head title>
    <!DOCTYPE html>
    <html lang="en">
    <head>


        <!-- start: Meta -->
        <meta charset="utf-8">
        <title>${title}</title>
        <meta name="description" content="Bootstrap Metro Dashboard">
        <meta name="author" content="Dennis Ji">
        <meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
        <!-- end: Meta -->
        <!-- start: Mobile Specific -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href="${base}css/bootstrap.min.css" rel="stylesheet">
        <link href="${base}css/font-awesome.min.css" rel="stylesheet">
        <link href="${base}css/bootstrap-responsive.min.css" rel="stylesheet">
        <link href="${base}css/style.css" rel="stylesheet">
        <link href="${base}css/style-responsive.css" rel="stylesheet">
        <link href="${base}css/ie.css" rel="stylesheet">
        <link href="${base}css/ie9.css" rel="stylesheet">
        <link href="${base}img/favicon.ico" rel="shortcut icon">

        <script src="${base}js/jquery-1.9.1.min.js"></script>
        <script src="${base}js/common/menuAndNavbar.js"></script>
        <#nested>
    </head>
    </#macro>

<#-- body -->
    <#macro body>
        <body>
            <#nested>
        </body>
    </html>
    </#macro>


<#-- top-navbar -->
    <#macro navbar staff>
        <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="/index"><span>后台管理系统</span></a>

                <!-- start: Header Menu -->
                <div class="nav-no-collapse header-nav">
                    <ul class="nav pull-right">
                        <li class="dropdown hidden-phone">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-bell"></i>
                                <span class="badge red">
								7 </span>
                            </a>
                            <ul class="dropdown-menu notifications">
                                <li class="dropdown-menu-title">
                                    <span>You have 11 notifications</span>
                                    <a href="#refresh"><i class="icon-repeat"></i></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon blue"><i class="icon-user"></i></span>
                                        <span class="message">New user registration</span>
                                        <span class="time">1 min</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon green"><i class="icon-comment-alt"></i></span>
                                        <span class="message">New comment</span>
                                        <span class="time">7 min</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon green"><i class="icon-comment-alt"></i></span>
                                        <span class="message">New comment</span>
                                        <span class="time">8 min</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon green"><i class="icon-comment-alt"></i></span>
                                        <span class="message">New comment</span>
                                        <span class="time">16 min</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon blue"><i class="icon-user"></i></span>
                                        <span class="message">New user registration</span>
                                        <span class="time">36 min</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon yellow"><i class="icon-shopping-cart"></i></span>
                                        <span class="message">2 items sold</span>
                                        <span class="time">1 hour</span>
                                    </a>
                                </li>
                                <li class="warning">
                                    <a href="#">
                                        <span class="icon red"><i class="icon-user"></i></span>
                                        <span class="message">User deleted account</span>
                                        <span class="time">2 hour</span>
                                    </a>
                                </li>
                                <li class="warning">
                                    <a href="#">
                                        <span class="icon red"><i class="icon-shopping-cart"></i></span>
                                        <span class="message">New comment</span>
                                        <span class="time">6 hour</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon green"><i class="icon-comment-alt"></i></span>
                                        <span class="message">New comment</span>
                                        <span class="time">yesterday</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon blue"><i class="icon-user"></i></span>
                                        <span class="message">New user registration</span>
                                        <span class="time">yesterday</span>
                                    </a>
                                </li>
                                <li class="dropdown-menu-sub-footer">
                                    <a>View all notifications</a>
                                </li>
                            </ul>
                        </li>
                        <!-- start: Notifications Dropdown -->
                        <li class="dropdown hidden-phone">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-calendar"></i>
                                <span class="badge red">
								5 </span>
                            </a>
                            <ul class="dropdown-menu tasks">
                                <li class="dropdown-menu-title">
                                    <span>You have 17 tasks in progress</span>
                                    <a href="#refresh"><i class="icon-repeat"></i></a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">iOS Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim red">80</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">Android Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim green">47</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim yellow">32</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim greenLight">63</div>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
										<span class="header">
											<span class="title">ARM Development</span>
											<span class="percent"></span>
										</span>
                                        <div class="taskProgress progressSlim orange">80</div>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-menu-sub-footer">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- end: Notifications Dropdown -->
                        <!-- start: Message Dropdown -->
                        <li class="dropdown hidden-phone">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="icon-envelope"></i>
                                <span class="badge red">
								4 </span>
                            </a>
                            <ul class="dropdown-menu messages">
                                <li class="dropdown-menu-title">
                                    <span>You have 9 messages</span>
                                    <a href="#refresh"><i class="icon-repeat"></i></a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="avatar"><img src="${base}img/avatar.jpg" alt="Avatar"></span>
                                        <span class="header">
											<span class="from">
										    	${staff}
										     </span>
											<span class="time">
										    	6 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="avatar"><img src="${base}img/avatar.jpg" alt="Avatar"></span>
                                        <span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	56 min
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="avatar"><img src="${base}img/avatar.jpg" alt="Avatar"></span>
                                        <span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	3 hours
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="avatar"><img src="${base}img/avatar.jpg" alt="Avatar"></span>
                                        <span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	yesterday
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="avatar"><img src="${base}img/avatar.jpg" alt="Avatar"></span>
                                        <span class="header">
											<span class="from">
										    	Dennis Ji
										     </span>
											<span class="time">
										    	Jul 25, 2012
										    </span>
										</span>
                                        <span class="message">
                                            Lorem ipsum dolor sit amet consectetur adipiscing elit, et al commore
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a class="dropdown-menu-sub-footer">View all messages</a>
                                </li>
                            </ul>
                        </li>

                        <!-- start: User Dropdown -->
                        <li class="dropdown">
                            <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="halflings-icon white user"></i>${staff}
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-menu-title">
                                    <span>Account Settings</span>
                                </li>
                                <li>
                                    <a href="#"><i class="halflings-icon user"></i> Profile</a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" id="logout"><i class="halflings-icon off"></i> Logout</a>
                                    <form id="logout_form" action="/logout" method="post" style="display: none;">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                    </form>
                                </li>
                            </ul>
                        </li>
                        <!-- end: User Dropdown -->
                    </ul>
                </div>
                <!-- end: Header Menu -->
            </div>
        </div>
    </div>
    <#--<script>-->
        <#--$("#logout").click(function(){-->
            <#--$("#logout_form").submit();-->
        <#--})-->
    <#--</script>-->
    </#macro>


    <#-- slide-left -->
    <#macro slideLeft>
        <div id="sidebar-left" class="span2">
        <div class="nav-collapse sidebar-nav">
            <ul class="nav nav-tabs nav-stacked main-menu">
                <@security.authorize access="hasRole('ROLE_ADMIN')">
                    <li>
                        <a class="dropmenu" href="javascript:void(0);"><i class="icon-cog"></i><span class="hidden-tablet">系统管理</span><span class="label label-important"> 3 </span></a>
                        <ul>
                            <li><a class="submenu choose_a" href="/staff/list"><i class="icon-user-md"></i><span class="hidden-tablet"> 系统账户</span></a></li>
                            <li><a class="submenu choose_a" href="#"><i class="icon-group"></i><span class="hidden-tablet"> 角色列表</span></a></li>
                            <li><a class="submenu choose_a" href="#"><i class="icon-lock"></i><span class="hidden-tablet"> 权限列表</span></a></li>
                        </ul>
                    </li>
                </@security.authorize>
                <li><a href="#" class="choose_a"><i class="icon-user"></i><span class="hidden-tablet"> 用户管理</span></a></li>
                <li><a href="#" class="choose_a"><i class="icon-home"></i><span class="hidden-tablet"> 机构管理</span></a></li>
            </ul>
        </div>
    </div>
    </#macro>


<#-- footer -->
    <#macro footer>
        <footer>
        <p>
            <span style="text-align:left;float:left">&copy; 2018 <a href="javascript:void(0);" alt="Bootstrap_Metro_Dashboard">后台管理系统</a></span>
        </p>
    </footer>
        <#nested>
    </#macro>

<#-- javascript -->
    <#macro javascript>
    <script src="${base}js/jquery-migrate-1.0.0.min.js"></script>
    <script src="${base}js/jquery-ui-1.10.0.custom.min.js"></script>
    <script src="${base}js/jquery.ui.touch-punch.js"></script>
    <script src="${base}js/modernizr.js"></script>
    <script src="${base}js/bootstrap.min.js"></script>
    <script src="${base}js/jquery.cookie.js"></script>
    <script src="${base}js/fullcalendar.min.js"></script>
    <script src="${base}js/jquery.dataTables.min.js"></script>
    <script src="${base}js/excanvas.js"></script>
    <script src="${base}js/jquery.flot.js"></script>
    <script src="${base}js/jquery.flot.pie.js"></script>
    <script src="${base}js/jquery.flot.stack.js"></script>
    <script src="${base}js/jquery.flot.resize.min.js"></script>
    <script src="${base}js/jquery.chosen.min.js"></script>
    <script src="${base}js/jquery.uniform.min.js"></script>
    <script src="${base}js/jquery.cleditor.min.js"></script>
    <script src="${base}js/jquery.noty.js"></script>
    <script src="${base}js/jquery.elfinder.min.js"></script>
    <script src="${base}js/jquery.raty.min.js"></script>
    <script src="${base}js/jquery.iphone.toggle.js"></script>
    <script src="${base}js/jquery.uploadify-3.1.min.js"></script>
    <script src="${base}js/jquery.gritter.min.js"></script>
    <script src="${base}js/jquery.imagesloaded.js"></script>
    <script src="${base}js/jquery.masonry.min.js"></script>
    <script src="${base}js/jquery.knob.modified.js"></script>
    <script src="${base}js/jquery.sparkline.min.js"></script>
    <script src="${base}js/counter.js"></script>
    <script src="${base}js/retina.js"></script>
    <script src="${base}js/custom.js"></script>
    <#nested>
</#macro>

</#compress>