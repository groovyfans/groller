<div class="comments-form">
    <div class="comments-head">发表一条评论：</div>
    <a name="comment-form"></a>

    <g:form method="post" controller="comment" action="save" focus="name"
        name="commentForm" onsubmit="fixURL(this); return validateComments(this)">
		<g:hiddenField name="entryUrl" value="${params.url}"/>
        <ul>
            <li>
                <label class="desc">姓名：</label>
                <input type="text" name="name" class="text large" value="" size="50" maxlength="255" />
            </li>

            <li><label class="desc">电子邮件地址：</label>

                <input type="text" name="email" class="text large" value="" size="50" maxlength="255" />
            </li>

            <li><label class="desc">URL：</label>
                <input type="text" name="url" class="text large" value="" size="50" maxlength="255" />
            </li>

            <li>
                <input type="checkbox" class="checkbox" id="rememberInfo" name="rememberInfo" />

                <label for="rememberInfo" class="choice">记下您的信息？</label>
            </li>
            <li>
                <label class="desc">您的评论：</label>

            <textarea name="content" class="textarea large" cols="40" rows="10"></textarea>

            </li>
			
            <li>
               <input type="button" class="button" name="post" value="&nbsp;Preview&nbsp;"
                  onclick="this.form.method.value='preview';this.form.submit()" />
               <input type="submit" class="button" name="post" value="&nbsp;发表&nbsp;" />
            </li>
        </ul>

    </g:form>

    <script type="text/javascript" src="${resource(dir:'theme/scripts',file:'roller.js')}"></script>

    <script type="text/javascript">

    var author = getCookie("commentAuthor");
    var email = getCookie("commentEmail");
    var url = getCookie("commentUrl");
    // check each field - IE will render "null"
    if (author) {
        document.forms['commentForm'].name.value = author;
    }
    if (email) {
        document.forms['commentForm'].email.value = email;
    }
    if (url) {
        document.forms['commentForm'].url.value = url;
    }

    if (author || email || url) {
        document.forms['commentForm'].rememberInfo.checked = true;
    }

    function fixURL(theForm) {
        if (theForm.url.value != "" &&
            theForm.url.value.indexOf("http://") == -1) { //prepend http://
            theForm.url.value = "http://"+theForm.url.value;
        }
        saveUserInformation(theForm);
    }

    function saveUserInformation(theForm) {
        if (theForm.rememberInfo.checked) {
            rememberUser(theForm);
        } else {
            forgetUser(theForm);
        }
    }

    function validateComments(theForm) {
        if (theForm.content.value == "") {
            alert("请写一条评论。");
            theForm.content.focus();
            return false;
        }
    }
    </script>


    </div>

