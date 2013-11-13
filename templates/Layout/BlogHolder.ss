<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h1>$Title</h1>
  			<small><% include BreadCrumbs %></small>
		</div>
	</div>
	
	<div class="col-md-9" id="BlogContent">
		<% if SelectedTag %>
			<h3><% _t('BlogHolder_ss.VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
		<% else_if SelectedDate %>
			<h3><% _t('BlogHolder_ss.VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
		<% else_if SelectedAuthor %>
			<h3><% _t('BlogHolder_ss.VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h3>
		<% end_if %>
	
		<% if BlogEntries %>
			<% loop BlogEntries %>
				<% include BlogSummary %>
			<% end_loop %>
		<% else %>
			<div class="jumbotron">
				<h1>Woops...geen berichten.</h1>
				<p>Ingelogde team leden kunnen berichten toevoegen via het menu.</p>
			</div>
		<% end_if %>
	
		<% include BlogPagination %>
	
	</div>

	<div class="col-md-3">
		<div class="page-header">
			<h2>Acties</h2>
		</div>
		<% include BlogSideBar %>
		<div class="col-md-12">
			
		</div>
	</div>
</div>
