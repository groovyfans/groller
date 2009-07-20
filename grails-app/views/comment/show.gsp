
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="comment.show" default="Show Comment" /></title>
    </head>
    <body>
        <g:form>
            <g:hiddenField name="id" value="${commentInstance?.id}" />
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                            <h3 class="formtitle"><g:message code="comment.show" default="Show Comment" /></h3>
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
                        <td valign="top" class="fieldLabelArea"><g:message code="comment.id" default="Id" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: commentInstance, field: "id")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="comment.author" default="Author" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: commentInstance, field: "author")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="comment.comment" default="Comment" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: commentInstance, field: "comment")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="comment.createDate" default="Create Date" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:formatDate date="${commentInstance?.createDate}" /></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="comment.entry" default="Entry" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:link controller="entry" action="show" id="${commentInstance?.entry?.id}">${commentInstance?.entry?.encodeAsHTML()}</g:link></td>
                        
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
