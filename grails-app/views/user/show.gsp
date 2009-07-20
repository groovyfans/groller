
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="user.show" default="Show User" /></title>
    </head>
    <body>
        <g:form>
            <g:hiddenField name="id" value="${userInstance?.id}" />
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                            <h3 class="formtitle"><g:message code="user.show" default="Show User" /></h3>
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
                        <td valign="top" class="fieldLabelArea"><g:message code="user.id" default="Id" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: userInstance, field: "id")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.username" default="Username" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: userInstance, field: "username")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.fullName" default="Full Name" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: userInstance, field: "fullName")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.screenName" default="Screen Name" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: userInstance, field: "screenName")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.passwordHash" default="Password Hash" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: userInstance, field: "passwordHash")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.email" default="Email" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: userInstance, field: "email")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.createDate" default="Create Date" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:formatDate date="${userInstance?.createDate}" /></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.modifiedDate" default="Modified Date" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:formatDate date="${userInstance?.modifiedDate}" /></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="user.enabled" default="Enabled" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:formatBoolean boolean="${userInstance?.enabled}" /></td>
                        
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
