<g:if test="${flash.message}">
    <div id="messages" class="messages">
        <img src="${createLinkTo(dir:'/images/skin', file:'information.png')}" alt="${message(code:'icon.information')}" class="icon" />
        <g:message code='${flash.message}'/>
    </div>
</g:if>
<g:if test="${flash.error}">
    <div id="errors" class="errors">
        <img src="${createLinkTo(dir:'/images/skin', file:'exclamation.png')}" alt="${message(code:'icon.error')}" class="icon" />
        <g:message code='${flash.error}'/>
    </div>
</g:if>
