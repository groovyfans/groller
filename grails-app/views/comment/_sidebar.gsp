<div class="sidebarFade">
    <div class="menu-tr">
        <div class="menu-tl">

<div class="sidebarInner">

<h3>评论过滤器</h3>
<hr size="1" noshade="noshade" />

<p>通过搜索词，状态，和（或者）日期等过滤评论</p>


<form id="commentsQuery" name="comments" onsubmit="return true;" action="/roller/roller-ui/authoring/comments!query.rol" method="post">

    <input type="hidden" name="weblog" value="rain" id="commentsQuery_weblog"/>


    <div class="sideformrow">
        <label for="searchString" class="sideformrow">搜索词组:</label>
        <input type="text" name="bean.searchString" size="15" value="" id="commentsQuery_bean_searchString"/>

    </div>
    <br />
    <br />

    <div class="sideformrow">
        <label for="startDateString" class="sideformrow">开始日期:</label>
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
            <input type="text" name="bean.startDateString" size="12" value="" id="commentsQuery_bean_startDateString"/>

            <a href="#" id="anchorCalStart" name="anchorCalStart"
               onclick="calStart.select($('commentsQuery_bean_startDateString'),'anchorCalStart','MM/dd/yy'); return false">
            <img src="${resource(dir:'images',file:'calendar.png')}" class="calIcon" alt="Calendar" /></a>
    </div>

    <div class="sideformrow">
        <label for="endDateString" class="sideformrow">截至日期:</label>
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
            <input type="text" name="bean.endDateString" size="12" value="" id="commentsQuery_bean_endDateString"/>

            <a href="#" id="anchorCalEnd" name="anchorCalEnd"
               onclick="calEnd.select($('commentsQuery_bean_endDateString'),'anchorCalEnd','MM/dd/yy'); return false">
            <img src="${resource(dir:'images',file:'calendar.png')}" class="calIcon" alt="Calendar" /></a>
    </div>
    <br />
    <br />

    <div class="sideformrow">
        <label for="approvedString" class="sideformrow">
            处于等待状态
            <br />
            <br />
            <br />
            <br />
            <br />
        </label>
        <div>
            <input type="radio" name="bean.approvedString" id="commentsQuery_bean_approvedStringALL" checked="checked" value="ALL"/><label for="commentsQuery_bean_approvedStringALL">所有</label>
<br/>
<input type="radio" name="bean.approvedString" id="commentsQuery_bean_approvedStringONLY_PENDING" value="ONLY_PENDING"/><label for="commentsQuery_bean_approvedStringONLY_PENDING">排队等候中</label>
<br/>
<input type="radio" name="bean.approvedString" id="commentsQuery_bean_approvedStringONLY_APPROVED" value="ONLY_APPROVED"/><label for="commentsQuery_bean_approvedStringONLY_APPROVED">已批准的</label>
<br/>
<input type="radio" name="bean.approvedString" id="commentsQuery_bean_approvedStringONLY_DISAPPROVED" value="ONLY_DISAPPROVED"/><label for="commentsQuery_bean_approvedStringONLY_DISAPPROVED">未批准的</label>
<br/>

        </div>
    </div>
    <br />

    <div class="sideformrow">
        <label for="spamString" class="sideformrow">
            垃圾评论状态
            <br />
            <br />
            <br />
            <br />
        </label>
        <div>
            <input type="radio" name="bean.spamString" id="commentsQuery_bean_spamStringALL" checked="checked" value="ALL"/><label for="commentsQuery_bean_spamStringALL">所有</label>
<br/>
<input type="radio" name="bean.spamString" id="commentsQuery_bean_spamStringNO_SPAM" value="NO_SPAM"/><label for="commentsQuery_bean_spamStringNO_SPAM">没有垃圾评论</label>
<br/>
<input type="radio" name="bean.spamString" id="commentsQuery_bean_spamStringONLY_SPAM" value="ONLY_SPAM"/><label for="commentsQuery_bean_spamStringONLY_SPAM">垃圾评论</label>
<br/>

        </div>
    </div>
    <br />

    <input type="submit" id="commentsQuery_commentManagement_query" name="commentManagement.query" value="查询"/>


</form>





<br />
<br />
</div> <!-- sidebarInner -->

        </div>
    </div>
</div>