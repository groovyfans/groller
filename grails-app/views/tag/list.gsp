
<%@ page import="com.rainboyan.scorpio.blog.Tag" %>
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="tag.list" default="Tag List" /></title>
    </head>
    <body>
        <table class="form maxWidth">
            <tr>
                <td class="formheader">
                    <h3 class="formtitle"><g:message code="tag.list" default="Tag List" /></h3>
                </td>
            </tr>
            <tr>
                <td class="formbody">
                    <p>
                        Below is the list of all ${tagInstanceTotal} Tag.
                    </p>
                    <p>
                        <img src="${resource(dir:'images/admin/icons',file:'bullet_creme.gif')}" height="8" width="8" border="0" align="absmiddle" alt=""/>
                        <b><a id="add_tag" href="${createLink(action:'create')}"><g:message code="tag.new" default="New Tag" /></a></b>
                    </p>
                </td>
            </tr>
        </table>
        <br/>
        <table class="grid maxWidth">
            <thead>
                <tr>
                
                <g:sortableColumn property="id" title="Id" titleKey="tag.id" />
                
                <th><g:message code="tag.blog" default="Blog" /></th>
                
                <g:sortableColumn property="name" title="Name" titleKey="tag.name" />
                
                <th><g:message code="tag.user" default="User" /></th>
                

                <th class="minWidth"><g:message code="operations" default="Operations" /></th>

                </tr>
            </thead>
            <tbody>
            <g:each in="${tagInstanceList}" status="i" var="tagInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                
                    <td><g:link action="show" id="${tagInstance.id}">${fieldValue(bean: tagInstance, field: "id")}</g:link></td>
                
                    <td>${fieldValue(bean: tagInstance, field: "blog")}</td>
                
                    <td>${fieldValue(bean: tagInstance, field: "name")}</td>
                
                    <td>${fieldValue(bean: tagInstance, field: "user")}</td>
                

                    <td>
                        <g:link action="show" id="${tagInstance.id}"><g:message code="view" default="View" /></g:link> | 
                        <g:link action="edit" id="${tagInstance.id}"><g:message code="edit" default="Edit" /></g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="paginateButtons">
            <g:paginate total="${tagInstanceTotal}" />
        </div>
    </body>
</html>
