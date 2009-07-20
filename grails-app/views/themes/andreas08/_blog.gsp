<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>${blog.name}</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Language" content="en" />
    <style type="text/css">
    <g:render template="/themes/andreas08/css"/>
    </style>
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'tools.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'typo.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'lightbox.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'nav-horizontal.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'layout-navtop-subright.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'layout.css')}" />
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'andreas08.css')}" />
    <script type="text/javascript" src="${resource(dir:'themes/andreas08/scripts',file:'prototype.js')}"></script>
    <script type="text/javascript" src="${resource(dir:'themes/andreas08/scripts',file:'scriptaculous.js?load=effects')}"></script>
    <script type="text/javascript" src="${resource(dir:'themes/andreas08/scripts',file:'lightbox.js')}"></script>
    <link rel="stylesheet" type="text/css" href="${resource(dir:'themes/andreas08/styles',file:'lightbox.css')}" />
</head>

<body>

<div id="page">

    <div id="header" class="clearfix">
        <h1><a href="${request.contextPath}/${blog.handle}">${blog.name}</a></h1>

        <h2><!-- Short tagline goes here --></h2>
        <div id="branding">${blog?.description}</div>
    </div>

    <div id="content" class="clearfix">
        <div id="main">


        <div class="next-previous">

        </div>

        <div class="entries">
            <g:render template="/themes/andreas08/day"/>
        </div>

        <g:if test="${params.url}">
			<g:render template="/themes/andreas08/comments"/>
			<g:render template="/themes/andreas08/commentForm"/>
        </g:if>

        </div><!-- end main -->

        <div id="sub">
            <ul class="rNavigationBar">
                <li class="rNavItem">
                    <a href="${request.contextPath}"><span>Front Page</span></a>
                </li>
                <li class="rNavItem">
                    <a href="${request.contextPath}/${blog.handle}"><span>Weblog</span></a>
                </li>
                <blog:isEditor blog="${blog}">
                <li class="rNavItem">
                    <a href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}"><span>撰写新日志</span></a>
                </li>
                <li class="rNavItem">
                   <a href="${createLink(controller:'blog', action:'edit',params:[weblog:blog.handle])}"><span>设置</span></a>
                </li>
                <li class="rNavItem">
                    <a href="${createLink(controller:'logout')}"><span>退出</span></a>
                </li>
                </blog:isEditor>
                <g:isNotLoggedIn>
                <li class="rNavItem">
                    <a href="${createLink(controller:'login')}"><span>登录</span></a>
                </li>
                </g:isNotLoggedIn>
            </ul>

            <div class="editorMenu">
                <blog:isEditor blog="${blog}">
                <ul class="rMenu">
                    <li class="rMenuItem"><a href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}">网志管理:撰写新日志</a></li>
                    <li class="rMenuItem"><a href="${createLink(controller:'entry', action:'list',params:[weblog:blog.handle])}">网志管理:归档</a></li>
                    <li class="rMenuItem"><a href="${createLink(controller:'comment',action:'list',params:[weblog:blog.handle])}">网志管理:评论</a></li>
                    <li class="rMenuItem"><a href="${createLink(controller:'category',action:'list',params:[weblog:blog.handle])}">网志管理:分类</a></li>

                    <li class="rMenuItem"><a href="">网志管理:书签夹</a></li>
                    <li class="rMenuItem"><a href="">网志管理:文件上传</a></li>
                    <li class="rMenuItem"><a href="">网志管理:引用</a></li>
                </ul>
                </blog:isEditor>
            </div>
            <div class="small box" id="description">
                <div id="feed">
                    <a href=""><img class="rssbadge"
                        src="${resource(dir:'themes/andreas08/images',file:'feed-icon-16x16.jpg')}"
                        alt="Click me to subscribe" /></a>
                </div>
                ${blog?.about}
            </div>
            <div class="small" id="calendar"><blog:showSmallCalendar model="[blog:blog,day:day]"/></div>
            <div id="searchbar">
                <h2>Search This Site</h2>
                <g:render template="/themes/andreas08/search"/>
            </div>

            <h2>Recent Entries</h2>

            <ul class="rEntriesList">
                <g:each var="e" in="${recentEntries}">
                    <li class="recentposts"><g:link controller="blog" action="showByUrl" params="[blog:blog.handle,url:e?.url]">${e?.title}</g:link></li>
                </g:each>
            </ul>
        </div>

        <div id="nav">
            <div class="wrapper">
                <h2 class="hide">Navigation</h2>
                <blog:displayCategories blog="${blog}" category="${category}"/>
            </div>
        </div>
    </div><!-- end content -->

    <div id="footer" class="clearfix">
        <p>&copy; 2006-2009 Rain | Design by <a href="http://andreasviklund.com">Andreas Viklund</a></p>
    </div>

</div><!-- end page -->
</body>
</html>
