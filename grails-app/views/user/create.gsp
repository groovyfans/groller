
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="user.create" default="Create User" /></title>
    </head>
    <body>
        <g:form action="save" method="post" >
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                        <a href="#" target="_help"><img src="${resource(dir:'images/admin/icons',file:'help_blue.gif')}" width="16" height="16" align="right" border="0" alt="Get help!" title="View online help Create a User"></a>
                            <h3 class="formtitle"><g:message code="user.create" default="Create User" /></h3>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="formheader">
                        Enter your new user details...
                        </td>
                    </tr>

                
                    <g:hasErrors bean="${userInstance}" field="username">
                    <tr class="${hasErrors(bean: userInstance, field: 'username', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${userInstance}" field="username"/></span>
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
                            <span class="errMsg"><g:fieldError bean="${userInstance}" field="fullName"/></span>
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
                            <span class="errMsg"><g:fieldError bean="${userInstance}" field="screenName"/></span>
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
                    <tr class="${hasErrors(bean: userInstance, field: 'password', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${userInstance}" field="password"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: userInstance, field: 'password', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: userInstance, field: 'password', 'formErrors')}">
                            <label for="password"><g:message code="user.passwordHash" default="Password" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: userInstance, field: 'passwordHash', 'formErrors')}">
                            <g:passwordField id="password" name="password" value="${fieldValue(bean: userInstance, field: 'password')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${userInstance}" field="email">
                    <tr class="${hasErrors(bean: userInstance, field: 'email', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${userInstance}" field="email"/></span>
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
                
                    <g:hasErrors bean="${userInstance}" field="enabled">
                    <tr class="${hasErrors(bean: userInstance, field: 'enabled', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${userInstance}" field="enabled"/></span>
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
                            <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'create', 'default': 'Create')}" /></span>
                        </td>
                    </tr>
                </tbody>
            </table>
        </g:form>
    </body>
</html>
