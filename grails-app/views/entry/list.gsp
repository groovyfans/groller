<html>
    <head>
        <meta name="layout" content="admin" />
        <title>Front Page: 编辑日志</title>
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
			<h1>编辑日志</h1>
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
					<a class="menuItemSelected" href="${createLink(controller:'entry', action:'list',params:[weblog:blog.handle])}">归档</a>
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

        <div id="content">
            <div id="leftcontent_wrap">
                <div id="leftcontent">
                </div>
            </div>

            <div id="centercontent_wrap">

                <div id="centercontent">


<p class="subtitle">
    查找、编辑网志 <span>${blog.handle}</span> 中的日志

</p>
<p class="pagetip">
    您可以通过选择下面列表中的日志来编辑或者使用日志过滤面板来查找一个特定的分类、日期范围或者状态。
</p>

<div class="tablenav">

    <div style="float:left;">
        显示日志 ${entryInstanceTotal}
    </div>

    <div style="float:right;">
        05/07/09 08:51 下午
        ---
        05/07/09 08:51 下午
    </div>
    <br />


    <br />

</div>

<p>
    <span class="draftEntryBox">&nbsp;&nbsp;&nbsp;&nbsp;</span>
    草稿&nbsp;&nbsp;
    <span class="pendingEntryBox">&nbsp;&nbsp;&nbsp;&nbsp;</span>

    等待中……&nbsp;&nbsp;
</p>

<table class="rollertable" width="100%">

<tr>
    <th class="rollertable" width="5%">
        已经发布
    </th>
    <th class="rollertable" width="5%">
        最后更新
    </th>

    <th class="rollertable">
        编辑日志
    </th>
    <th class="rollertable" width="5%">
        分类
    </th>
    <th class="rollertable" width="5%">
    </th>
    <th class="rollertable" width="5%">
    </th>

</tr>



            <g:each in="${entryInstanceList}" status="i" var="entryInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:formatDate date="${entryInstance.publishDate}" format="yyyy-MM-dd hh:mm a"/></td>

                    <td><g:formatDate date="${entryInstance.updateDate}" format="yyyy-MM-dd hh:mm a"/></td>
                                
                    <td>${fieldValue(bean: entryInstance, field: "title")}</td>
                
                    <td>${entryInstance?.category?.name}</td>                

                    <td>
                        <g:link action="show" id="${entryInstance.id}"><g:message code="view" default="View" /></g:link>
                    </td>

                    <td>
                        <g:link action="edit" id="${entryInstance.id}" params="[weblog:params.weblog]"><g:message code="edit" default="Edit" /></g:link>
                    </td>
                </tr>
            </g:each>
</table>

        <div class="paginateButtons">
            <g:paginate total="${entryInstanceTotal}" />
        </div>


                </div>
            </div>

            <div id="rightcontent_wrap">

                <div id="rightcontent">











<div class="sidebarFade">
    <div class="menu-tr">
        <div class="menu-tl">

            <div class="sidebarInner">

                <h3>日志过滤器</h3>
                <hr size="1" noshade="noshade" />

                <p>通过分类、日期和（或者）状态过滤日志。</p>



<form id="entries" name="entries" onsubmit="return true;" action="/roller/roller-ui/authoring/entries.rol" method="post">

                    <input type="hidden" name="weblog" value="rain" id="entries_weblog"/>

                    <input type="hidden" name="bean.count" value="" id="entries_bean_count"/>

                    <input type="hidden" name="bean.offset" value="" id="entries_bean_offset"/>





                    <div class="sideformrow">
                        <label for="categoryId" class="sideformrow">
                        分类</label>
                        <select name="bean.categoryPath" size="1" id="entries_bean_categoryPath">

    <option value="">Any</option>
    <option value="/General">General</option>
    <option value="/Java">Java</option>
    <option value="/Status">Status</option>
    <option value="/Politics">Politics</option>
    <option value="/Music">Music</option>


