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
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h2>
						Opgeleverd
					</h2>
				</div>
			</div>
			<% loop Deliverables %>
			<div class="col-sm-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">$Title</h3>
					</div>
					<div class="panel-body">
							<p><strong> Deadline: </strong> $Deadline.Date - $Deadline.Time24</p>
							<% if $Description %><p><strong> Beschrijving: </strong> $Description</p><% end_if %>
							<% if $Version %><p><strong> Versie: </strong> $Version</p><br><% end_if %>
						<% with $Document %>
							<a href="{$URL}" class="btn btn-primary">Download</a>
						<% end_with %>
					</div>
				</div>
			</div><!-- /.col-sm-4 -->
			<% end_loop %>
		</div>
		<% end_if %>
		
	</div>
</div>

<div class="row">
	<div class="col-md-12">
		
		<% if Locked %>
		<div class="alert alert-info">
			<strong>Mededeling:</strong> deze functie is tijdelijk uitgeschakeld voor debugging.
		</div>
		<% else %>
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h2>
						Verslagen
					</h2>
				</div>
			</div>
			<% loop MeetingDocs %>
			<div class="col-sm-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">$Title</h3>
					</div>
					<div class="panel-body">
						<p><strong> Beschrijving: </strong> Vergaderingsnotulen</p>
						<a href="{$URL}" class="btn btn-primary">Download</a>
					</div>
				</div>
			</div><!-- /.col-sm-4 -->
			<% end_loop %>
		</div>
		<% end_if %>
		
	</div>
</div>