<% if CommentsEnabled %>
	<div class="col-md-12" id="$CommentHolderID">
		<div class="col-md-12">
			<div class="page-header">
				<h4><% _t('CommentsInterface_ss.COMMENTS','Comments') %></h4>
			</div>
			
			<div>
				<% if Comments %>
					<% loop Comments %>
							<% include CommentsInterface_singlecomment %>
					<% end_loop %>
				<% end_if %>
				<p class="no-comments-yet"<% if $Comments.Count %> style='display: none' <% end_if %> ><% _t('CommentsInterface_ss.NOCOMMENTSYET','No one has commented on this page yet.') %></p>
			</div>
		</div>
		
		<div class="col-md-12">
			<div class="page-header">
				<h4><% _t('CommentsInterface_ss.POSTCOM','Post your comment') %></h4>
			</div>
	
			<% if AddCommentForm %>
				<% if CanPost %>
					<% if ModeratedSubmitted %>
						<p id="$CommentHolderID_PostCommentForm_error" class="message good"><% _t('CommentsInterface_ss.AWAITINGMODERATION', 'Your comment has been submitted and is now awaiting moderation.') %></p>
					<% end_if %>
					$AddCommentForm
				<% else %>
					<p><% _t('CommentsInterface_ss.COMMENTLOGINERROR', 'You cannot post comments until you have logged in') %><% if PostingRequiresPermission %>,<% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and that you have an appropriate permission level') %><% end_if %>. 
						<a href="Security/login?BackURL={$Parent.Link}" title="<% _t('CommentsInterface_ss.LOGINTOPOSTCOMMENT', 'Login to post a comment') %>"><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
					</p>
				<% end_if %>
			<% else %>
				<p><% _t('CommentsInterface_ss.COMMENTSDISABLED', 'Posting comments has been disabled') %>.</p>	
			<% end_if %>
		</div>
	
		<div class="col-md-12">
		<% if DeleteAllLink %>
			<p class="delete-comments">
				<a href="$DeleteAllLink"><% _t('CommentsInterface_ss.PageCommentInterface.DELETEALLCOMMENTS','Delete all comments on this page') %></a>
			</p>
		<% end_if %>

		<p class="commenting-rss-feed">
			<a href="$RssLinkPage"><% _t('CommentsInterface_ss.RSSFEEDCOMMENTS', 'RSS feed for comments on this page') %></a> | 
			<a href="$RssLink"><% _t('CommentsInterface_ss.RSSFEEDALLCOMMENTS', 'RSS feed for all comments') %></a>
		</p>
		</div>
	</div>
<% end_if %>
	
