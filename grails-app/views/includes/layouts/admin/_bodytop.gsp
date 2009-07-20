<%@page import="com.rainboyan.groller.util.RequestUtils"%>
<div id="banner">
    <div class="bannerStatusBox">
        <table class="bannerStatusBox" cellpadding="0" cellspacing="0">
            <tr>
                <td class="bannerLeft">
                    <g:isLoggedIn>
                    您登录为 <a href="${createLink(controller:'user',action:'profile')}"><g:loggedInUserInfo field="username"/></a>
                    </g:isLoggedIn>
					<g:if test="${params.weblog}">
						- 编辑网志 <a href="${createLink(controller:'blog', action:'show', params:[blog:params.weblog])}"><strong>${params.weblog}</strong></a>
					</g:if>
                </td>
                <td class="bannerRight">
                    <a href="${request.contextPath}">Front Page</a> | 
                    <a href="${createLink(controller:'admin')}">主菜单</a> | 
                    <g:isLoggedIn><a href="${createLink(controller:'logout')}">退出</a></g:isLoggedIn>
                    <g:isNotLoggedIn><a href="${createLink(controller:'login')}">登录</a> | <a href="${createLink(controller:'register')}">注册新用户</a></g:isNotLoggedIn>
                </td>
            </tr>
        </table>
    </div>
</div>

