<% with $Details %>
<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h1>$FirstName</h1>
		</div>
		<div class="col-sm-6 col-md-9">
			<div class="page-header">
				<h2>Totaal: $getTotalWorkTime() uren</h2>
			</div>
			<div class="page-header">
				<h3>Uren per iteratie</h3>
			</div>
			<table width="100%">
			  <tr>
				<td style="text-align: center;">1ste</td>
				<td style="text-align: center;">2de</td>
				<td style="text-align: center;">3de</td>
				<td style="text-align: center;">4de</td>
			  </tr>
			  <tr>
				<td style="text-align: center;" width="{$getFirstIterPerc}%">$getFirstIter() ({$getFirstIterPerc}%)</td>
				<td style="text-align: center;" width="{$getSecondIterPerc}%">$getSecondIter() ({$getSecondIterPerc}%)</td>
				<td style="text-align: center;" width="{$getThirdIterPerc}%">$getThirdIter() ({$getThirdIterPerc}%)</td>
				<td style="text-align: center;" width="{$getFourthIterPerc}%">$getFourthIter() ({$getFourthIterPerc}%)</td>
			  </tr>
			</table>
			<div class="progress">
			  <div class="progress-bar progress-bar-info" style="width: {$getFirstIterPerc}%">
				<span class="sr-only">{$getFirstIterPerc}%</span>
			  </div>
			  <div class="progress-bar progress-bar-warning" style="width: {$getSecondIterPerc}%">
				<span class="sr-only">{$getSecondIterPerc}%</span>
			  </div>
			  <div class="progress-bar progress-bar-success" style="width: {$getThirdIterPerc}%">
				<span class="sr-only">{$getThirdIterPerc}%</span>
			  </div>
			  <div class="progress-bar progress-bar-danger" style="width: {$getFourthIterPerc}%">
				<span class="sr-only">{$getFourthIterPerc}%</span>
			  </div>
			</div>
		</div>
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
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h3>Vergelijking</h3>
		</div>
		<table width="100%">
			<tr>
			<% loop AllMembersPercentages() %>
				<td style="text-align: center;">$Name</td>
			<% end_loop %>
			</tr>
			<tr>
			<% loop AllMembersPercentages() %>
				<td style="text-align: center;" width="{$Percentage}%">$TotalWorkTime ({$Percentage}%)</td>
			<% end_loop %>
			</tr>
		</table>
		<div class="progress">
			<% loop AllMembersPercentages() %>
				<% if First %>
				<div class="progress-bar progress-bar-info" style="width: {$Percentage}%">
					<span class="sr-only">{$Percentage}%</span>
				</div>
				<% else %>
					<% if $MultipleOf(2) %>
					<div class="progress-bar progress-bar-warning" style="width: {$Percentage}%">
						<span class="sr-only">{$Percentage}%</span>
					</div>
					<% else %>
					<div class="progress-bar progress-bar-danger" style="width: {$Percentage}%">
						<span class="sr-only">{$Percentage}%</span>
					</div>
					<% end_if %>
				<% end_if %>
			<% end_loop %>
		</div>
	</div>
</div>
<% end_with %>