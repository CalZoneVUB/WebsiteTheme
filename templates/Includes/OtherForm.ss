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
     
    <% loop $Fields %>
    <div class="input-group">
		<% if Type = "email text"%>
		<span class="input-group-addon">@</span>
		<input type="email" name="$name" id="$ID" value="$VALUE" class="form-control <% if isDisabled %>btn-disabled<% end_if %>" placeholder="$Title" autocomplete="off">
		<% else_if Type = "password"%>
		<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
		<input type="password" name="$name" id="$ID" value="$VALUE" class="form-control <% if isDisabled %>btn-disabled<% end_if %>" placeholder="$Title" autocomplete="off">
		<% else_if Type = "text"%>
		<span class="input-group-addon"></span>
		<input type="text" name="$name" id="$ID" value="$VALUE" class="form-control <% if isDisabled %>btn-disabled<% end_if %>" placeholder="$Title" autocomplete="off">
		<% else %>
		<input type="$Type" name="$name" id="$ID" value="$VALUE" class="form-control <% if isDisabled %>btn-disabled<% end_if %>" placeholder="$Title" autocomplete="off">
		<% end_if %>
		</div>
	<br>
	<% end_loop %>
	
	$Fields.HiddenFields()
    $Fields.dataFieldByName(SecurityID)
        
    <% if $Actions %>
        <% loop $Actions %>
        <button id="$ID" class="btn btn-lg btn-primary" type="submit" name="$name">$Title.XML</button>
        <% end_loop %>
    <% end_if %>
</form>