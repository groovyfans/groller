<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="blog.list" default="Blog List" /></title>
    </head>
    <body>
        <table class="form maxWidth">
            <tr>
                <td class="formheader">
                    <h3 class="formtitle"><g:message code="blog.list" default="Blog List" /></h3>
                </td>
            </tr>
            <tr>
                <td class="formbody">
                    <p>
                        Below is the list of all ${blogInstanceTotal} Blog.
                    </p>
                    <p>
                        <img src="${resource(dir:'images/admin/icons',file:'bullet_creme.gif')}" height="8" width="8" border="0" align="absmiddle" alt=""/>
                        <b><a id="add_blog" href="${createLink(action:'create')}"><g:message code="blog.new" default="New Blog" /></a></b>
                    </p>
                </td>
            </tr>
        </table>
        <br/>
        <table class="grid maxWidth">
            <thead>
                <tr>
                
                <g:sortableColumn property="id" title="Id" titleKey="blog.id" />
                
                <th><g:message code="blog.user" default="User" /></th>
                
                <g:sortableColumn property="name" title="Name" titleKey="blog.name" />
                
                <g:sortableColumn property="description" title="Description" titleKey="blog.description" />
                
                <g:sortableColumn property="createDate" title="Create Date" titleKey="blog.createDate" />
                
                <g:sortableColumn property="modifiedDate" title="Modified Date" titleKey="blog.modifiedDate" />
                

                <th class="minWidth"><g:message code="operations" default="Operations" /></th>

                </tr>
            </thead>
            <tbody>
            <g:each in="${blogInstanceList}" status="i" var="blogInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                
                    <td><g:link action="show" id="${blogInstance.id}">${fieldValue(bean: blogInstance, field: "id")}</g:link></td>
                
                    <td>${fieldValue(bean: blogInstance, field: "user")}</td>
                
                    <td>${fieldValue(bean: blogInstance, field: "name")}</td>
                
                    <td>${fieldValue(bean: blogInstance, field: "description")}</td>
                
                    <td><g:formatDate date="${blogInstance.createDate}" /></td>
                
                    <td><g:formatDate date="${blogInstance.modifiedDate}" /></td>
                

                    <td>
                        <g:link action="show" id="${blogInstance.id}"><g:message code="view" default="View" /></g:link> | 
                        <g:link action="edit" id="${blogInstance.id}"><g:message code="edit" default="Edit" /></g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="paginateButtons">
            <g:paginate total="${blogInstanceTotal}" />
        </div>
    </body>
</html>
