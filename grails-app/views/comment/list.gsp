<html>
    <head>
        <meta name="layout" content="admin" />
        <title>Front Page: 评论管理</title>
        <style type="text/css">

#centercontent_wrap {
    width: 70%;
}
#rightcontent_wrap {
    width: 29%;
}
label.checkboxLabel {
    display: none;
}
        </style>

    </head>
    <body>
		<div id="menu">
			<h1>评论管理</h1>
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
					<a class="menuItemSelected" href="${createLink(controller:'comment',action:'list',params:[weblog:blog.handle])}">评论</a>
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

        <div id="content">
            <div id="leftcontent_wrap">
                <div id="leftcontent">
                </div>
            </div>

            <div id="centercontent_wrap">
                <div id="centercontent">

<script type="text/javascript">
<!--
function setChecked(val, name) {
    form = $('comments');
    len = form.elements.length;
    var i=0;
    for( i=0 ; i<len ; i++) {
        if (form.elements[i].name == name) {
           form.elements[i].checked=val;
        }
    }
}
function bulkDelete() {
    if (window.confirm('Are you sure you want to delete all 0 selected by your query?')) {
        document.commentQueryForm.method.value = "bulkDelete";
        document.commentQueryForm.submit();
    }
}


-->
</script>

<p class="subtitle">


        管理网志 <span>${blog.handle}</span> 中的评论

</p>

<p class="pagetip">有评论。您可以通过下面的选择框改变批准，垃圾评论状态和删除评论。如果您做了任何更改，记得点击顶部的 <em>保存更改</em>按钮。 </p>

<form id="comments" name="comments" onsubmit="return true;" action="/roller/roller-ui/authoring/comments!update.rol" method="post">

    <input type="hidden" name="weblog" value="rain" id="comments_weblog"/>

    <input type="hidden" name="bean.ids" value="d1baf5f9-013f-4a50-a548-ec6d2daeaab9" id="comments_bean_ids"/>

    <input type="hidden" name="bean.entryId" value="" id="comments_bean_entryId"/>

    <input type="hidden" name="bean.offset" value="" id="comments_bean_offset"/>

    <input type="hidden" name="bean.count" value="" id="comments_bean_count"/>

    <input type="hidden" name="bean.startDateString" value="" id="comments_bean_startDateString"/>

    <input type="hidden" name="bean.endDateString" value="" id="comments_bean_endDateString"/>

    <input type="hidden" name="bean.pendingString" value="" id="comments_bean_pendingString"/>

    <input type="hidden" name="bean.spamString" value="ALL" id="comments_bean_spamString"/>

<div class="tablenav">

    <div style="float:left;">
        显示 <b>1</b> 评论
    </div>
    <div style="float:right;">
        06/14/09 05:18 下午
        ---
        06/14/09 05:18 下午
    </div>
    <br />
    <br />

</div>

<table class="rollertable" width="100%">
<tr>
    <th class="rollertable" width="5%">
        批准
    </th>
    <th class="rollertable" width="5%">
        垃圾评论
    </th>
    <th class="rollertable" width="5%" >
        删除
    </th>
    <th class="rollertable">
        评论
    </th>
</tr>

    <tr class="actionrow">
        <td align="center">
            选择<br/>

            <a href="#" onclick='setChecked(1,"bean.approvedComments")'>
            所有</a><br />

            <a href="#" onclick='setChecked(0,"bean.approvedComments")'>
            什么也没有</a>
        </td>
        <td align="center">
            选择<br/>

            <a href="#" onclick='setChecked(1,"bean.spamComments")'>
            所有</a><br />

            <a href="#" onclick='setChecked(0,"bean.spamComments")'>
            什么也没有</a>
        </td>
        <td align="center">
            选择<br/>

            <a href="#" onclick='setChecked(1,"bean.deleteComments")'>
            所有</a><br />

            <a href="#" onclick='setChecked(0,"bean.deleteComments")'>
            什么也没有</a>
        </td>
        <td align="right">
            <br />
            <span class="pendingCommentBox">&nbsp;&nbsp;&nbsp;&nbsp;</span>
            排队等待中&nbsp;&nbsp;
            <span class="spamCommentBox">&nbsp;&nbsp;&nbsp;&nbsp;</span>
            垃圾评论&nbsp;&nbsp;
        </td>
    </tr>


<tr>
    <td>

        <input type="checkbox" name="bean.approvedComments" value="d1baf5f9-013f-4a50-a548-ec6d2daeaab9" id="bean.approvedComments-1" checked="checked"/>
<label for="bean.approvedComments-1" class="checkboxLabel">haha</label>

    </td>
    <td>

        <input type="checkbox" name="bean.spamComments" value="d1baf5f9-013f-4a50-a548-ec6d2daeaab9" id="bean.spamComments-1"/>
<label for="bean.spamComments-1" class="checkboxLabel">haha</label>

    </td>
    <td>

        <input type="checkbox" name="bean.deleteComments" value="d1baf5f9-013f-4a50-a548-ec6d2daeaab9" id="bean.deleteComments-1"/>
<label for="bean.deleteComments-1" class="checkboxLabel">haha</label>

    </td>

        <td>



    <table style="border:none; padding:0px; margin:0px">
        <tr>
            <td style="border: none; padding:0px;">
            对于</td>
            <td class="details" style="border: none; padding:0px;">
                <a href='http://192.168.1.2:8080/roller/rain/entry/hello_roller_4'>
                Hello, Roller 4</a>
            </td>
        </tr>

        <tr>
            <td style="border: none; padding:0px;">
            评论人——</td>
            <td class="details" style="border: none; padding:0px;">

                    haha (<a href="mailto:haha@abc.com">haha@abc.com</a>) 来自于IP 192.168.1.4





                    <br /><a href='http://haha.com'>
                    http://haha.com</a>

            </td>
        </tr>
        <tr>
            <td style="border: none; padding:0px;">
            发布在</td>
            <td class="details" style="border: none; padding:0px;">
            09-6-14 17:18:47.000</td>
        </tr>
    </table>


    <br />
    <span class="details">



        <pre>very cool!:)</pre>


    </span>

    </td>
</tr>

</table>
<br />

<input type="submit" id="comments_commentManagement_update" name="commentManagement.update" value="保存变更"/>


</form>


                </div>
            </div>

            <div id="rightcontent_wrap">
                <div id="rightcontent">

                <g:render template="sidebar"/>

                </div>
            </div>
        </div>

    </body>
</html>
