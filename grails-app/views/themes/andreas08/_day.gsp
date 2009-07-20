<% map.each { day, entries -> %>
<div class="day">

<div class="entry">
    <a href="">
        <img class="daypermalink"
            src="${resource(dir:'/themes/andreas08/images',file:'calendar.png')}"
            title=""
            alt="" /></a>
        <g:formatDate format="EEE, MMM d yyyy" date="${day}"/>
</div>

<g:each var="entry" in="${entries}">
<p>
    <a name=""></a>
    <span class="entryTitle">
        <g:link controller="blog" action="showByUrl" params="[blog:blog.handle,url:entry?.url]">${entry.title}</g:link>
			<blog:isEditor blog="${blog}">
            [<g:link controller="entry" action="edit" params="[weblog:blog.handle,id:entry.id]">Edit</g:link>]
			</blog:isEditor>
    </span>

        ${entry.content}

   <span class="info">
        <g:set var="entryurl"><g:createLink controller="blog" action="showByUrl" params="[blog:blog.handle,url:entry?.url]"/></g:set>
            <blog:isEditor blog="${blog}">
			[<g:link controller="entry" action="edit" params="[weblog:blog.handle,id:entry.id]">Edit</g:link>]
			</blog:isEditor>
        Posted by ${entry?.user?.screenName} in <span class="category">${entry?.category?.name}</span>
        <span class="dateStamp">at <g:link controller="blog" action="showByUrl" params="[blog:blog.handle,url:entry?.url]"><g:formatDate format="yyyy-MM-dd HH:mm:ss" date="${entry?.publishDate}"/></g:link></span>

            <a href="${entryurl}#comments" class="commentsLink">Comments[0]</a>

    </span>

</p>
</g:each>
</div>

<% } %>