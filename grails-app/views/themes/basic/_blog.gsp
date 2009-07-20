<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${blog.name}</title>
    
    <link rel="stylesheet" type="text/css" media="all" href="${resource(dir:'themes/basic/styles',file:'basic-custom.css')}">
    <link rel="stylesheet" type="text/css" media="all" href="${resource(dir:'themes/basic/styles',file:'themes.css')}">
</head>
<body>

<div class="content_wrapper">
  <div class="content">
    <h1 class="weblogName"><a href="${request.contextPath}/${blog.handle}">${blog.name}</a></h1>

        <center>
        <s:displayCategories blog="${blog}"/>
        </center>


        <div class="next-previous">
            
        </div>

        <g:render template="/themes/basic/day"/>

  </div>
</div>

<div class="rightbar_wrapper">
  <div class="rightbar">
    <g:render template="/themes/basic/sidebar"/>
  </div>
</div>

</body>
</html>
