<% map.each { day, entries -> %>
<div class="dayBox">

    <div class="dayTitle">
       <g:formatDate format="EEE, MMM d yyyy" date="${day}"/>
    </div>

    <g:each var="entry" in="${entries}">
    <div class="entryBox">
        <a name="" id=""></a>
        <p class="entryTitle"><g:link controller="blog" action="showByUrl" params="[blog:blog.handle,url:entry?.url]">${entry.title}</g:link></p>
        <p class="entryContent">
            
            ${entry.content}

        </p>
        <p class="entryInfo">
            Posted at <a href=""><g:formatDate format="hh:mma MMM dd, yyyy" date="${day}"/></a>
            by ${entry.author.screenName} in <span class="category">${entry.category.name}</span> &nbsp;|&nbsp;
            
                <a href="#">Edit</a> &nbsp;|&nbsp;
            

                <a href="#" class="commentsLink">Comments[0]</a>

        </p>
        
    </div>
    </g:each>

</div>
<% } %>