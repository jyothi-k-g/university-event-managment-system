<?php 

include 'db.php';

session_start();
if (isset($_SESSION['username'])){
    header("Location: index.php");
  }

error_reporting(0);
if (isset($_POST['submit'])) {
	$email = $_POST['email'];
	$password = ($_POST['password']);

	$sql = "SELECT * FROM admin WHERE email='$email' AND password='$password'";
	$result = mysqli_query($conn, $sql);
	if ($result->num_rows > 0) {
		$row = mysqli_fetch_assoc($result);
		$_SESSION['username'] = $row['username'];
		header("Location: index.php");
        echo "<script>alert('Woops! Email or Password is Wrong.')</script>";
	} else {
		echo "<script>alert('Woops! Email or Password is Wrong.')</script>";
	}
}

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <!----------------bootstrap-js--------------->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.2/js/all.js"></script>

	<link rel="stylesheet" type="text/css" href="style.css">

	<title>Register Form </title>
</head>
<body>
    
    
    <section class="banner" id="banner">
	    <div class="container" style="width:40%;margin-left:30%;margin-top:6%;height:380px;background:#fff;border:1px solid #b3b3b3">
            <h1 style="text-align:center;margin-top:20px;">ADMIN LOGIN</h1>
            <form action="" method="POST" class="row g-3" style="padding:6px;">
                <div class="col-12">
                    <label for="inputEmail" class="form-label">Email</label>
                    <input type="email" name="email" class="form-control" id="inputEmail" placeholder="Enter mail id" required>
                </div>
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" id="inputpassword" placeholder="Enter password" required>
                </div>
                <div class=" d-grid gap-2 col-12">
                    <button type="submit" name="submit" class="btn btn-primary" >Login</button>
                </div>
                
            </form>
            <div class="col-3" style="margin-top:20px;font-size:16px;float:right;text-decoration:none;">
            <h6><a href="/aicte/index.html"style="text-decoration:none;">Home Page </a></h6>
            </div>
        </div>
    </section>
<script>
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, window.location.href );
    }
</script>
</body>
</html>