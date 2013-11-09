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
				Onderverdeling
  			</h2>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr class="error">
						<th>ID</th>
						<th>Beschrijving</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>FR1</td>
						<td>Niet-aangemelde gebruiker</td>
					</tr>
					<tr>
						<td>FR2</td>
						<td>Aangemelde student</td>
					</tr>
					<tr>
						<td>FR3</td>
						<td>Aangemelde assistent</td>
					</tr>
					<tr>
						<td>FR4</td>
						<td>Aangemelde professor</td>
					</tr>
					<tr>
						<td>FR5</td>
						<td>Aangemelde programmabeheerder</td>
					</tr>
					<tr>
						<td>FR6</td>
						<td>Scheduler</td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="page-header">
			<h2>
				Requirements
  			</h2>
		</div>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr class="error">
						<th>ID</th>
						<th>Titel</th>
						<th>Prioriteit</th>
						<th>Status</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<% loop AllRequirements() %>
					<tr class="{$CustomClass}">
						<td>$ReqID</td>
						<td>$Title</td>
						<td>$FormattedPriority</td>
						<td>$FormattedStatus</td>
						<td>
							<a data-toggle="modal" href="#log-{$ID}" class="btn btn-primary btn-xs">Details</a>
						</td>
					</tr>
					<div class="modal fade" id="log-{$ID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title">$CategoryForID</h4>
								</div>
							<div class="modal-body">
								<p><strong>ID: </strong>$ReqID</p>
								<p><strong>Title: </strong> $Title</p>
								<p><strong>Prioriteit: </strong> $FormattedPriority</p>
								<p><strong>Status: </strong> $FormattedStatus</p>
								<p><strong>Prerequisities: </strong> $Prerequisities</p>
								<p><strong>Beschrijving:</strong> $Description</p>
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