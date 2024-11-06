<?php
	// the shopping cart needs sessions, to start one
	/*
		Array of session(
			cart => array (
				book_isbn (get from $_GET['book_isbn']) => number of books
			),
			items => 0,
			total_price => '0.00'
		)
	*/
	session_start();
	require_once "./functions/database_functions.php";
	// print out header here
	$title = "Checking out";
	require "./template/navbar.php";

	if(isset($_SESSION['cart']) && (array_count_values($_SESSION['cart']))){
?>
	<table class="table">
		<tr>
			<th>Item</th>
			<th>Price</th>
	    	<th>Quantity</th>
	    	<th>Total</th>
	    </tr>
	    	<?php
			    foreach($_SESSION['cart'] as $isbn => $qty){
					$conn = db_connect();
					$book = mysqli_fetch_assoc(getBookByIsbn($conn, $isbn));
			?>
		<tr>
			<td><?php echo $book['book_title'] . " by " . $book['book_author']; ?></td>
			<td><?php echo "$" . $book['book_price']; ?></td>
			<td><?php echo $qty; ?></td>
			<td><?php echo "$" . $qty * $book['book_price']; ?></td>
		</tr>
		<?php } ?>
		<tr>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th><?php echo $_SESSION['total_items']; ?></th>
			<th><?php echo "$" . $_SESSION['total_price']; ?></th>
		</tr>
	</table>
	<form method="post" action="purchase.php" class="form-horizontal">
		<?php if(isset($_SESSION['err']) && $_SESSION['err'] == 1){ ?>

			<?php } ?>
			<p id="text" style="color: red; display: none;">WARNING! Caps lock is ON.</p>
            <p id="Ssuccess" style="color: green; display: none;">*Details are Complete</p>
		<div class="form-group">
			<label for="name"><i class="fa fa-user"></i> Full Name <span style="color: red;">*</span></label>
			<div class="col-md-4">
				<input type="text" name="name" id = "name" placeholder="Enter Name" class="form-control" required>
				<p id="Snameerror" style="color: red; display: none;">*Full Name is required</p>
			</div>
		</div>
		<div class="form-group">
			<label for="address"><i class="fa fa-address-card"></i> Address <span style="color: red;">*</span></label>
			<div class="col-md-4">
				<input type="text" name="address" id="address" placeholder="Address" class="form-control" required>
				<p id="addresserror" style="color: red; display: none;">*Address is required</p>
			</div>
		</div>
		<div class="form-group">
			<label for="city"><i class="fas fa-city"></i>  City <span style="color: red;">*</span></label>
			<div class="col-md-4">
				<input type="text" name="city" id="city" placeholder="City" class="form-control" required> 
				<p id="cityerror" style="color: red; display: none;">*City Name is required</p>
			</div>
		</div>
		<div class="form-group">
			<label for="Zip_code"><i class="fa fa-map-pin"></i> Zip Code <span style="color: red;">*</span></label>
			<div class="col-md-4">
				<input type="number" name="zip_code" placeholder="Zip Code" id="zip" class="form-control" required>
				<p id="ziperror" style="color: red; display: none;">*Zip Code is required</p>
			</div>
		</div>
		<div class="form-group">
			<label for="country"><i class="fas fa-city"></i>  Country <span style="color: red;">*</span></label>
			<div class="col-md-4">
				<input type="text" id="country" name="country" placeholder="Country" class="form-control" required>
				<p id="countryerror" style="color: red; display: none;">*Country is required</p>
			</div>
		</div>
		<div class="form-group">
			<input type="submit" id="submit" name="submit" value="Purchase" class="btn btn-primary" style="margin-left: 15px;">
		</div>
		</form>
	<p class="lead">Please press Purchase to confirm your purchase, or Continue Shopping to add or remove items.</p>
	<script src="./bootstrap/js/Checkout.js" async></script>
<?php
	} else {
		echo "<p class=\"text-warning\">Your cart is empty! Please make sure you add some books in it!</p>";
	}
	if(isset($conn)){ mysqli_close($conn); }
	// require_once "./template/footer.php";
?>