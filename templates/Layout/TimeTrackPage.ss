<div class="row">
	<div class="col-md-12">
		<% if Locked %>
		<div class="page-header">
			<h1>
				Time Tracking
				<% if SiteAdmin %>
				<!-- Button trigger modal -->
  				<a data-toggle="modal" href="#addNewTimeLog" class="btn btn-primary">+ Nieuw</a>
  				<% end_if %>
  			</h1>
		</div>
		<% else %>
		<div class="page-header">
			<h1>
				Time Tracking
				<!-- Button trigger modal -->
  				<a data-toggle="modal" href="#addNewTimeLog" class="btn btn-primary">+ Nieuw</a>
  			</h1>
		</div>
		<% end_if %>
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		<!-- Modal -->
		<div class="modal fade" id="addNewTimeLog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">Nieuwe log</h4>
					</div>
					<div id="addNewTimeLogMessage"></div>
					<div class="modal-body">
						<form role="form">
						  <div class="form-group">
							<label for="NewTimeLogDescription">Beschrijving</label>
							<textarea id="NewTimeLogDescription" class="form-control" rows="3"></textarea>
						  </div>
						  <% if AllActivities %>
						  <div class="form-group">
						  	<select id="NewTimeLogActivity" class="form-control">
						  		<option value="default">(selecteer één activiteit)</option>
						  		<% loop AllActivities %>
								<option value="$Title">$Title</option>
								<% end_loop %>
							</select>
						  </div>
						  <% end_if %>
						  <div class="form-group">
							<label>Van</label><br>
							<div class="col-lg-6">
								<input type="text" class="form-control span2" value="$now.date" id="NewTimeLogDateFrom">
							</div>
							<div class="col-lg-4">
								<input type="text" class="form-control" value="$now.time24" id="NewTimeLogTimeFrom">
							</div>
							<br>
						  </div>
						  <div class="form-group">
						  <label>Tot</label><br>
							<div class="col-lg-6">
								<input type="text" class="form-control span2" value="$now.date" id="NewTimeLogDateTo">
							</div>
							<div class="col-lg-4">
								<input type="text" class="form-control" value="$now.time24" id="NewTimeLogTimeTo">
							</div>
							<br><br>
						  </div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Sluiten</button>
						<button id="doAddTimeLog" type="button" class="btn btn-primary" data-loading-text="Bezig...">Toevoegen</button>
					</div>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		
		<% if Locked %>
		<div class="alert alert-info">
			<strong>Mededeling:</strong> deze functie is tijdelijk uitgeschakeld voor debugging.
		</div>
		<% else %>
		<div class="table-responsive">
			<table class="table table-bordered table-hover">
				<thead>
					<tr>
						<th>Wie?</th>
						<th>Activiteit</th>
						<th>Van</th>
						<th>Tot</th>
						<th>Duur</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<% loop AllTimeLogs() %>
					<tr>
						<td>$Member.FirstName</td>
						<td><% loop Activities %>$Title<% end_loop %></td>
						<td>$From.Date $From.Time24</td>
						<td>$To.Date $To.Time24</td>
						<td>$Duration</td>
						<td>
							<a data-toggle="modal" href="#log-{$ID}" class="btn btn-primary btn-xs">Details</a>
						</td>
					</tr>
					<div class="modal fade" id="log-{$ID}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
									<h4 class="modal-title">$Title</h4>
								</div>
							<div class="modal-body">
								<p><strong>Door:</strong> $Member.FirstName $Member.Surname</p>
								<p><strong>Van:</strong> $From.Date $From.Time24</p>
								<p><strong>Tot:</strong> $To.Date $To.Time24</p>
								<p><strong>Tijdsduur:</strong> $Duration</p>
								<p><strong>Activiteit:</strong> <% loop Activities %><button class="btn btn-default">$Title</button> <% end_loop %></p>
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
