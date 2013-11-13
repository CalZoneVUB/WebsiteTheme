<% if BlogEntries.MoreThanOnePage %>
<div class="btn-group">
	<% if BlogEntries.NotFirstPage %>
		<a class="paginate-left" href="$BlogEntries.PrevLink" title="View the previous page"><button type="button" class="btn btn-default">&lt;</button></a>
	<% else %>
		<a class="paginate-left"><button type="button" class="btn btn-default disabled">&lt;</button></a>
	<% end_if %>
	
	<% loop BlogEntries.PaginationSummary(4) %>
		<% if CurrentBool %>
			<a><button type="button" class="btn btn-default active disabled">$PageNum</button></a>
		<% else %>
			<% if Link %>
					<a class="<% if BeforeCurrent %>paginate-left<% else %>paginate-right<% end_if %>" href="$Link">
					<button type="button" class="btn btn-default">$PageNum</button>
					</a>
			<% else %>
				<a><button type="button" class="btn btn-default disabled">&hellip;</button></a>						
			<% end_if %>
		<% end_if %>
	<% end_loop %>
	
	<% if BlogEntries.NotLastPage %>
		<a class="next paginate-right" href="$BlogEntries.NextLink" title="View the next page"><button type="button" class="btn btn-default">&gt;</button></a>
	<% else %>
		<a class="paginate-left"><button type="button" class="btn btn-default disabled">&gt;</button></a>
	<% end_if %>
</div>
<% end_if %>