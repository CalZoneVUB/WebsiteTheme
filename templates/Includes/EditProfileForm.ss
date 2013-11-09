<form $FormAttributes role="form">
	<% if $Message %>
		<div id="{$FormName}_error" class="alert alert-info $MessageType">
			<strong>Info:</strong> $Message
		</div>
	<% else %>
		<div id="{$FormName}_error" class="alert alert-info $MessageType" style="display: none">
			<strong>Info:</strong> $Message
		</div>
	<% end_if %>
	<div class="row">
		<div class="col-md-12">
			<div class="page-header">
				<h3>Persoonlijk</h3>
			</div>
			<div class="input-group">
				<span class="input-group-addon">Voornaam&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<input type="text" name="$Fields.dataFieldByName(FirstName).name" id="$Fields.dataFieldByName(FirstName).ID" value="$Fields.dataFieldByName(FirstName).VALUE" class="form-control" placeholder="$Fields.dataFieldByName(FirstName).Title">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon">Achternaam&nbsp;</span>
				<input type="text" name="$Fields.dataFieldByName(Surname).name" id="$Fields.dataFieldByName(Surname).ID" value="$Fields.dataFieldByName(Surname).VALUE" class="form-control" placeholder="$Fields.dataFieldByName(Surname).Title">
			</div>

			<div class="page-header">
				<h3>Inloggen</h3>
			</div>
			<div class="input-group">
				<span class="input-group-addon">E-mail&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<input type="email" name="$Fields.dataFieldByName(Email).name" id="$Fields.dataFieldByName(Email).ID" value="$Fields.dataFieldByName(Email).VALUE" class="form-control" placeholder="$Fields.dataFieldByName(Email).Title">
			</div>
		</div>
	
		<div class="col-md-12">
			<div class="page-header">
				<h3>Contact</h3>
			</div>
			<div class="input-group">
				<span class="input-group-addon">GSM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<input type="text" name="$Fields.dataFieldByName(GSM).name" id="$Fields.dataFieldByName(GSM).ID" value="$Fields.dataFieldByName(GSM).VALUE" class="form-control" placeholder="+32 4XX XX XX XX">
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon">Skype&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<input type="text" name="$Fields.dataFieldByName(Skype).name" id="$Fields.dataFieldByName(Skype).ID" value="$Fields.dataFieldByName(Skype).VALUE" class="form-control" placeholder="skypenaam">
			</div>
		</div>

		<div class="col-md-12">
		<div class="page-header"></div>
			$Fields.HiddenFields()
			<div class="input-group">
				<button id="{$FormName}_action_SaveProfile" class="btn btn-lg btn-primary" type="submit" name="action_SaveProfile" value="Opslaan" >Profiel opslaan</button>
			</div>
		</div>
	</div>
</form>