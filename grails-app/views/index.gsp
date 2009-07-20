<%@ page import="com.rainboyan.groller.blog.User" %>
<%@ page import="com.rainboyan.groller.blog.Blog" %>
<%@ page import="com.rainboyan.groller.blog.Entry" %>
<html>
    <head>
        <title>Welcome to Groller</title>
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
                    <h1>Welcome to Groller!</h1>

Follow these steps to finalize your Groller installation:<br /><br />
<div style="width:75%">
    <ul>



        <li><b>Create a user
                 -
                    DONE: this site has <%= User.count()%> user(s)

            </b><br /><br />
            Before you can start to use Scorpio, you need to create a user so you can login, manage Scorpio and start blogging. Note that the first user you create will be given the <i>Global Admin</i> rights necessary to manage Scorpio, manage Scorpio users and designate other Global Admins.<br /><br />

            Create your first user via the
            <a href="${createLink(controller:'register')}">
                New User Registration Page
            </a>
            <br /><br /><br />
        </li>


        <li><b>Create a weblog
                 -
                    DONE: this site has <%= Blog.count()%> weblog(s)

            </b><br /><br />
            Before you can start blogging, you need to create at least one weblog. Just so you know, you can create as many as you want. Each Scorpio user can have multiple weblogs and each Scorpio weblog can have multiple authors.<br /><br />
            Create your first weblog via the
            <a href="${createLink(controller:'blog', action:'create')}">
                New Weblog Creation Page
            </a>
            <br /><br /><br />
        </li>


        <li><b>Designate a frontpage weblog</b><br />
            <br />
            You must specify a weblog to serve as the frontpage of your Scorpio site. You can do this by going to the <b>Server Admin->Configuration</b> page. In the field labelled "Handle of the weblog to server as the frontpage" enter the handle of the weblog you want to front your site. Once you're done you won't see this irritating page any longer.<br />

            <br />
            Designate a frontpage weblog on the
            <a href="">
                Server Admin Page
            </a>
        </li>

    </ul>
</div>

                </div>
            </div>


            <div id="rightcontent_wrap">
                <div id="rightcontent">
                </div>
            </div>
        </div>
    </body>
</html>