</select>

                    </div>
                    <br />
                    <br />




                    <div class="sideformrow">
                        <label for="tags" class="sideformrow">
                        Tags</label>
                        <input type="text" name="bean.tagsAsString" size="14" value="" id="entries_bean_tagsAsString"/>

                    </div>
                    <br />
                    <br />




                    <div class="sideformrow">
                        <label for="text" class="sideformrow">
                        Search string</label>
                        <input type="text" name="bean.text" size="14" value="" id="entries_bean_text"/>

                    </div>

                    <br />
                    <br />




                    <div class="sideformrow">
                        <label for="startDateString" class="sideformrow">起始日期:</label>
                        <script type="text/javascript" >
                        <!--
                        if (document.layers) { // Netscape 4 hack
                            var calStart = new CalendarPopup();
                        } else {
                            var calStart = new CalendarPopup("datetagdiv");
                            document.write(calStart.getStyles());
                        }
                        // -->
                        </script>
                        <input type="text" name="bean.startDateString" size="12" value="" id="entries_bean_startDateString"/>

                        <a href="#" id="anchorCalStart" name="anchorCalStart"
                           onclick="calStart.select($('entries_bean_startDateString'),'anchorCalStart','MM/dd/yy'); return false">
                        <img src="${resource(dir:'images',file:'calendar.png')}" class="calIcon" alt="Calendar" /></a>

                    </div>

                    <div class="sideformrow">
                        <label for="endDateString" class="sideformrow">截止日期:</label>
                        <script type="text/javascript" >
                        <!--
                        if (document.layers) { // Netscape 4 hack
                            var calEnd = new CalendarPopup();
                        } else {
                            var calEnd = new CalendarPopup("datetagdiv");
                            document.write(calEnd.getStyles());
                        }
                        // -->
                        </script>
                        <input type="text" name="bean.endDateString" size="12" value="" id="entries_bean_endDateString"/>

                        <a href="#" id="anchorCalEnd" name="anchorCalEnd"
                           onclick="calEnd.select($('entries_bean_endDateString'),'anchorCalEnd','MM/dd/yy'); return false">
                        <img src="${resource(dir:'images',file:'calendar.png')}" class="calIcon" alt="Calendar" /></a>

                    </div>
                    <br />
                    <br />




                    <div class="sideformrow">
                        <label for="status" class="sideformrow">
                            状态:
                            <br />
                            <br />
                            <br />

                            <br />
                            <br />
                            <br />
                        </label>
                        <div>
                            <input type="radio" name="bean.status" id="entries_bean_statusALL" checked="checked" value="ALL"/><label for="entries_bean_statusALL">所有日志</label>
<br/>
<input type="radio" name="bean.status" id="entries_bean_statusDRAFT" value="DRAFT"/><label for="entries_bean_statusDRAFT">仅包含草稿</label>
<br/>
<input type="radio" name="bean.status" id="entries_bean_statusPUBLISHED" value="PUBLISHED"/><label for="entries_bean_statusPUBLISHED">仅包含发布的</label>

<br/>
<input type="radio" name="bean.status" id="entries_bean_statusPENDING" value="PENDING"/><label for="entries_bean_statusPENDING">只包含等待中的</label>
<br/>
<input type="radio" name="bean.status" id="entries_bean_statusSCHEDULED" value="SCHEDULED"/><label for="entries_bean_statusSCHEDULED">Scheduled Only</label>
<br/>

                        </div>
                    </div>




                    <div class="sideformrow">
                        <label for="status" class="sideformrow">
                            排序:
                            <br />

                            <br />
                        </label>
                        <div>
                            <input type="radio" name="bean.sortBy" id="entries_bean_sortBypubTime" value="pubTime"/><label for="entries_bean_sortBypubTime">发布时间</label>
<br/>
<input type="radio" name="bean.sortBy" id="entries_bean_sortByupdateTime" checked="checked" value="updateTime"/><label for="entries_bean_sortByupdateTime">更新时间</label>
<br/>

                        </div>
                    </div>





                    <br />

                    <input type="submit" id="entries_weblogEntryQuery_button_query" name="weblogEntryQuery.button.query" value="过滤"/>


                </form>





                <br />
                <br />
            </div> <!-- sidebarInner -->

        </div>
    </div>
</div>

                </div>
            </div>
        </div>

    </body>
</html>
