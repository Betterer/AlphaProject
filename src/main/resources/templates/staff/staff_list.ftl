<#import "../common/template.ftl" as template>
<@template.head title="后台管理--系统账户">
</@template.head>
<@template.body>
<!-- start: Header -->
    <@template.navbar staff="${current_staff.nickname}"></@template.navbar>
<!-- start: Header -->
<div class="container-fluid-full">
    <div class="row-fluid">
        <!-- 左边菜单开始 -->
        <@template.slideLeft/>
        <!-- 左边菜单结束 -->
        <!-- 内容开始 -->
        <div id="content" class="span10">
            <div class="row-fluid">
                <div class="box span12">
                    <div class="box-header" data-original-title>
                        <h2><i class="halflings-icon white pencil"></i><span class="break"></span>系统账户操作</h2>
                        <div class="box-icon">
                            <!--<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>-->
                            <a href="javascript:void(0);" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                            <a href="" class="btn-close"><i class="halflings-icon white remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <a class="quick-button-small span1">
                            <i class="icon-group"></i>
                            <p>增加系统账号</p>
                        </a>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header" data-original-title>
                        <h2><i class="halflings-icon white user"></i><span class="break"></span>系统账户列表</h2>
                        <div class="box-icon">
                            <!--<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>-->
                            <a href="javascript:void(0);" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
                            <a href="" class="btn-close"><i class="halflings-icon white remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                            <thead>
                            <tr>
                                <th>账户ID</th>
                                <th>用户账号</th>
                                <th>用户姓名</th>
                                <th>用户性别</th>
                                <th>用户电话</th>
                                <th>电子邮箱</th>
                                <th>用户状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                <#list staff_list as staff >
                                    <tr>
                                    <td>${staff.id}</td>
                                    <td>${staff.account}</td>
                                    <td>${staff.nickname}</td>
                                    <td>
                                        <#if staff.gender==1>
                                            男
                                        <#else>
                                            女
                                        </#if>
                                    </td>
                                    <td>${staff.phone}</td>
                                    <td>${staff.email}</td>
                                    <td>
                                        <#if staff.status==1>
                                            <span class="label label-success">正常</span>
                                        <#else>
                                            <span class="label label-success">删除</span>
                                        </#if>
                                    </td>
                                    <td class="center">
                                        <a class="btn btn-success" href="#">
                                            <i class="halflings-icon white zoom-in"></i>
                                        </a>
                                        <a class="btn btn-info" href="#">
                                            <i class="halflings-icon white edit"></i>
                                        </a>
                                        <a class="btn btn-danger" href="#">
                                            <i class="halflings-icon white trash"></i>
                                        </a>
                                    </td>
                                </tr>
                                </#list>
                            </tbody>
                        </table>
                    </div>
                </div><!--/span-->

            </div>
        </div>
        <!-- 内容结束 -->
    </div>
</div>
    <@template.footer></@template.footer>
    <@template.javascript></@template.javascript>
</@template.body>

