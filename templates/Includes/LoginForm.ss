<% if CurrentMember %>
	<form $FormAttributes>
		<% if $Message %>
			<div id="{$FormName}_error" class="alert alert-info $MessageType">
				<strong>Info:</strong> $Message
			</div>
		<% else %>
			<div id="{$FormName}_error" class="alert alert-info $MessageType" style="display: none">
				<strong>Info:</strong> $Message
			</div>
		<% end_if %>
		$Fields.HiddenFields()
		<div class="login-submit">
			<button type="submit" name="action_logout" value="Als iemand anders inloggen" class="btn btn-lg btn-primary" id="MemberLoginForm_LoginForm_action_logout">Uitloggen</button>
		</div>
	</form>
<% else %>
<form $FormAttributes class="form-signin">
   <% if $Message %>
   		<div id="{$FormName}_error" class="alert alert-danger $MessageType">
			<strong>Oh snap!</strong> $Message
		</div>
	<% else %>
		<div id="{$FormName}_error" class="alert alert-danger $MessageType" style="display: none">
			<strong>Oh snap!</strong> $Message
		</div>
	<% end_if %>

    <div class="input-group">
		<span class="input-group-addon">@</span>
		<input type="email" name="$Fields.dataFieldByName(Email).name" id="$Fields.dataFieldByName(Email).ID" value="$Fields.dataFieldByName(Email).VALUE" class="form-control" placeholder="$Fields.dataFieldByName(Email).Title" autofocus>
	</div>
	<br>
	
	<div class="input-group">
		<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
		<input type="password" name="$Fields.dataFieldByName(Password).name" id="$Fields.dataFieldByName(Password).ID" value="$Fields.dataFieldByName(Password).VALUE" class="form-control" placeholder="$Fields.dataFieldByName(Password).Title">
	</div>
	<br>
	
	$Fields.HiddenFields()

	<div class="input-group">
		<button id="MemberLoginForm_LoginForm_action_dologin" class="btn btn-lg btn-primary" data-loading-text="Bezig..." name="action_dologin" value="Log in" >Inloggen</button>
	</div>
</form>
<% end_if %>