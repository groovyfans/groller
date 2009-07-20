<html>
    <head>
        <title>FrontPage: Welcome to Groller</title>
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
<p>使用这个表单注册一个新的Groller用户，每人只允许注册一个帐号。</p>


<form id="register" name="register" onsubmit="return true;" action="/roller/roller-ui/register!save.rol" method="post">

    <input type="hidden" name="bean.id" value="" id="register_bean_id"/>

    <input type="hidden" name="bean.enabled" value="" id="register_bean_enabled"/>


<table class="formtable">




<tr>
    <td class="label"><label for="userName" />用户名</label></td>
    <td class="field"><input type="text" name="bean.userName" size="30" maxlength="30" value="" id="register_bean_userName"/>
</td>
    <td class="description">使用一个简短的用户名作为用户的帐号。仅限于ASCII字符（a－z，A－Z和0－9），不能使用HTML。</td>
</tr>

<tr>
    <td class="label"><label for="passwordText" />密码</label></td>
    <td class="field">

       <input type="password" name="bean.passwordText" size="20" maxlength="20" id="register_bean_passwordText"/>

       <input type="hidden" name="bean.password" value="" id="register_bean_password"/>

   </td>
    <td class="description">您的密码。</td>
</tr>

<tr>
    <td class="label"><label for="passwordConfirm" />密码（确认）</label></td>

    <td class="field"><input type="password" name="bean.passwordConfirm" size="20" maxlength="20" id="register_bean_passwordConfirm"/>
</td>
    <td class="description">确认您的密码。</td>
</tr>


<tr>
    <td class="label"><label for="screenName" />Screen Name</label></td>
    <td class="field"><input type="text" name="bean.screenName" size="30" maxlength="30" value="" id="register_bean_screenName"/>
</td>
    <td class="description">Your desired screen name (with no HTML).</td>

</tr>

<tr>
    <td class="label"><label for="fullName" />全名</label></td>
    <td class="field"><input type="text" name="bean.fullName" size="30" maxlength="30" value="" id="register_bean_fullName"/>
</td>
    <td class="description">您的全名（不能使用HTML）。</td>
</tr>

<tr>
    <td class="label"><label for="emailAddress" />电子邮件</label></td>

    <td class="field"><input type="text" name="bean.emailAddress" size="40" maxlength="40" value="" id="register_bean_emailAddress"/>
</td>
    <td class="description">请键入有效电子邮件地址，如果通过该邮件不能联系到您，网站管理员将封掉该帐号。</td>
</tr>

<tr>
    <td class="label"><label for="locale" />本地化设置</label></td>
    <td class="field">
       <s:localeSelect name="locale" />

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

<input type="submit" id="register_userRegister_button_save" name="userRegister.button.save" value="注册用户"/>

<input type="button" value="取消" onclick="window.location='/roller/'" />

</form>



                </div>

            </div>

            <div id="rightcontent_wrap">
                <div id="rightcontent">
                </div>
            </div>
        </div>

    </body>
</html>