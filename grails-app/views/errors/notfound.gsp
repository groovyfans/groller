<html>
  <head>
	  <title>Scorpio</title>
	  <style type="text/css">

	  </style>
  </head>

  <body>
    <h1>Errors:</h1>
    <g:if test="${flash.error}">
    <div id="errors" class="errors">
        <img src="${createLinkTo(dir:'/images/skin', file:'exclamation.png')}" alt="${message(code:'icon.error')}" class="icon" />
        <g:message code="${flash.error}" default="${flash.defaultError}"/>
    </div>
    </g:if>
  </body>
</html>