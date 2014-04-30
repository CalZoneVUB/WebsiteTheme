<div class="row">
	<div class="col-md-12">
		<article>
			<div class="page-header">
				<h1>$Title</h1>
			</div>
			<div class="content">$Content</div>
		</article>
	</div>
</div>

<div class="row">
	<% loop TeamMembers %>
		<% if $MultipleOf(5) %>
		</div>
		<div class="row">
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<% if Avatar %>
						$Avatar.CroppedImage(300,200)
					<% end_if %>
					<div class="caption">
						<h4>$FirstName $Surname</h4>
						<br>
						<% if Email %><p><a href="mailto:{$Email}">$Email</a></p><% end_if %>
						<% if GSM %><p>$GSM</p><% end_if %>
						<% if Skype %><p>Skype: $Skype</p><% end_if %>
						<br>
						<p><a href="./details/select/{$ID}/" class="btn btn-primary">Details</a> <% if $Up.CurrentMember.ID == $ID %><a href="$Up.getEditProfilePage.Link" class="btn btn-default">Bewerk</a><% end_if %></p>
					</div>
				</div>
				<br>
			</div>
		<% else %>
			<div class="col-sm-6 col-md-3">
				<div class="thumbnail">
					<% if Avatar %>
						$Avatar.CroppedImage(300,200)
					<% end_if %>
					<div class="caption">
						<h4>$FirstName $Surname</h4>
						<br>
						<% if Email %><p><a href="mailto:{$Email}">$Email</a></p><% end_if %>
						<% if GSM %><p>$GSM</p><% end_if %>
						<% if Skype %><p>Skype: $Skype</p><% end_if %>
						<br>
						<p><a href="./details/select/{$ID}/" class="btn btn-primary">Details</a> <% if $Up.CurrentMember.ID == $ID %><a href="$Up.getEditProfilePage.Link" class="btn btn-default">Bewerk</a><% end_if %></p>
					</div>
				</div>
				<br>
			</div>
		<% end_if %>
    <% end_loop %>
</div>