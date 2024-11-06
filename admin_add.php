<?php
	session_start();
	require_once "./functions/admin.php";
	$title = "Add new book";
	require "./template/navbar.php";
	require "./functions/database_functions.php";
	$conn = db_connect();

	if(isset($_POST['add'])){
		$isbn = trim($_POST['isbn']);
		$isbn = mysqli_real_escape_string($conn, $isbn);
		
		$title = trim($_POST['title']);
		$title = mysqli_real_escape_string($conn, $title);

		$author = trim($_POST['author']);
		$author = mysqli_real_escape_string($conn, $author);
		
		$descr = trim($_POST['descr']);
		$descr = mysqli_real_escape_string($conn, $descr);
		
		$price = floatval(trim($_POST['price']));
		$price = mysqli_real_escape_string($conn, $price);
		
		$publisher = trim($_POST['publisher']);
		$publisher = mysqli_real_escape_string($conn, $publisher);

		// add image
		if(isset($_FILES['image']) && $_FILES['image']['name'] != ""){
			$image = $_FILES['image']['name'];
			$directory_self = str_replace(basename($_SERVER['PHP_SELF']), '', $_SERVER['PHP_SELF']);
			$uploadDirectory = $_SERVER['DOCUMENT_ROOT'] . $directory_self . "bootstrap/img/";
			$uploadDirectory .= $image;
			move_uploaded_file($_FILES['image']['tmp_name'], $uploadDirectory);
		}

		// find publisher and return pubid
		// if publisher is not in db, create new
		$findPub = "SELECT * FROM publisher WHERE publisher_name = '$publisher'";
		$findResult = mysqli_query($conn, $findPub);
		if(!$findResult){
			// insert into publisher table and return id
			$insertPub = "INSERT INTO publisher(publisher_name) VALUES ('$publisher')";
			$insertResult = mysqli_query($conn, $insertPub);
			if(!$insertResult){
				echo "Can't add new publisher " . mysqli_error($conn);
				exit;
			}
			$publisherid = mysql_insert_id($conn);
		} else {
			$row = mysqli_fetch_assoc($findResult);
			$publisherid = $row['publisherid'];
		}


		$query = "INSERT INTO books VALUES ('" . $isbn . "', '" . $title . "', '" . $author . "', '" . $image . "', '" . $descr . "', '" . $price . "', '" . $publisherid . "')";
		$result = mysqli_query($conn, $query);
		if(!$result){
			echo "Can't add new data " . mysqli_error($conn);
			exit;
		} else {
			header("Location: admin_book.php");
		}
	}
?>
	<p id="text" style="color: red; display: none;">WARNING! Caps lock is ON.</p>
    <p id="error" style="color: red; display: none;">*Fill Out The Form</p>
    <p id="success" style="color: rgb(101, 233, 101);display:none">*Form Filled</p>
	<form method="post" action="admin_add.php" enctype="multipart/form-data">
		<table class="table">
			<tr>
				<label for="ISBN">ISBN <span style="color: red;">*</span></label>
				<input type="text" name="isbn" id = "isbn" placeholder="Enter ISBN" class="form-control" required >
				<p id="isbnerror" style="color: red; display: none;">*ISBN is required</p>
				<br>
			</tr>
			<tr>
				<label for="Title">Title <span style="color: red;">*</span></label>
                <input type="text" name="title" id="title" placeholder="Book Title" class="form-control" required>
				<p id="titleerror" style="color: red; display: none;">*Book Title is required</p>
				<br>
			</tr>
			<tr>
				<label for="Author">Author <span style="color: red;">*</span></label>
                <input type="text" name="author" id="author" placeholder="Author" class="form-control" required>
				<p id="authorerror" style="color: red; display: none;">*Author Name is required</p>
				<br>
			</tr>
			<tr>
				<label for="titlepage">Title Page <span style="color: red;">*</span></label>
				<br>
				<input type="file" name="image"><br>
				<br>
			</tr>
			<tr>
				<label for="description">Description<span style="color: red;">*</span></label>
				<input type="text" name="descr" id="description" placeholder="Description" class="form-control" required>
			</tr>
			<tr>
				<label for="price">Price <span style="color: red;">*</span></label>
				<input type="text" id="price" name="price" placeholder="Price" class="form-control" required>
				<p id="priceerror" style="color: red; display: none;">*Price is required</p>
				<br>
			</tr>
			<tr>
				<label for="price">Publisher <span style="color: red;">*</span></label>
				<input type="text" id="pub" name="publisher" placeholder="Publisher" class="form-control" required>
			</tr>
		</table>
		<input type="submit" name="add" id="submit" value="Add new book" class="btn btn-primary">
		<a href="./index.php"><input type="reset" value="cancel" class="btn btn-danger"></a>
	</form>
	<br/>
	<script src="./bootstrap/js/addBook.js"></script>
<?php
	if(isset($conn)) {mysqli_close($conn);}
	// require_once "./template/footer.php";
?>