<html>
    <head>
        <title>Front Page: 您的个人资料</title>
		<meta name="layout" content="admin" />
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
                    <h1>您的个人资料</h1>
        
        <g:render template="/includes/commons/message"/>

        <g:hasErrors bean="${userProfile}">
            <div id="errors" class="errors">
                <g:renderErrors bean="${userProfile}" as="list" />
            </div>
        </g:hasErrors>

<p class="subtitle">更改您的密码、默认本地化设置、时区和其他设置。</p>

			
<g:form name="profile" action="profile" method="post">
    <g:hiddenField name="id" value="${userProfile?.id}" />
    <g:hiddenField name="version" value="${userProfile?.version}" />
    
    <table class="formtable">
        
        <tr>
            <td class="label"><label for="username" />用户名</label></td>
            <td class="field"><input type="text" name="username" size="30" maxlength="30" value="${fieldValue(bean:userProfile,field:'username')}" readonly="readonly" id="profile_username" style="background: #e5e5e5"/>
            </td>
            <td class="description">您不能够更改您的用户名</td>
        </tr>
        
        <tr>
            <td class="label"><label for="password" />密码</label></td>
            <td class="field">

                <input type="password" name="password" size="20" maxlength="20" id="profile_password"/>

            </td>
            <td class="description">您的密码。</td>
        </tr>
        
        <tr>
            <td class="label"><label for="passwordConfirm" />密码（确认）</label></td>
            <td class="field"><input type="password" name="passwordConfirm" size="20" maxlength="20" id="profile_passwordConfirm"/>
            </td>
            <td class="description">确认您的密码。</td>
        </tr>
        
        <tr>
            <td class="label"><label for="screenName" />Screen Name</label></td>
            <td class="field"><input type="text" name="screenName" size="30" maxlength="30" value="${fieldValue(bean:userProfile,field:'screenName')}" id="profile_screenName"/>
            </td>
            <td class="description">Your desired screen name (with no HTML).</td>

        </tr>
        
        <tr>
            <td class="label"><label for="fullName" />全名</label></td>
            <td class="field"><input type="text" name="fullName" size="30" maxlength="30" value="${fieldValue(bean:userProfile,field:'fullName')}" id="profile_fullName"/>
            </td>
            <td class="description">您的全名（不能使用HTML）。</td>
        </tr>
        
        <tr>

            <td class="label"><label for="email" />电子邮件</label></td>
            <td class="field"><input type="text" name="email" size="40" maxlength="40" value="${fieldValue(bean:userProfile,field:'email')}" id="profile_email"/>
            </td>
            <td class="description">请键入有效电子邮件地址，如果通过该邮件不能联系到您，网站管理员将封掉该帐号。</td>
        </tr>
            <td class="label"><label for="locale" />本地化设置</label></td>
            <td class="field">
               <s:localeSelect name="locale" value=""/>
            </td>
            <td class="description">您的预置本地化设置。</td>
        </tr>

        <tr>
            <td class="label"><label for="timeZone" />时区</label></td>
            <td class="field">
               <s:timeZoneSelect name="timeZone"/>
            </td>
            <td class="description">您的时区。</td>

        </tr>

    </table>

    <br />

    <input type="submit" name="update" value="保存个人资料"/>

    <input type="button" name="cancel" value="取消" onclick="window.location='${createLink(controller:'action')}'" />

</g:form>


                </div>

            </div>

            <div id="rightcontent_wrap">
                <div id="rightcontent">
                </div>
            </div>
        </div>

    </body>
</html>