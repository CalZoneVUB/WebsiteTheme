<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h1>$Title</h1>
  			<small><% include BreadCrumbs %></small>
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
				$Content
			</div>
		</div>
		    <div id="disqus_thread"></div>
			<script type="text/javascript">
				/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
				var disqus_shortname = 'calzone'; // required: replace example with your forum shortname

				/* * * DON'T EDIT BELOW THIS LINE * * */
				(function() {
					var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
					dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
					(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
				})();
			</script>
			<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

	</div>
</div>
