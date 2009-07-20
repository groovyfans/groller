
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="entry.edit" default="Edit Entry" /></title>
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
        <g:set var="title">编辑日志</g:set>
        <g:render template="/includes/commons/menu" model="[title:title]"/>
        <div id="content">
            <div id="leftcontent_wrap">
                <div id="leftcontent">
                </div>
            </div>

            <div id="centercontent_wrap">
                <div id="centercontent">
                <p class="subtitle">
                    在网志 <span>rain</span> 中编辑日志
                </p>
            <g:hasErrors bean="${entryInstance}">
                <div id="errors" class="errors">
                    <g:renderErrors bean="${entryInstance}" as="list"></g:renderErrors>
                </div>
            </g:hasErrors>

        <g:form method="post" >
            <g:hiddenField name="weblog" value="${params.weblog}" id="entry_weblog"/>
            <g:hiddenField name="id" value="${entryInstance?.id}" />
            <g:hiddenField name="version" value="${entryInstance?.version}" />
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
                            <g:hiddenField name="status" value="${fieldValue(bean: entryInstance, field: 'status')}" id="entry_bean_status"/>
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

                        <textarea name="content" cols="75" rows="25" tabindex="5" id="entry_bean_content" style="width: 100%">${fieldValue(bean: entryInstance, field: 'content')}</textarea>

                        <p class="toplabel">摘要（可选）</p>

                        <textarea name="summary" cols="75" rows="5" tabindex="6" id="entry_bean_summary" style="width: 100%">${fieldValue(bean: entryInstance, field: 'summary')}</textarea>

                    </div>
                </div>

                <br />
                <div class="control">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
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
