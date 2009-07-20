
<html>
    <head>
        <meta name="layout" content="admin" />
        <title><g:message code="user.list" default="User List" /></title>
    </head>
    <body>
        <table class="form maxWidth">
            <tr>
                <td class="formheader">
                    <h3 class="formtitle"><g:message code="user.list" default="User List" /></h3>
                </td>
            </tr>
            <tr>
                <td class="formbody">
                    <p>
                        Below is the list of all ${userInstanceTotal} User.
                    </p>
                    <p>
                        <img src="${resource(dir:'images/admin/icons',file:'bullet_creme.gif')}" height="8" width="8" border="0" align="absmiddle" alt=""/>
                        <b><a id="add_user" href="${createLink(action:'create')}"><g:message code="user.new" default="New User" /></a></b>
                    </p>
                </td>
            </tr>
        </table>
        <br/>
        <table class="grid maxWidth">
            <thead>
                <tr>
                
                <g:sortableColumn property="id" title="Id" titleKey="user.id" />
                
                <g:sortableColumn property="username" title="Username" titleKey="user.username" />
                
                <g:sortableColumn property="fullName" title="Full Name" titleKey="user.fullName" />
                
                <g:sortableColumn property="screenName" title="Screen Name" titleKey="user.screenName" />
                
                <g:sortableColumn property="passwordHash" title="Password Hash" titleKey="user.passwordHash" />
                
                <g:sortableColumn property="email" title="Email" titleKey="user.email" />
                

                <th class="minWidth"><g:message code="operations" default="Operations" /></th>

                </tr>
            </thead>
            <tbody>
            <g:each in="${userInstanceList}" status="i" var="userInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                
                    <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "id")}</g:link></td>
                
                    <td>${fieldValue(bean: userInstance, field: "username")}</td>
                
                    <td>${fieldValue(bean: userInstance, field: "fullName")}</td>
                
                    <td>${fieldValue(bean: userInstance, field: "screenName")}</td>
                
                    <td>${fieldValue(bean: userInstance, field: "passwordHash")}</td>
                
                    <td>${fieldValue(bean: userInstance, field: "email")}</td>
                

                    <td>
                        <g:link action="show" id="${userInstance.id}"><g:message code="view" default="View" /></g:link> | 
                        <g:link action="edit" id="${userInstance.id}"><g:message code="edit" default="Edit" /></g:link>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        <div class="paginateButtons">
            <g:paginate total="${userInstanceTotal}" />
        </div>
    </body>
</html>
