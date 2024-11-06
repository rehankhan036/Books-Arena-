<?php
	$title = "Administration section";
	require_once "./template/navbar.php";
?>

	<br>
	<form class="form-horizontal" method="post" action="admin_verify.php" style="align-items: center;">
		<div class="form-group">
			<label for="name" class="control-label col-md-4"><i class="fas fa-user"></i> Name <span style="color: red;">*</span></label>
			<div class="col-md-4">
				<input type="text" name="name" class="form-control">
			</div>
		</div>
		<div class="form-group">
			<label for="pass" class="control-label col-md-4"><i class="fas fa-key"></i> Password </i></label>
			<div class="col-md-4">
				<input type="password" name="pass" class="form-control">
			</div>
		</div>
		<input type="submit" name="submit" class="btn btn-primary" style="margin-left: 20px;">

	</form>

<?php
	// require_once "./template/footer.php";
?>