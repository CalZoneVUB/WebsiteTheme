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
	<!-- Nav tabs -->
	<ul class="nav nav-tabs">
	  <li class="active"><a href="#pie" data-toggle="tab">Pie Charts</a></li>
	  <li><a href="#leden" data-toggle="tab">Leden</a></li>
	  <li><a href="#raw" data-toggle="tab">Raw Data</a></li>
	  <!--<li><a href="#pieIter1" data-toggle="tab">Iteratie 1</a></li>
	  <li><a href="#pieIter2" data-toggle="tab">Iteratie 2</a></li>
	  <li><a href="#pieIter3" data-toggle="tab">Iteratie 3</a></li>-->
	  <!--<li><a href="#pieIter4" data-toggle="tab">Iteratie 4</a></li>-->
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
	  <div class="tab-pane active" id="pie">
	  	<div class="col-md-12">
			<div class="row">
				<div class="col-md-12">
					<div class="page-header">
						<h1>Totaal</h1>
					</div>
					<div id="pie-total" style="height:500px;"></div>
				</div>
				<div class="col-md-12">
					<div class="page-header">
						<h1>Iteratie 1</h1>
					</div>
					<div id="pie-iter-1" style="height:500px;"></div>
				</div>
				<div class="col-md-12">
					<div class="page-header">
						<h1>Iteratie 2</h1>
					</div>
					<div id="pie-iter-2" style="height:500px;"></div>
				</div>
				<div class="col-md-12">
					<div class="page-header">
						<h1>Iteratie 3</h1>
					</div>
					<div id="pie-iter-3" style="height:500px;"></div>
				</div>
				<div class="col-md-12">
					<div class="page-header">
						<h1>Iteratie 4</h1>
					</div>
					<div id="pie-iter-4" style="height:500px;"></div>
				</div>
			</div>
		</div>
	  </div>
	  <div class="tab-pane" id="pieIter1">
	  	<div class="col-md-12">
			<div class="page-header">
				<h1>Iteratie 1</h1>
			</div>
			<div id="pie-iter-1" style="height:500px;"></div>
		</div>
	  </div>
	  <div class="tab-pane" id="pieIter2">
	  	<div class="col-md-12">
			<div class="page-header">
				<h1>Iteratie 2</h1>
			</div>
			<div id="pie-iter-2" style="height:500px;"></div>
		</div>
	  </div>
	  <div class="tab-pane" id="pieIter3">
	  	<div class="col-md-12">
			<div class="page-header">
				<h1>Iteratie 3</h1>
			</div>
			<div id="pie-iter-3" style="height:500px;"></div>
		</div>
	  </div>
	  <div class="tab-pane" id="leden">
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h3>1ste Iteratie</h3>
				</div>
				<table width="100%">
					<tr>
					<% loop FirstIterMembers() %>
						<td style="text-align: center;">$Name</td>
					<% end_loop %>
					</tr>
					<tr>
					<% loop FirstIterMembers() %>
						<td style="text-align: center;" width="{$Percentage}%">$Value ({$Percentage}%)</td>
					<% end_loop %>
					</tr>
				</table>
				<div class="progress">
					<% loop FirstIterMembers() %>
						<% if $MultipleOf(2) %>
						<div class="progress-bar progress-bar-info" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% else %>
						<div class="progress-bar progress-bar-danger" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% end_if %>
					<% end_loop %>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h3>2de Iteratie</h3>
				</div>
				<table width="100%">
					<tr>
					<% loop SecondIterMembers() %>
						<td style="text-align: center;">$Name</td>
					<% end_loop %>
					</tr>
					<tr>
					<% loop SecondIterMembers() %>
						<td style="text-align: center;" width="{$Percentage}%">$Value ({$Percentage}%)</td>
					<% end_loop %>
					</tr>
				</table>
				<div class="progress">
					<% loop SecondIterMembers() %>
						<% if $MultipleOf(2) %>
						<div class="progress-bar progress-bar-info" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% else %>
						<div class="progress-bar progress-bar-danger" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% end_if %>
					<% end_loop %>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h3>3de Iteratie</h3>
				</div>
				<table width="100%">
					<tr>
					<% loop ThirdIterMembers() %>
						<td style="text-align: center;">$Name</td>
					<% end_loop %>
					</tr>
					<tr>
					<% loop ThirdIterMembers() %>
						<td style="text-align: center;" width="{$Percentage}%">$Value ({$Percentage}%)</td>
					<% end_loop %>
					</tr>
				</table>
				<div class="progress">
					<% loop ThirdIterMembers() %>
						<% if $MultipleOf(2) %>
						<div class="progress-bar progress-bar-info" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% else %>
						<div class="progress-bar progress-bar-danger" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% end_if %>
					<% end_loop %>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="page-header">
					<h3>4de Iteratie</h3>
				</div>
				<table width="100%">
					<tr>
					<% loop FourthIterMembers() %>
						<td style="text-align: center;">$Name</td>
					<% end_loop %>
					</tr>
					<tr>
					<% loop FourthIterMembers() %>
						<td style="text-align: center;" width="{$Percentage}%">$Value ({$Percentage}%)</td>
					<% end_loop %>
					</tr>
				</table>
				<div class="progress">
					<% loop FourthIterMembers() %>
						<% if $MultipleOf(2) %>
						<div class="progress-bar progress-bar-info" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% else %>
						<div class="progress-bar progress-bar-danger" style="width: {$Percentage}%">
							<span class="sr-only">{$Percentage}%</span>
						</div>
						<% end_if %>
					<% end_loop %>
				</div>
			</div>
		</div>
	  </div>
	  <div class="tab-pane" id="raw">
		<div class="col-md-12">
			<br>
			<table class="table table-striped">
				<tr>
				  <th>Activiteit</th>
				  <th>1ste Iteratie</th> 
				  <th>2de  Iteratie</th>
				  <th>3de  Iteratie</th>
				  <th>4de  Iteratie</th>
				  <th>Totaal</th>
				</tr>
			<% loop Activities %>
				<tr>
				  <td>$Title</td>
				  <td>$getFirstIter()</td> 
				  <td>$getSecondIter()</td>
				  <td>$getThirdIter()</td>
				  <td>$getFourthIter()</td>
				  <td>$getTotal()</td>
				</tr>
			<% end_loop %>
			</table>
		</div>
	  </div>
	</div>
</div>