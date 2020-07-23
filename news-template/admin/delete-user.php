<?php

if($_SESSION['user_role']=='0')
 {
	 header("Location:http://localhost:70/news-template/admin/post.php");
 }
 
include 'config.php';
$user_id=$_GET['id'];
$sql="delete  from user where user_id='$user_id'";
if(mysqli_query($conn,$sql)){
	header("Location:users.php");
}
else{
	
	echo "not deleted";
}

?>