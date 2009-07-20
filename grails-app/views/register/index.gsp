<html>
    <head>
        <title>FrontPage: Welcome to Scorpio</title>
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
                    <h1>新用户注册</h1>

        <g:render template="/includes/commons/message"/>

        <g:hasErrors bean="${user}">
            <div id="errors" class="errors">
                <g:renderErrors bean="${user}" as="list" />
            </div>
        </g:hasErrors>

<p>使用这个表单注册一个新的Groller用户，每人只允许注册一个帐号。</p>


<g:form name="register" action="save" method="post">

    <table class="formtable">

        <tr>
            <td class="label"><label for="username" />用户名</label></td>
            <td class="field"><input type="text" name="username" size="30" maxlength="30" value="${fieldValue(bean:user,field:'username')}" id="register_bean_userName"/>
        </td>
            <td class="description">使用一个简短的用户名作为用户的帐号。仅限于ASCII字符（a－z，A－Z和0－9），不能使用HTML。</td>
        </tr>

        <tr>
            <td class="label"><label for="password" />密码</label></td>
            <td class="field">

               <input type="password" name="password" size="20" maxlength="20" id="register_bean_password"/>

           </td>
            <td class="description">您的密码。</td>
        </tr>

        <tr>
            <td class="label"><label for="passwordConfirm" />密码（确认）</label></td>

            <td class="field"><input type="password" name="passwordConfirm" size="20" maxlength="20" id="register_bean_passwordConfirm"/>
        </td>
            <td class="description">确认您的密码。</td>
        </tr>


        <tr>
            <td class="label"><label for="screenName" />Screen Name</label></td>
            <td class="field"><input type="text" name="screenName" size="30" maxlength="30" value="${fieldValue(bean:user,field:'screenName')}" id="register_bean_screenName"/>
        </td>
            <td class="description">Your desired screen name (with no HTML).</td>

        </tr>

        <tr>
            <td class="label"><label for="fullName" />全名</label></td>
            <td class="field"><input type="text" name="fullName" size="30" maxlength="30" value="${fieldValue(bean:user,field:'fullName')}" id="register_bean_fullName"/>
        </td>
            <td class="description">您的全名（不能使用HTML）。</td>
        </tr>

        <tr>
            <td class="label"><label for="email" />电子邮件</label></td>

            <td class="field"><input type="text" name="email" size="40" maxlength="40" value="${fieldValue(bean:user,field:'email')}" id="register_bean_emailAddress"/>
        </td>
            <td class="description">请键入有效电子邮件地址，如果通过该邮件不能联系到您，网站管理员将封掉该帐号。</td>
        </tr>

        <tr>
            <td class="label"><label for="locale" />本地化设置</label></td>
            <td class="field">
               <gx:localeSelect name="locale" value=""/>
            </td>
            <td class="description">您的预置本地化设置。</td>
        </tr>

        <tr>
            <td class="label"><label for="timeZone" />时区</label></td>
            <td class="field">
               <gx:timeZoneSelect name="timeZone"/>
            </td>
            <td class="description">您的时区。</td>

        </tr>

    </table>

    <br />

    <g:submitButton name="save" value="注册用户"/>

    <input type="button" name="cancel" value="取消" onclick="window.location='${request.contextPath}'" />

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