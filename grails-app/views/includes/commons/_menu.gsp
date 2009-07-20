<div id="menu">
    <h1>${title}</h1>
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
                &nbsp;&nbsp;<a href="#">个性定制</a>&nbsp;&nbsp;
            </div>
        </div>
        </td>
        <td class="menuTabSeparator"></td>
    </tr>
    </table>

    <table class="menuItemTable" cellspacing="0" >
    <tr>
        <td class="padleft">
            <a class="menuItemSelected" href="${createLink(controller:'entry', action:'create',params:[weblog:blog.handle])}">撰写新日志</a>
                |
            <a class="menuItemUnselected" href="${createLink(controller:'entry', action:'list',params:[weblog:blog.handle])}">归档</a>
                |
            <a class="menuItemUnselected" href="${createLink(controller:'comment',action:'list',params:[weblog:blog.handle])}">评论</a>
                |
            <a class="menuItemUnselected" href="${createLink(controller:'category',action:'list',params:[weblog:blog.handle])}">分类</a>
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