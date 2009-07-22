<a name="comments"></a>
<div class="comments" id="comments">

	<div class="comments-head">评论:</div>

	<br/>
	<g:each var="comment" in="${comments}">
	<a name="comment-${comment.id}" id="comment-${comment.id}"></a>
	<div class="comment odd" id="comment${comment.id}">

		${comment.content}

		<p class="comment-details">
		发表于
		<a rel="nofollow" href="${comment?.url}"><b>comment?.name</b></a>
		
		在 ${comment.createDate}

		<a href=""
		   class="entrypermalink" title="评论的永久链接">#</a>
		</p>
	</div>
	</g:each>

</div>