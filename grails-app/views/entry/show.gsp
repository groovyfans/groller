
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="entry.show" default="Show Entry" /></title>
    </head>
    <body>
        <g:form>
            <g:hiddenField name="id" value="${entryInstance?.id}" />
            <table class="form maxWidth">
                <tbody>
                    <tr>
                        <td colspan="2" class="formheader">
                            <h3 class="formtitle"><g:message code="entry.show" default="Show Entry" /></h3>
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
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.id" default="Id" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: entryInstance, field: "id")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.blog" default="Blog" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:link controller="blog" action="show" id="${entryInstance?.blog?.id}">${entryInstance?.blog?.encodeAsHTML()}</g:link></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.category" default="Category" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:link controller="category" action="show" id="${entryInstance?.category?.id}">${entryInstance?.category?.encodeAsHTML()}</g:link></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.author" default="Author" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:link controller="user" action="show" id="${entryInstance?.author?.id}">${entryInstance?.author?.encodeAsHTML()}</g:link></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.title" default="Title" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: entryInstance, field: "title")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.summary" default="Summary" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: entryInstance, field: "summary")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.content" default="Content" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: entryInstance, field: "content")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.status" default="Status" />:</td>
                        
                        <td valign="top" class="fieldValueArea">${fieldValue(bean: entryInstance, field: "status")}</td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.createDate" default="Create Date" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:formatDate date="${entryInstance?.createDate}" /></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.publishDate" default="Publish Date" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:formatDate date="${entryInstance?.publishDate}" /></td>
                        
                    </tr>
                    
                    <tr class="prop">
                        <td valign="top" class="fieldLabelArea"><g:message code="entry.updateDate" default="Update Date" />:</td>
                        
                        <td valign="top" class="fieldValueArea"><g:formatDate date="${entryInstance?.updateDate}" /></td>
                        
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
