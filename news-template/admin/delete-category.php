<?php
include 'config.php';
$cat_id=$_GET['id'];
 $sql="delete from category where category_id='$cat_id'";
 $result=mysqli_query($conn,$sql);
 if($result){
	  header("Location:category.php");
 }
 else{
	 echo "not deleted";
 }

?>