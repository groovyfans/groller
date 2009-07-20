
<%@ page import="com.rainboyan.scorpio.blog.Tag" %>
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="tag.show" default="Show Tag" /></title>
    </head>
    <body>
        <g:form>
            <g:hiddenField name="id" value="${tagInstance?.id}" />
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                            <h3 class="formtitle"><g:message code="tag.show" default="Show Tag" /></h3>
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
                        <td valign="top" class="fieldLabelArea"><g:message code="tag.id" default="Id" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: tagInstance, field: "id")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="tag.blog" default="Blog" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:link controller="blog" action="show" id="${tagInstance?.blog?.id}">${tagInstance?.blog?.encodeAsHTML()}</g:link></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="tag.name" default="Name" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: tagInstance, field: "name")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="tag.user" default="User" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:link controller="user" action="show" id="${tagInstance?.user?.id}">${tagInstance?.user?.encodeAsHTML()}</g:link></td>
                        
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
