<?php 
include 'db.php';
session_start();

if (!isset($_SESSION['name'])) {
  header("Location: login.php");}
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
  <body>
		
		<div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<?php require 'nav.php'; ?>	

        <!-- Page Content  -->
      <div id="content" class="p-4 p-md-5 pt-5">
      <h2 class="mb-4" style="marggin-bottom:20px;">Your Committee Events</h2>
      <div class="container" style="margin-top:60px;width:96%;">
      <div class="row" style="margin:30px;">
        <?php
      $currentuser = $_SESSION['name'];
          $sql= "SELECT *from members WHERE name='$currentuser'";
          $gotresults=mysqli_query($conn, $sql);
          if($gotresults){
          if(mysqli_num_rows($gotresults) > 0){
            while($row = mysqli_fetch_array($gotresults)){
              $code=$row['code'];
             
              $sqli= "SELECT * FROM events WHERE comitee1 = '".$code."' or comitee2 ='".$code."' ";
              $details_query = mysqli_query($conn,$sqli);
              if($details_query){
                  if(mysqli_num_rows($details_query) > 0){
                    while($row = mysqli_fetch_array($details_query)){
              ?>
              <div class="col-md-6" style="margin-top:20px;margin-bottom:20px;width:100%">
                    <div class="card" style="width: 100%;border:1px solid ;width:100%;">
              <div class="card-body">
                <h5 class="card-title">Event name:  <?php  echo $row['eventname'];?></h5>
              
                <p class="card-text" style="font-size:16px;">Event type :- <?php echo $row['eventype'];?></br> Event center :- <?php echo $row['meetcenter'];?></br>Date :- <?php echo $row['date'];?></br>Time :- <?php echo $row['starttime'];?>- <?php echo $row['endtime'];?></br> Event status :- <?php echo $row['status'];?></br></p>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter<?php echo $row["id"]; ?>">
  Submit Report
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter<?php echo $row["id"]; ?>" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Meeting Report</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form class="row g-3" style="font-size:18px;" action="" method="POST">
      <div class="col-md-12" >
          <label for="inputEmail4" class="form-label" style="display:none;" >SL no</label>
          <input type="text" class="form-control" name="id" id="inputEmail4"  style="border:1px solid #bfbfbf;font-size:17px;display:none;">
        </div>
        <div class="col-md-12" >
          <label for="inputEmail4" class="form-label" >Event Name</label>
          <input type="text" class="form-control" name="eventname" id="inputEmail4"  value="<?php echo $row['eventname'];?>" style="border:1px solid #bfbfbf;font-size:17px;">
        </div>
        <div class="col-md-12" >
          <label for="inputEmail4" class="form-label" >Name</label>
          <input type="text" class="form-control" name="name" id="inputEmail4"   style="border:1px solid #bfbfbf;font-size:17px;">
        </div>
        <div class="col-md-12">
          <label for="inputPassword4" class="form-label">Subject</label>
          <input type="text" class="form-control" name="subject" id="inputPassword4" style="border:1px solid #bfbfbf;font-size:17px;">
        </div>
        <div class="col-12">
          <label for="inputAddress" class="form-label">Body</label>
          <input type="text" class="form-control" name="body" id="inputAddress"  style="border:1px solid #bfbfbf;font-size:17px;">
        </div>
        
        <div class="col-12" style="margin-top:30px;">
          <button type="submit" name="submit" class="btn btn-primary">Submit</button>
        </div>
      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>
                </div>
              </div>
            </div>
              <?php
        }
    }}}}
}?>
  </div>
  </div>
      </div>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
<?php
    if((isset($_POST['submit']))){
      $eventname = $_POST["eventname"]; 
      $subject = $_POST["subject"];
      $body = $_POST["body"];
      $name = $_POST["name"];
        //Query to insert data to the database
        $sql="INSERT INTO meetingreport (eventname, subject, report, name) VALUES ('".$eventname."','".$subject."','".$body."','".$name."')";
        //Execute the query and returning a message
        if(!$result = $conn->query($sql)){
            die('Error occured [' . $conn->error . ']');
        }
        else
            echo '<script> alert("Data inserted successfully")</script>';
        }
?>
<script>
        if ( window.history.replaceState ) {
            window.history.replaceState( null, null, window.location.href );
    }
</script>