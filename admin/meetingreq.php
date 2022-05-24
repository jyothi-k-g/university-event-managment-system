<?php 
include 'db.php';
session_start();

if (!isset($_SESSION['username'])) {
  header("Location: adminlogin.php");
}
?>
<!doctype html>
<html lang="en">
  <head>
  	<title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
		
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/style.css">
  </head>
  <body style="background-color:#F3F6F9">
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<?php require 'nav.php'; ?>

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
        <div class="bd" >
        <h2 class="mb-4">Meeting request</h2>
        <table class="table">
  <thead>
    <tr style="font-size:16px;">
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Subject</th>
      <th scope="col">View</th>
      <th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
  <?php
  $sql= "SELECT *from requests";
    $details_query = mysqli_query($conn,$sql);
    if($details_query){
        if(mysqli_num_rows($details_query) > 0){
          while($row = mysqli_fetch_array($details_query)){
    ?>
    <tr style="font-size:15px;">
      <td scope="row"><?php echo $row['name']; ?></td>
      <td><?php echo $row['email']; ?></td>
      <td><?php echo $row['subject']; ?></td>
      <td><button type="button" class="btn btn-secondary" ><a href="viewmem.php?id=<?php echo $row["id"]; ?>" style="color:#fff;">Details</a> </button></td>
      <!-- Button trigger modal -->
         
      <td><button type="button" class="btn btn-danger" ><a href="#" style="color:#fff;">Delete</a> </button></td>
      
    </tr>
  </tbody>
  <?php

	}
}
    }
	?>
</table>
      </div>
		</div>
</div>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>



<script>
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, window.location.href );
    }
</script>

