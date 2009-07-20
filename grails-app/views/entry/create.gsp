
<html>
    <head>
        <meta name="layout" content="admin" />
        <title>Front Page: 新日志</title>

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
		<div id="menu">
			<h1>新日志</h1>
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
					<a class="menuItemSelected" href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}">撰写新日志</a>
						|
					<a class="menuItemUnselected" href="${createLink(controller:'entry', action:'list',params:[weblog:blog.handle])}">归档</a>
						|
					<a class="menuItemUnselected" href="${createLink(controller:'comment',action:'list',params:[weblog:blog.handle])}">评论</a>
						|
					<a class="menuItemUnselected" href="${createLink(controller:'category',action:'list',params:[weblog:blog.handle])}">分类</a>
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
                    在网志 <span>${blog.handle}</span> 中撰写新日志
                </p>

            <g:hasErrors bean="${entryInstance}">
                <div id="errors" class="errors">
                    <g:renderErrors bean="${entryInstance}" as="list"></g:renderErrors>
                </div>
            </g:hasErrors>

            <g:form action="save" method="post" >
            <g:hiddenField name="weblog" value="${params.weblog}" id="entry_weblog"/>
                <table class="entryEditTable" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td class="entryEditFormLabel">
                            <label for="title">标题</label>
                        </td>
                        <td>
                            <g:textField id="entry_bean_title" tabindex="1" name="title" maxlength="255" value="${fieldValue(bean: entryInstance, field: 'title')}" />
                        </td>
                    </tr>
                    <tr>
                        <td class="entryEditFormLabel">
                            <label for="url">URL</label>
                        </td>
                        <td>
                            <g:textField id="entry_bean_url" tabindex="2" name="url" maxlength="255" value="${fieldValue(bean: entryInstance, field: 'url')}" />
                        </td>
                    </tr>
                    <tr>
                        <td class="entryEditFormLabel">
                            <label for="status">状态</label>
                        </td>
                        <td>
                            <span style="color:red; font-weight:bold">尚未保存</span>
                            <g:hiddenField name="status" value="" id="entry_bean_status"/>
                        </td>
                    </tr>
                    <tr>
                        <td class="entryEditFormLabel">
                            <label for="categoryId">分类</label>
                        </td>
                        <td>
                            <g:select name="category.id" from="${categoryList}" optionKey="id" value="${entryInstance?.category?.id}" noSelection="['null': '']" />
                        </td>
                    </tr>

                    <tr>
                        <td class="entryEditFormLabel">
                            <label for="tags">Tags</label>
                        </td>
                        <td>
                            <g:textField id="entry_bean_tagsAsString" type="text" name="tagsAsString" size="70" maxlength="255" value="" tabindex="3" id="entryEditTags" class="entryEditTags"/>

                        </td>
                    </tr>
                </table>
                <div style="width: 100%;">

                    <div>
                        <p class="toplabel">内容</p>

                        <textarea name="content" cols="75" rows="25" tabindex="5" id="entry_bean_content" style="width: 100%"></textarea>

                        <p class="toplabel">摘要（可选）</p>

                        <textarea name="summary" cols="75" rows="5" tabindex="6" id="entry_bean_summary" style="width: 100%"></textarea>

                    </div>
                </div>

                <br />
                <div class="control">
                    <g:submitButton name="create" value="Save as draft" onclick="javascript:document.getElementById('entry_bean_status').value='DRAFT';"/>
                    <g:submitButton name="create" value="Post" onclick="javascript:document.getElementById('entry_bean_status').value='PUBLISHED';"/>
                </div>
            </g:form>

                </div>
            </div>
            <div id="rightcontent_wrap">
                <div id="rightcontent">
                    <g:render template="sidebar" />
                </div>
            </div>
        </div>
 
    </body>
</html>
