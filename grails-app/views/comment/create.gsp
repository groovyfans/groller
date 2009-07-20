
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="comment.create" default="Create Comment" /></title>
    </head>
    <body>
        <g:form action="save" method="post" >
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                        <a href="#" target="_help"><img src="${resource(dir:'images/admin/icons',file:'help_blue.gif')}" width="16" height="16" align="right" border="0" alt="Get help!" title="View online help Create a Comment"></a>
                            <h3 class="formtitle"><g:message code="comment.create" default="Create Comment" /></h3>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="formheader">
                        Enter your new comment details...
                        </td>
                    </tr>

                
                    <g:hasErrors bean="${commentInstance}" field="name">
                    <tr class="${hasErrors(bean: commentInstance, field: 'name', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${commentInstance}" field="name"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: commentInstance, field: 'name', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: commentInstance, field: 'name', 'formErrors')}">
                            <label for="name"><g:message code="comment.name" default="Name" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: commentInstance, field: 'name', 'formErrors')}">
                            <g:textField id="name" name="name" maxlength="20" value="${fieldValue(bean: commentInstance, field: 'name')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${commentInstance}" field="content">
                    <tr class="${hasErrors(bean: commentInstance, field: 'content', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${commentInstance}" field="comment"/></span>
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
                            <span class="errMsg"><g:fieldError bean="${commentInstance}" field="createDate"/></span>
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
                            <span class="errMsg"><g:fieldError bean="${commentInstance}" field="entry"/></span>
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
                            <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'create', 'default': 'Create')}" /></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </g:form>
    </body>
</html>
