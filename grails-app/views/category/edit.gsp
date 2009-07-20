
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="category.edit" default="Edit Category" /></title>
    </head>
    <body>
        <g:form method="post" >
            <g:hiddenField name="id" value="${categoryInstance?.id}" />
            <g:hiddenField name="version" value="${categoryInstance?.version}" />
            <table class="form maxWidth">
                <tbody>
                <tr>
                    <td colspan="2" class="formheader">
                    <a href="#" target="_help"><img src="${resource(dir:'images/admin/icons',file:'help_blue.gif')}" width="16" height="16" align="right" border="0" alt="Get help!" title="View online help Edit a Category"></a>
                        <h3 class="formtitle"><g:message code="category.edit" default="Edit Category" /></h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="formheader">
                    </td>
                </tr>
                
                    <g:hasErrors bean="${categoryInstance}" field="name">
                    <tr class="${hasErrors(bean: categoryInstance, field: 'name', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="name"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: categoryInstance, field: 'name', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: categoryInstance, field: 'name', 'formErrors')}">
                            <label for="name"><g:message code="category.name" default="Name" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: categoryInstance, field: 'name', 'formErrors')}">
                            <g:textField id="name" name="name" maxlength="100" value="${fieldValue(bean: categoryInstance, field: 'name')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${categoryInstance}" field="description">
                    <tr class="${hasErrors(bean: categoryInstance, field: 'description', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="description"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: categoryInstance, field: 'description', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: categoryInstance, field: 'description', 'formErrors')}">
                            <label for="description"><g:message code="category.description" default="Description" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: categoryInstance, field: 'description', 'formErrors')}">
                            <g:textField id="description" name="description" value="${fieldValue(bean: categoryInstance, field: 'description')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${categoryInstance}" field="blog">
                    <tr class="${hasErrors(bean: categoryInstance, field: 'blog', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="blog"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: categoryInstance, field: 'blog', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: categoryInstance, field: 'blog', 'formErrors')}">
                            <label for="blog"><g:message code="category.blog" default="Blog" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: categoryInstance, field: 'blog', 'formErrors')}">
                            <g:select name="blog.id" from="${com.rainboyan.scorpio.blog.Blog.list()}" optionKey="id" value="${categoryInstance?.blog?.id}"  />

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
