<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h1>
				$Title
  			</h1>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		
		<% if Locked %>
		<div class="alert alert-info">
			<strong>Mededeling:</strong> deze functie is tijdelijk uitgeschakeld voor debugging.
		</div>
		<% else %>
		
		<div class="page-header">
			<h2>
				Gesloten
  			</h2>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr class="error">
						<th>ID</th>
						<th>Titel</th>
						<th>Nr.</th>
						<th>Status</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<% loop getClosedIssues() %>
					<tr class="{}">
						<td>$GitHubID</td>
						<td>$Title</td>
						<td>$Number</td>
						<td>$State</td>
						<td>
							<a data-toggle="modal" href="#log-{$ID}" class="btn btn-primary btn-xs">Details</a>
							<a href="$HTML_URL" class="btn btn-default btn-xs">GitHub</a>
						</td>
					</tr>
					<div class="modal fade" id="log-{$ID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title">$Number - $GitHubID - $Title</h4>
								</div>
							<div class="modal-body">
								<p><strong>ID: </strong></p>
								<p><strong>Status: </strong> $State</p>
								<p><strong>Beschrijving: </strong> $Body</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Sluiten</button>
							</div>
							</div>
						</div>
					</div>
					<% end_loop %>
				</tbody>
			</table>
		</div>
		<% end_if %>
		
	</div>
</div>