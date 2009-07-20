<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="category.show" default="Show Category" /></title>
    </head>
    <body>
        <g:form>
            <g:hiddenField name="id" value="${categoryInstance?.id}" />
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                            <h3 class="formtitle"><g:message code="category.show" default="Show Category" /></h3>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="formheader">
                            <g:if test="${flash.message}">
                            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
                            </g:if>
                        </td>
                    </tr>
                
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="category.id" default="Id" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: categoryInstance, field: "id")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="category.name" default="Name" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: categoryInstance, field: "name")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="category.description" default="Description" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: categoryInstance, field: "description")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="category.blog" default="Blog" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:link controller="blog" action="show" id="${categoryInstance?.blog?.id}">${categoryInstance?.blog?.encodeAsHTML()}</g:link></td>
                        
                    </tr>
                    
                    <tr>
                        <td colspan="2" class="fullyCentered formfooter">
                            <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'edit', 'default': 'Edit')}" /></span>
                            <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </g:form>
    </body>
</html>
