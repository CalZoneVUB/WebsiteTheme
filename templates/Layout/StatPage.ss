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
	  <li><a href="#raw" data-toggle="tab">Raw</a></li>
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
	  <div class="tab-pane" id="raw">
		<div class="col-md-12">
			<% loop Activities %>
				$Title - $getFirstIter() - $getSecondIter() - $getThirdIter()<br>
			<% end_loop %>
		</div>
	  </div>
	</div>
</div>