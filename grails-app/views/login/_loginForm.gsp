<h1>欢迎来到Groller</h1>
<g:if test="${params.error}">
<div id="errors" class="errors">
    <ul>
        <li>用户名或者密码错误</li>
    </ul>
</div>
</g:if>
<p>请键入您的用户名和密码来登录。</p>
<form method="post" id="loginForm" action="${request.contextPath}/j_security_check"
      onsubmit="saveUsername(this)">
    <table>
        <tr>
            <th>用户名:</th>
            <td>
                <input type="text" name="j_username" id="j_username" size="25" />
            </td>
        </tr>

        <tr>
            <th>密码:</th>
            <td>
                <input type="password" name="j_password" id="j_password" size="25" />
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <input type="checkbox" name="rememberMe" id="rememberMe" />
                <label for="rememberMe">
                    记住我
                </label>
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <input type="submit" name="login" id="login" value="登录" />
                <input type="reset" name="reset" id="reset" value="重置"
                    onclick="$('j_username').focus()" />
            </td>
        </tr>

    </table>

</form>

<script type="text/javascript">
<!--

if (document.getElementById) {
    if (getCookie("username") != null) {
        if (document.getElementById) {
            $("j_username").value = getCookie("username");
            $("j_password").focus();
        }
    } else {
        $("j_username").focus();
    }
}

function saveUsername(theForm) {
    var expires = new Date();
    expires.setTime(expires.getTime() + 24 * 30 * 60 * 60 * 1000); // sets it for approx 30 days.
    setCookie("username",theForm.j_username.value,expires);
}
//-->
</script>
