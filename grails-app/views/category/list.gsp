<html>
    <head>
        <meta name="layout" content="admin" />
        <title>Front Page: 分类</title>
        <style type="text/css">

#centercontent_wrap {
    width: 70%;
}
#rightcontent_wrap {
    width: 29%;
}
        </style>
    </head>
    <body>
		<div id="menu">
			<h1>分类</h1>
			<table class="menuTabTable" cellspacing="0" >
			<tr>
				<td class="menuTabSelected">
				<div class="menu-tr">
					<div class="menu-tl">
						&nbsp;&nbsp;<a href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}">网志管理</a>&nbsp;&nbsp;
					</div>
				</div>
				</td>
				<td class="menuTabSeparator"></td>
				<td class="menuTabUnselected">
				<div class="menu-tr">
					<div class="menu-tl">
						&nbsp;&nbsp;<a href="#">Design</a>&nbsp;&nbsp;
					</div>
				</div>
				</td>
				<td class="menuTabSeparator"></td>
				<td class="menuTabUnselected">
				<div class="menu-tr">
					<div class="menu-tl">
						&nbsp;&nbsp;<a href="${createLink(controller:'blog', action:'edit',params:[weblog:blog.handle])}">个性定制</a>&nbsp;&nbsp;
					</div>
				</div>
				</td>
				<td class="menuTabSeparator"></td>
			</tr>
			</table>

			<table class="menuItemTable" cellspacing="0" >
			<tr>
				<td class="padleft">
					<a class="menuItemUnselected" href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}">撰写新日志</a>
						|
					<a class="menuItemUnselected" href="${createLink(controller:'entry', action:'list',params:[weblog:blog.handle])}">归档</a>
						|
					<a class="menuItemUnselected" href="${createLink(controller:'comment',action:'list',params:[weblog:blog.handle])}">评论</a>
						|
					<a class="menuItemSelected" href="${createLink(controller:'category',action:'list',params:[weblog:blog.handle])}">分类</a>
						|
					<a class="menuItemUnselected" href="#">书签夹</a>
						|
					<a class="menuItemUnselected" href="#">文件上传</a>
						|
					<a class="menuItemUnselected" href="#">引用</a>
				</td>
			</tr>
			</table>
		</div>
        <div id="content">
            <div id="leftcontent_wrap">

                <div id="leftcontent">
                </div>
            </div>

            <div id="centercontent_wrap">
                <div id="centercontent">

<script type="text/javascript">
<!--
function setChecked(val)
{
    len = document.categories.elements.length;
    var i=0;
    for( i=0 ; i<len ; i++)
    {
        document.categories.elements[i].checked=val;
    }
}
function onMove()
{
    if ( confirm("Move selected categories?") )
    {
        document.categories.method.value = "moveSelected";
        document.categories.submit();
    }
}
//-->
</script>


    <p class="subtitle">
        管理网志 <span>${blog.handle}</span> 的分类
    </p>
    <p class="pagetip">

        这里您的顶级分类。你可以利用分类来组织您的日志，您的拜访者也可以通过选择某一个分类来订阅他感兴趣的专题。你可以定义子类，但是Scorpio只提供显示顶级分类的宏。
    </p>

<form id="categories" name="categories" onsubmit="return true;" action="/roller/roller-ui/authoring/categories!move.rol" method="post">

    <input type="hidden" name="weblog" value="${blog.handle}" id="categories_weblog"/>

    <input type="hidden" name="categoryId" value="" id="categories_categoryId"/>

    <input type="button" value="全部选择" onclick="setChecked(1)" /></input>

    <input type="button" value="一个不选" onclick="setChecked(0)" /></input>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


    <input type="submit" id="categories_categoriesForm_move" name="categoriesForm.move" value="移动" onclick="onMove()"/>

    <g:select name="targetCategoryId" from="${categoryInstanceList}" optionKey="id" noSelection="['null': '/']" />

    <p />


    <table class="rollertable">

        <tr class="rollertable">
            <th class="rollertable" width="5%">&nbsp;</td>
            <th class="rollertable" width="5%">&nbsp;</td>
            <th class="rollertable" width="30%">分类名称</td>
            <th class="rollertable" width="45%">描述</td>
            <th class="rollertable" width="5%">编辑</td>

            <th class="rollertable" width="5%">移除</td>
        </tr>


        <g:each var="category" in="${categoryInstanceList}">
        <tr class="rollertable_odd">

                <td class="rollertable">
                    <input type="checkbox" name="selectedCategories" value="${category.id}" />
                </td>

                <td class="rollertable" align="center"><img src="${resource(dir:'images',file:'folder.png')}" alt="icon" /></td>

                <td class="rollertable">

                    <a id="categories_" href="${createLink(controller:'category', action:'list', params:[weblog:blog.handle,categoryId:category.id])}">${category.name}</a>
                </td>

                <td class="rollertable">
                    ${category.description}
                </td>

                <td class="rollertable" align="center">
                    <a id="categories_" href="${createLink(controller:'category', action:'edit', params:[weblog:blog.handle,id:category.id])}"><img src="${resource(dir:'images',file:'page_white_edit.png')}" border="0" alt="icon" /></a>
                </td>

                <td class="rollertable" align="center">
                    <a id="categories_" href="${createLink(controller:'category', action:'delete', params:[weblog:blog.handle,id:category.id])}"><img src="${resource(dir:'images',file:'delete.png')}" border="0" alt="icon" /></a>
                </td>

          </tr>
          </g:each>


    </table>

</form>


                </div>
            </div>


            <div id="rightcontent_wrap">
                <div id="rightcontent">

                    <g:render template="sidebar" />

                </div>

            </div>
        </div>

    </body>
</html>
