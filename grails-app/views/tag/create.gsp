
<%@ page import="com.rainboyan.scorpio.blog.Tag" %>
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="tag.create" default="Create Tag" /></title>
    </head>
    <body>
        <g:form action="save" method="post" >
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                        <a href="#" target="_help"><img src="${resource(dir:'images/admin/icons',file:'help_blue.gif')}" width="16" height="16" align="right" border="0" alt="Get help!" title="View online help Create a Tag"></a>
                            <h3 class="formtitle"><g:message code="tag.create" default="Create Tag" /></h3>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="formheader">
                        Enter your new tag details...
                        </td>
                    </tr>

                
                    <g:hasErrors bean="${tagInstance}" field="blog">
                    <tr class="${hasErrors(bean: tagInstance, field: 'blog', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${tagInstance}" field="blog"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: tagInstance, field: 'blog', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: tagInstance, field: 'blog', 'formErrors')}">
                            <label for="blog"><g:message code="tag.blog" default="Blog" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: tagInstance, field: 'blog', 'formErrors')}">
                            <g:select name="blog.id" from="${com.rainboyan.scorpio.blog.Blog.list()}" optionKey="id" value="${tagInstance?.blog?.id}"  />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${tagInstance}" field="name">
                    <tr class="${hasErrors(bean: tagInstance, field: 'name', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${tagInstance}" field="name"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: tagInstance, field: 'name', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: tagInstance, field: 'name', 'formErrors')}">
                            <label for="name"><g:message code="tag.name" default="Name" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: tagInstance, field: 'name', 'formErrors')}">
                            <g:textField id="name" name="name" value="${fieldValue(bean: tagInstance, field: 'name')}" />

                        </td>
                    </tr>
                
                    <g:hasErrors bean="${tagInstance}" field="user">
                    <tr class="${hasErrors(bean: tagInstance, field: 'user', 'formErrors')}">
                        <td>&nbsp;</td>
                        <td>
                            <span class="errMsg"><g:fieldError bean="${tagInstance}" field="user"/></span>
                        </td>
                    </tr>
                    </g:hasErrors>
                    <tr class="${hasErrors(bean: tagInstance, field: 'user', 'formErrors')}">
                        <td valign="top" class="fieldLabelArea ${hasErrors(bean: tagInstance, field: 'user', 'formErrors')}">
                            <label for="user"><g:message code="tag.user" default="User" />:</label>
                        </td>
                        <td valign="top" class="fieldValueArea ${hasErrors(bean: tagInstance, field: 'user', 'formErrors')}">
                            <g:select name="user.id" from="${com.rainboyan.scorpio.blog.User.list()}" optionKey="id" value="${tagInstance?.user?.id}"  />

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
