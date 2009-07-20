<g:set var="pageID" value="${pageProperty(name:'meta.pageID')}" scope="request"/>
<g:set var="subPageID" value="${pageProperty(name:'meta.subPageID')}" scope="request"/>

<g:render template="/includes/layouts/admin/header"/>

<g:layoutBody />

<g:render template="/includes/layouts/admin/footer"/>
