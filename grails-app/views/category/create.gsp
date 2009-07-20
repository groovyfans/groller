<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="category.create" default="Create Category" /></title>
        <style type="text/css">

#centercontent_wrap {
    width: 100%;
}
        </style>
    </head>
    <body>
		<div id="menu">
			<h1>添加分类</h1>
			<table class="menuTabTable" cellspacing="0" >
			<tr>
				<td class="menuTabSelected">
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
				<td class="menuTabUnselected">
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
					<a class="menuItemUnselected" href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}">撰写新日志</a>
						|
					<a class="menuItemUnselected" href="${createLink(controller:'entry', action:'list',params:[weblog:blog.handle])}">归档</a>
						|
					<a class="menuItemUnselected" href="${createLink(controller:'comment',action:'list',params:[weblog:blog.handle])}">评论</a>
						|
					<a class="menuItemSelected" href="${createLink(controller:'category',action:'list',params:[weblog:blog.handle])}">分类</a>
						|
					<a class="menuItemUnselected" href="#">书签夹</a>
						|
					<a class="menuItemUnselected" href="#">文件上传</a>
						|
					<a class="menuItemUnselected" href="#">引用</a>
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
    正在添加分类
</p>

<p>
    <b>路径</b>:/

</p>

<g:render template="/includes/commons/message"/>
<g:hasErrors bean="${categoryInstance}">
    <div id="errors" class="errors">
        <g:renderErrors bean="${categoryInstance}" as="list"></g:renderErrors>
    </div>
</g:hasErrors>

<g:form action="save" method="post" >

    <input type="hidden" name="weblog" value="${params.weblog}" id="categoryAdd_weblog"/>

    <input type="hidden" name="categoryId" value="" id="categoryAdd_categoryId"/>

    <table>

        <tr>
            <td>分类名称</td>

            <td><input type="text" name="name" size="70" maxlength="255" value="${fieldValue(bean: categoryInstance, field: 'name')}" id="categoryAdd_bean_name"/></td>
        </tr>

        <tr>
            <td>描述</td>
            <td><textarea name="description" cols="50" rows="5" id="categoryAdd_bean_description"></textarea></td>
        </tr>

        <tr>

            <td>图像</td>
            <td><textarea name="image" cols="50" rows="5" id="categoryAdd_bean_image"></textarea></td>
        </tr>

    </table>

    <p>
        <input type="submit" id="categoryAdd_categoryForm_save" name="save" value="保存"/>

        <input type="button" id="categoryAdd_categoryForm_cancel" name="cancel" onclick="window.location='$createLink{controller:'category',action:'list'}'" value="取消"/>
    </p>

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
