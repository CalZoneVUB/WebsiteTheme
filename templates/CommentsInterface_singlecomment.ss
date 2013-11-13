<div class="panel panel-info">
	<div class="panel-heading">
		<% if not isPreview %>
			<% if $ApproveLink || $SpamLink || $HamLink || $DeleteLink %>
				<div class="pull-right form-inline">
					<!-- Single button -->
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
							Action <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<% if ApproveLink %>
								<li><a href="$ApproveLink.ATT" class="approve"><% _t('CommentsInterface_singlecomment_ss.APPROVE', 'approve this comment') %></a></li>
							<% end_if %>
							<% if SpamLink %>
								<li><a href="$SpamLink.ATT" class="spam"><% _t('CommentsInterface_singlecomment_ss.ISSPAM','this comment is spam') %></a></li>
							<% end_if %>
							<% if HamLink %>
								<li><a href="$HamLink.ATT" class="ham"><% _t('CommentsInterface_singlecomment_ss.ISNTSPAM','this comment is not spam') %></a></li>
							<% end_if %>
							<% if DeleteLink %>
								<li class="last"><a href="$DeleteLink.ATT" class="delete"><% _t('CommentsInterface_singlecomment_ss.REMCOM','remove this comment') %></a></li>
							<% end_if %>
						</ul>
					</div>
				</div>
			<% end_if %>
			<h5>
				<% if $URL %>
					<% _t('CommentsInterface_singlecomment_ss.PBY','Posted by') %> <a href="$URL.URL" rel="nofollow">$AuthorName.XML</a>, $Created.Nice ($Created.Ago)
				<% else %>
					<% _t('CommentsInterface_singlecomment_ss.PBY','Posted by') %> $AuthorName.XML, $Created.Nice ($Created.Ago)
				<% end_if %>
			</h5>
		<% end_if %>
	</div>
	<div class="panel-body">
			$EscapedComment
	</div>
</div>
