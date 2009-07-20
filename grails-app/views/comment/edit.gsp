
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="comment.edit" default="Edit Comment" /></title>
    </head>
    <body>
        <g:form method="post" >
            <g:hiddenField name="id" value="${commentInstance?.id}" />
            <g:hiddenField name="version" value="${commentInstance?.version}" />
            <table class="form maxWidth">
                <tbody>
                <tr>
                    <td colspan="2" class="formheader">
                    <a href="#" target="_help"><img src="${resource(dir:'images/admin/icons',file:'help_blue.gif')}" width="16" height="16" align="right" border="0" alt="Get help!" title="View online help Edit a Comment"></a>
                        <h3 class="formtitle"><g:message code="comment.edit" default="Edit Comment" /></h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="formheader">
                    </td>
                </tr>
                
                    <g:hasErrors bean="${commentInstance}" field="author">
                    <tr class="${hasErrors(bean: commentInstance, field: 'author', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="author"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: commentInstance, field: 'author', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: commentInstance, field: 'author', 'formErrors')}">
                            <label for="author"><g:message code="comment.author" default="Author" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: commentInstance, field: 'author', 'formErrors')}">
                            <g:textField id="author" name="author" maxlength="20" value="${fieldValue(bean: commentInstance, field: 'author')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${commentInstance}" field="comment">
                    <tr class="${hasErrors(bean: commentInstance, field: 'comment', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="comment"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: commentInstance, field: 'comment', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: commentInstance, field: 'comment', 'formErrors')}">
                            <label for="comment"><g:message code="comment.comment" default="Comment" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: commentInstance, field: 'comment', 'formErrors')}">
                            <g:textField id="comment" name="comment" value="${fieldValue(bean: commentInstance, field: 'comment')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${commentInstance}" field="createDate">
                    <tr class="${hasErrors(bean: commentInstance, field: 'createDate', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="createDate"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: commentInstance, field: 'createDate', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: commentInstance, field: 'createDate', 'formErrors')}">
                            <label for="createDate"><g:message code="comment.createDate" default="Create Date" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: commentInstance, field: 'createDate', 'formErrors')}">
                            <g:datePicker name="createDate" value="${commentInstance?.createDate}" noSelection="['': '']" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${commentInstance}" field="entry">
                    <tr class="${hasErrors(bean: commentInstance, field: 'entry', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="entry"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: commentInstance, field: 'entry', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: commentInstance, field: 'entry', 'formErrors')}">
                            <label for="entry"><g:message code="comment.entry" default="Entry" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: commentInstance, field: 'entry', 'formErrors')}">
                            <g:select name="entry.id" from="${com.rainboyan.scorpio.blog.Entry.list()}" optionKey="id" value="${commentInstance?.entry?.id}"  />

                        </td>
                    </tr>
                
                    <tr>
                        <td colspan="2" class="fullyCentered formfooter">
                            <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" /></span>
                            <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </g:form>
    </body>
</html>
