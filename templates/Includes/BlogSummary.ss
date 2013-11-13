<div class="page-header">
	<h2 class="postTitle"><a href="$Link" title="<% _t('BlogSummary_ss.VIEWFULL', 'View full post titled -') %> '$Title'">$MenuTitle</a></h2>
</div>
<div class="panel panel-primary">
	<div class="panel-heading">
		<div class="pull-right form-inline">
			<div class="btn-group">
				<% if IsOwner %>
				<a href="$EditURL" title="<% _t('BlogEntry_ss.EDITTHIS', 'Edit this post') %>">
					<button class="btn btn-warning" type="button">Bewerk</button>
				</a>
				<a href="$Link(unpublishPost)" >
					<button class="btn btn-danger">Verwijder</button>
				</a>
				<% end_if %>
				<a href="$Link" title="Lees '$Title.XML'">
					<button class="btn btn-default" type="button">Volledig bericht</button>
				</a>
			</div>
		</div>
		<h4>$AuthorMember.Name ($Created.Date - $Created.Time24)</h4>
		<% if TagsCollection %>
			<small class="tags"> 
				<% loop TagsCollection %>
					<a href="$Link" title="<% _t('BlogEntry_ss.VIEWALLPOSTTAGGED', 'View all posts tagged') %> '$Tag'" rel="tag">
						<button class="btn btn-default btn-xs" type="button">$Tag</button>
					</a>
				<% end_loop %>
			</small>
		<% end_if %>
	</div>
	<div class="panel-body">
		<% if BlogHolder.ShowFullEntry %>
			$Content
		<% else %> 
			<p>$Content.FirstParagraph(html)</p>
		<% end_if %>
	</div>
</div>
