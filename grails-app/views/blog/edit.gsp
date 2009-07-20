<html>
    <head>
        <meta name="layout" content="admin" />
        <title>Front Page: 网志设置</title>
        <style type="text/css">

        </style>
    </head>
    <body>
		<div id="menu">
			<h1>网志设置</h1>
			<table class="menuTabTable" cellspacing="0" >
			<tr>
				<td class="menuTabUnselected">
				<div class="menu-tr">
					<div class="menu-tl">
						&nbsp;&nbsp;<a href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}">网志管理</a>&nbsp;&nbsp;
					</div>
				</div>
				</td>
				<td class="menuTabSeparator"></td>
				<td class="menuTabUnselected">
				<div class="menu-tr">
					<div class="menu-tl">
						&nbsp;&nbsp;<a href="#">Design</a>&nbsp;&nbsp;
					</div>
				</div>
				</td>
				<td class="menuTabSeparator"></td>
				<td class="menuTabSelected">
				<div class="menu-tr">
					<div class="menu-tl">
						&nbsp;&nbsp;<a href="${createLink(controller:'blog', action:'edit',params:[weblog:blog.handle])}">个性定制</a>&nbsp;&nbsp;
					</div>
				</div>
				</td>
				<td class="menuTabSeparator"></td>
			</tr>
			</table>

			<table class="menuItemTable" cellspacing="0" >
			<tr>
				<td class="padleft">
                    <a class="menuItemSelected" href="${createLink(controller:'blog', action:'edit',params:[weblog:blog.handle])}">站点设置</a>
					|
                    <a class="menuItemUnselected" href="">成员</a>
					|
                    <a class="menuItemUnselected" href="">Pings</a>
					|
                    <a class="menuItemUnselected" href="">定制Ping目标</a>
					|
                    <a class="menuItemUnselected" href="/roller/roller-ui/authoring/maintenance.rol?weblog=rain2">维护</a>
				</td>
			</tr>
			</table>
		</div>
		
		<div id="content">
            <div id="leftcontent_wrap">
                <div id="leftcontent">
                </div>
            </div>

            <div id="centercontent_wrap">

                <div id="centercontent">

<p class="subtitle">
   管理网志 [${blog.handle}] 设置
</p>

        <g:render template="/includes/commons/message"/>

        <g:hasErrors bean="${blogInstance}">
            <div id="errors" class="errors">
                <g:renderErrors bean="${blogInstance}" as="list" />
            </div>
        </g:hasErrors>
		
<g:form name="weblogConfig" method="post">

	<g:hiddenField name="weblog" value="${blog?.handle}" />
	<g:hiddenField name="id" value="${blog?.id}" />
	<g:hiddenField name="version" value="${blog?.version}" />

<table class="formtableNoDesc">

    <tr>
        <td colspan="3"><h2>General Settings</h2></td>
    </tr>

    <tr>
        <td class="label">标题</td>
        <td class="field"><input type="text" name="name" size="40" value="${fieldValue(bean: blog, field: 'name')}" id="weblogConfig_bean_name"/></td>
        <td class="description"></td>
    </tr>

    <tr>
        <td class="label">描述</td>
        <td class="field"><input type="text" name="description" size="40" value="${fieldValue(bean: blog, field: 'description')}" id="weblogConfig_bean_description"/></td>
        <td class="description"></td>
    </tr>

    <tr>
        <td class="label">Icon</td>

        <td class="field"><input type="text" name="icon" size="40" value="" id="weblogConfig_bean_icon"/></td>
        <td class="description"></td>
    </tr>

    <tr>
        <td class="label">About your blog</td>
        <td class="field"><textarea name="about" cols="40" rows="3" id="weblogConfig_bean_about">${fieldValue(bean: blog, field: 'about')}</textarea></td>
        <td class="description"></td>
    </tr>

    <tr>
        <td class="label">网志所有人电子邮件</td>
        <td class="field"><input type="text" name="email" size="40" value="" id="weblogConfig_bean_emailAddress"/></td>
        <td class="description"></td>
    </tr>

    <tr>
        <td class="label">希望使用的日志编辑器</td>

        <td class="field">
            <select name="bean.editorPage" size="1" id="weblogConfig_bean_editorPage">
				<option value="editor-text.jsp" selected="selected">Text Editor</option>
				<option value="editor-rte.jsp">Rich Text Editor (Xinha)</option>
			</select>
       </td>
        <td class="description"></td>
    </tr>

    <tr>
        <td class="label">网志显示日志数量</td>

        <td class="field"><input type="text" name="entryDisplayCount" size="4" value="15" id="weblogConfig_bean_entryDisplayCount"/></td>
        <td class="description"></td>
    </tr>

    <tr>
        <td colspan="3"><h2>Internationalization Settings</h2></td>
    </tr>

    <tr>
        <td class="label">本地化设置</td>
        <td class="field">
			<gx:localeSelect name="locale" />
        </td>
        <td class="description"></td>
    </tr>

    <tr>
        <td class="label">时区</td>
        <td class="field">
			<gx:timeZoneSelect name="timeZone"/>
        </td>
        <td class="description"></td>
    </tr>

    <tr>
        <td colspan="3"><h2>评论</h2></td>

    </tr>
	
    <tr>
        <td class="label">允许在你的日志中开启评论功能？</td>
        <td class="field"><input type="checkbox" name="bean.allowComments" value="true" checked="checked" id="weblogConfig_bean_allowComments"/>
			<input type="hidden" name="__checkbox_bean.allowComments" value="true" /></td>
        <td class="description"></td>
    </tr>

</table>

<br />

<div class="control">
	<g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" />
</div>

<br />
<br />

</g:form>

                </div>
            </div>

            <div id="rightcontent_wrap">
                <div id="rightcontent">

                </div>
            </div>

        </div>
    </body>
</html>
