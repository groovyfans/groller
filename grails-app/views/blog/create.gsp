<%@page import="com.rainboyan.groller.util.RequestUtils"%>
<%@page import="com.rainboyan.groller.blog.Blog" %>
<html>
    <head>
        <meta name="layout" content="admin" />
        <title>Front Page: 建立网志</title>

        <style type="text/css">
            
#centercontent_wrap {
    width: 100%;
}
        </style>

    </head>
    <body>
       
        <div id="wrapper"> 
            <div id="leftcontent_wrap">
                <div id="leftcontent"> 
                </div>
            </div>

            
            <div id="centercontent_wrap">
                <div id="centercontent">   
                    <h1>建立网志</h1>
                    
        <g:render template="/includes/commons/message"/>

        <g:hasErrors bean="${blogInstance}">
            <div id="errors" class="errors">
                <g:renderErrors bean="${blogInstance}" as="list" />
            </div>
        </g:hasErrors>

<script type="text/javascript">
<!--
function previewImage(theme) {
    document.preview.src="/roller/roller-ui/authoring/previewtheme?theme="+theme;
}
function handlePreview(handle) {
    previewSpan = $("handlePreview");
    var n1 = previewSpan.childNodes[0];
    var n2 = document.createTextNode(handle.value);
    if (handle.value == null) {
	    previewSpan.appendChild(n2);
    } else {
	    previewSpan.replaceChild(n2, n1);
    }
}
-->
</script>

<p class="subtitle">您可以通过下面的表单为您或者您的朋友们建立一个新的网志</p>

<br /> 

			
<g:form action="save" method="post" >

<table class="formtable">

<tr>
    <td class="label"><label for="name" />网站名</label></td>
    <td class="field"><input type="text" name="name" size="30" maxlength="30" value="${fieldValue(bean: blogInstance, field: 'name')}" id="createWeblog_bean_name"/>
</td>
    <td class="description">这个名字是您的网志的标题，它会显示在您的网志的顶部，并且用于您的新闻种子中标题的位置。这个区域不支持HTML。</td>
</tr>

<tr>
    <td class="label"><label for="description" />描述</td>

    <td class="field"><input type="text" name="description" size="30" maxlength="30" value="${fieldValue(bean: blogInstance, field: 'description')}" id="createWeblog_bean_description"/>
</td>
    <td class="description">您对网志的描述将会在您的网志上部显示（取决于您选择的主题是否支持），而且还会在您的站点新闻种子中出现。这个区域不支持超文本语言（HTML）。</td>
</tr>

<tr>
    <td class="label"><label for="handle" />网志地址</label></td>
    <td class="field">
        <input type="text" name="handle" size="30" maxlength="30" value="${fieldValue(bean: blogInstance, field: 'handle')}" id="createWeblog_bean_handle" onkeyup="handlePreview(this)"/>
<br />

        <span style="text-size:70%">
            网志URL:&nbsp;
            <%= RequestUtils.getAbsoluteUrl(request)%>/<span id="handlePreview" style="color:red">handle</span>
        </span>
    </td>
    <td class="description">网志地址是一个对您的网志进行简短描述的词。它将会作为您的网志URL，所以请您在ASCII字符（a－z，A－Z和0－9）中选择而不要使用HTML。</td>
</tr>

<tr>
    <td class="label"><label for="email" />电子邮件地址</label></td>
    <td class="field"><input type="text" name="email" size="40" maxlength="50" value="" id="createWeblog_bean_emailAddress"/>
</td>
    <td class="description">您的电子邮件地址或者是对您将建立的网志负责人的电子邮件地址。</td>
</tr>

<tr>
    <td class="label"><label for="locale" />本地化设置</label></td>

    <td class="field">
        <gx:localeSelect name="locale" />
    </td>

    <td class="description">默认的本地化设置用于当浏览者没有指定区域设置而浏览您的网志时候使用。</td>
</tr>

<tr>
    <td class="label"><label for="timeZone" />时区</label></td>
    <td class="field">
        <gx:timeZoneSelect name="timeZone"/>
    </td>

    <td class="description">时区用来确定网志中的日志将以何种习惯显示。</td>
</tr>

<tr>
    <td class="label"><label for="theme" />主题</label></td>
    <td class="field">
        <select name="editorTheme" size="1" id="createWeblog_bean_theme" onchange="previewImage(this[selectedIndex].value)">

    <option value="andreas08">Andreas08</option>
    <option value="basic">Basic</option>

</select>

       <br />
       <br />

       <img name="preview" src='' />
       <!-- initialize preview image at page load -->
       <script type="text/javascript">           
           
       </script>
    </td>
    <td class="description">主题用来确定您的网志显示具体采用哪种方式显示。以后，您也可以方便的从一种主题转换为另一种主题，也可以使用定制功能来个性化。</td>
</tr>
</table>

<br />
   

<input type="submit" id="button_save" name="save" value="建立网志"/>

<input type="button" value="取消" onclick="window.location='${createLink(controller:action)}'" />
    
</g:form>


<script type="text/javascript">
    document.forms[0].elements[0].focus();
</script>
    
                </div>
            </div>
            
            <div id="rightcontent_wrap">

                <div id="rightcontent"> 
                </div>
            </div>
        </div>
        
    </body>
</html>
