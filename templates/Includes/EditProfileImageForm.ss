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
				<h3>Avatar</h3>
			</div>
			<div class="input-group">
			<% with CurrentUser %>
				$Avatar.CroppedImage(250,250)
			<% end_with %>
			</div>
			<br>
			<div class="input-group">
				<span class="input-group-addon">Avatar&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<input id="$Fields.dataFieldByName(Avatar).id" name="{$Fields.dataFieldByName(Avatar).Name}[Uploads][]" class="$Fields.dataFieldByName(Avatar).extraClass ss-uploadfield-fromcomputer-fileinput form-control" data-config="$Fields.dataFieldByName(Avatar).configString" type="file"/>
			</div>
		</div>
		<div class="col-md-12">
		<div class="page-header"></div>
			$Fields.HiddenFields()
			<div class="input-group">
				<button id="{$FormName}_action_SaveProfile" class="btn btn-lg btn-primary" type="submit" name="action_SaveProfile" value="Opslaan" >Afbeelding opslaan</button>
			</div>
		</div>
	</div>
</form>