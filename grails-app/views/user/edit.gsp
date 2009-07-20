
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="user.edit" default="Edit User" /></title>
    </head>
    <body>
        <g:form method="post" >
            <g:hiddenField name="id" value="${userInstance?.id}" />
            <g:hiddenField name="version" value="${userInstance?.version}" />
            <table class="form maxWidth">
                <tbody>
                <tr>
                    <td colspan="2" class="formheader">
                    <a href="#" target="_help"><img src="${resource(dir:'images/admin/icons',file:'help_blue.gif')}" width="16" height="16" align="right" border="0" alt="Get help!" title="View online help Edit a User"></a>
                        <h3 class="formtitle"><g:message code="user.edit" default="Edit User" /></h3>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="formheader">
                    </td>
                </tr>
                
                    <g:hasErrors bean="${userInstance}" field="username">
                    <tr class="${hasErrors(bean: userInstance, field: 'username', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="username"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'username', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'username', 'formErrors')}">
                            <label for="username"><g:message code="user.username" default="Username" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'username', 'formErrors')}">
                            <g:textField id="username" name="username" maxlength="20" value="${fieldValue(bean: userInstance, field: 'username')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="fullName">
                    <tr class="${hasErrors(bean: userInstance, field: 'fullName', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="fullName"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'fullName', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'fullName', 'formErrors')}">
                            <label for="fullName"><g:message code="user.fullName" default="Full Name" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'fullName', 'formErrors')}">
                            <g:textField id="fullName" name="fullName" value="${fieldValue(bean: userInstance, field: 'fullName')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="screenName">
                    <tr class="${hasErrors(bean: userInstance, field: 'screenName', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="screenName"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'screenName', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'screenName', 'formErrors')}">
                            <label for="screenName"><g:message code="user.screenName" default="Screen Name" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'screenName', 'formErrors')}">
                            <g:textField id="screenName" name="screenName" value="${fieldValue(bean: userInstance, field: 'screenName')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="passwordHash">
                    <tr class="${hasErrors(bean: userInstance, field: 'passwordHash', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="passwordHash"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'passwordHash', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'passwordHash', 'formErrors')}">
                            <label for="passwordHash"><g:message code="user.passwordHash" default="Password Hash" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'passwordHash', 'formErrors')}">
                            <g:textField id="passwordHash" name="passwordHash" value="${fieldValue(bean: userInstance, field: 'passwordHash')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="email">
                    <tr class="${hasErrors(bean: userInstance, field: 'email', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="email"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'email', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'email', 'formErrors')}">
                            <label for="email"><g:message code="user.email" default="Email" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'email', 'formErrors')}">
                            <g:textField id="email" name="email" value="${fieldValue(bean: userInstance, field: 'email')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="createDate">
                    <tr class="${hasErrors(bean: userInstance, field: 'createDate', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="createDate"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'createDate', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'createDate', 'formErrors')}">
                            <label for="createDate"><g:message code="user.createDate" default="Create Date" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'createDate', 'formErrors')}">
                            <g:datePicker name="createDate" value="${userInstance?.createDate}"  />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="modifiedDate">
                    <tr class="${hasErrors(bean: userInstance, field: 'modifiedDate', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="modifiedDate"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'modifiedDate', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'modifiedDate', 'formErrors')}">
                            <label for="modifiedDate"><g:message code="user.modifiedDate" default="Modified Date" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'modifiedDate', 'formErrors')}">
                            <g:datePicker name="modifiedDate" value="${userInstance?.modifiedDate}"  />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="enabled">
                    <tr class="${hasErrors(bean: userInstance, field: 'enabled', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${propertyName}" field="enabled"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'enabled', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'enabled', 'formErrors')}">
                            <label for="enabled"><g:message code="user.enabled" default="Enabled" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'enabled', 'formErrors')}">
                            <g:checkBox name="enabled" value="${userInstance?.enabled}" />

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
