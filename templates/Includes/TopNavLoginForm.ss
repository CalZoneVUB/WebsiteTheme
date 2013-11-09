<% if CurrentMember %>
	<% with CurrentMember %>
	<p class="navbar-text navbar-right">Ingelogd als $FirstName $Surname</p>
	<% end_with %>
<% else %>
<form $FormAttributes class="navbar-form navbar-right">


    <div class="form-group">
		<input type="email" name="$Fields.dataFieldByName(Email).name" id="$Fields.dataFieldByName(Email).ID" value="$Fields.dataFieldByName(Email).VALUE" class="form-control" placeholder="$Fields.dataFieldByName(Email).Title">
    </div>
	
	<div class="form-group">
		<input type="password" name="$Fields.dataFieldByName(Password).name" id="$Fields.dataFieldByName(Password).ID" value="$Fields.dataFieldByName(Password).VALUE" class="form-control" placeholder="$Fields.dataFieldByName(Password).Title">
	</div>
	
	$Fields.HiddenFields()

	<button id="TopNavLoginForm_TopLoginForm__action_login"  type="submit" class="btn btn-primary btn-success" name="action_login" value="Log in" data-loading-text="Bezig...">Inloggen</button>
</form>
<% end_if %>