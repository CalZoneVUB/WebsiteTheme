<div class="row">
	<div class="col-md-12">
		<div class="page-header">
			<h1>$Details.FirstName</h1>
		</div>
		<div class="col-md-7">
			<% with Details %>
				Totaal: $getTotalWorkTime() <br>
				1ste iter: $getFirstIter() <br> 
				2de iter: $getSecondIter() <br>
				3de iter: $getThirdIter()<br>
				4de iter: $getFourthIter()
			<% end_with %>
		</div>
		<div class="col-md-5">
			N
		</div>
	</div>
</div>