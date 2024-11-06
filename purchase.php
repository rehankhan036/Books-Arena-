<?php
	session_start();
	$_SESSION['err'] = 1;
	foreach($_POST as $key => $value){
		if(trim($value) == ''){
			$_SESSION['err'] = 0;
		}
		break;
	}

	if($_SESSION['err'] == 0){
		header("Location: checkout.php");
	} else {
		unset($_SESSION['err']);
	}


	$_SESSION['ship'] = array();
	foreach($_POST as $key => $value){
		if($key != "submit"){
			$_SESSION['ship'][$key] = $value;
		}
	}
	require_once "./functions/database_functions.php";
	// print out header here
	$title = "Purchase";
	require "./template/navbar.php";
	// connect database
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
		<tr>
			<td>Shipping</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
			<td>20.00</td>
		</tr>
		<tr>
			<th>Total Including Shipping</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
			<th><?php echo "$" . ($_SESSION['total_price'] + 20); ?></th>
		</tr>
	</table>
	<p id="text" style="color: red; display: none;">WARNING! Caps lock is ON.</p>
    <p id="Psuccess" style="color: green; display: none;">*Deatails are complete.</p>
	<form method="post" action="process.php" class="form-horizontal">
		<?php if(isset($_SESSION['err']) && $_SESSION['err'] == 1){ ?>
		<?php } ?>
        <div class="form-group">
		<label for="card_type" class="col-lg-2 control-label">Type <span style="color: red;">*</span></label>
            <div class="col-lg-10">
              	<select class="form-control" name="card_type">
				  	<option selected>Choose Your Card Type</option>
                  	<option value="VISA">VISA</option>
                  	<option value="MasterCard">MasterCard</option>
                  	<option value="American Express">American Express</option>
              	</select>
            </div>
        </div>
        <div class="form-group">
		<label for="card_number"  class="col-lg-2 control-label"><i class="fa fa-credit-card"></i> Card Number <span style="color: red;">*</span></label>
            <div class="col-lg-10">
			<input type="text" name="card_number" id="Cnumber" class="form-control" placeholder="1111-2222-3333-4444" required>
			<p id="Numerror" style="color: red; display:  none">*Card Number is required</p>
            </div>
        </div>
        <div class="form-group">
		<label for="card_PID"  class="col-lg-2 control-label"><i class="fa fa-key"></i> PID <span style="color: red;">*</span></label>
            <div class="col-lg-10">
			<input type="text" id="PID" class="form-control" placeholder="PID" name="card_PID" required>
			<p id="PIDerror" style="color: red; display: none;">*PID is required</p>
            </div>
        </div>
        <div class="form-group">
		<label for="card_expire"  class="col-lg-2 control-label"><i class="fa fa-calendar"></i> Expiry Date <span style="color: red;">*</span></label>
            <div class="col-lg-10">
			<input type="date" id="date" name="card_expire" class="form-control" required>
            </div>
        </div>
        <div class="form-group">
		<label for="card_owner"  class="col-lg-2 control-label"><i class="fa fa-user"></i> Name <span style="color: red;">*</span></label>
            <div class="col-lg-10">
			<input type="text" id="Name" class="form-control" placeholder="Card Holder Name" name="card_owner" required>
			<p id="nameerror" style="color: red; display: none;">*Name is required</p>
            </div>
		</div>
		<div class="form-group">
			<a href="checkout.php"><button type="reset" class="btn btn-danger" style="margin-left: 15px;">Cancel</button></a>
    		<a href="process.php"><button type="submit" id="check" class="btn btn-primary">Purchase</button></a>
		</div>
	</form>

	<br>
	<br>
	<script src="./bootstrap/js/payment.js"></script>
	<p class="lead" style="color: black;">Please press Purchase to confirm your purchase, or Continue Shopping to add or remove items.</p>
<?php
	} else {
		echo "<p class=\"text-warning\">Your cart is empty! Please make sure you add some books in it!</p>";
	}
	if(isset($conn)){ mysqli_close($conn); }
	// require_once "./template/footer.php";
?>