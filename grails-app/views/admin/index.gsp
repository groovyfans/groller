<html>
    <head>
        <title>Front Page: 主菜单</title>
		<meta name="layout" content="admin" />
        <style type="text/css">

#centercontent_wrap {
    width: 70%;
}
#rightcontent_wrap {
    width: 29%;
}
        </style>

    </head>
    <body>
        <div id="content">
            <div id="leftcontent_wrap">
                <div id="leftcontent">
                </div>
            </div>

            <div id="centercontent_wrap">
                <div id="centercontent">
                    <h1>主菜单</h1>
                    <p class="subtitle">选择一个网志编辑、管理或者设置。</p>

                    <g:if test="${blogs}">

                        <g:render template="blogbox" var="blog" collection="${blogs}"/>

                    </g:if>
                    <g:else>
                        您已经获得了一个用户账户，但是没有网志，您想不想 <a href="${createLink(controller:'blog',action:'create')}">建立一个吗？</a>
                    </g:else>
                </div>
            </div>

            <div id="rightcontent_wrap">
                <div id="rightcontent">
                    <div class="sidebarFade">
                        <div class="menu-tr">
                            <div class="menu-tl">

                                <div class="sidebarInner">

                                    <h3>动作</h3>

                                    <hr size="1" noshade="noshade" />

                                    <h3><a href="${request.contextPath}/admin/createWeblog">建立新网志</a></h3>
                                    <p>您是不是还有更多要表达的？也许您需要建立另一个网志。</p>

                                    <h3><a href="${request.contextPath}/admin/profile">编辑用户资料</a></h3>
                                    <p>更改密码，联系信息，选择语言等等。</p>

									<g:ifAllGranted role="ROLE_ADMIN">
                                    <h3><a href="${request.contextPath}/admin/globalConfig">服务器管理员</a></h3>
                                    <p>做网站范围的更改。</p>
									</g:ifAllGranted>

                                    <br />
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>

    </body>
</html>