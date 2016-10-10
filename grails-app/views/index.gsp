<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>

</head>
<body>
	<div class="container" role="main">
		<div class="jumbotron">
			<h3>Add User:</h3>
			<form class="form-horizontal" id="frmUser">
				<div class="form-group">
					<label for="txtFirst" class="col-sm-2 control-label">First Name</label>
					<div class="col-sm-6">
						<input type="text" required class="form-control" id="txtFirst">
					</div>
				</div>

				<div class="form-group">
					<label for="txtLast" class="col-sm-2 control-label">Last Name</label>
					<div class="col-sm-6">
						<input type="text" required class="form-control" id="txtLast">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" id='btnSave' class="btn btn-default">Save</button>
					</div>
				</div>
			</form>
		</div>

		<div class="row">
			<div class="col-md-12 text-center">
				<button id="btnLoad" class="btn btn-primary">Retrieve Users</button>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-12 text-center">
				<table id="table" class="display" cellspacing="0" width="100%">
	                <thead>
	                    <tr>
	                       
	                        <th>Id</th>
	                        <th>First Name</th>
	                        <th>Last Name</th>
	                    </tr>
	                </thead>
				 </table>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="${resource(dir: 'js', file: 'user.js')}"></script>	
</body>
</html>
