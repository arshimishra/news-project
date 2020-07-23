<?php
include'config.php';
session_start();


if(isset($_POST['submit']))
{
if(empty($_FILES['logo']['name'])){
	$file_name=$_POST['old_logo'];
}
else{
	$errors=array();
	
	
	$file_name =$_FILES['logo']['name'];
	$file_size =$_FILES['logo']['size'];
	$file_tmp =$_FILES['logo']['tmp_name'];
	$file_type =$_FILES['logo']['type'];
	$file_ext =end(explode('.' ,$file_name));
	$extensions=array("jpeg","jpg","png");
	
	
	if(in_array($file_ext,$extensions)===false){
    $error[]="this extension file is not allowed,please choose  jpg or png"	;	
}
if($file_size>2097152){
	$error[]='file size must be 2mb or lower';
}
if(empty($error)==true){
	move_uploaded_file($file_tmp,"images/".$file_name);
}
else{

	print_r($error);
	die();
}
}

$website_name=mysqli_real_escape_string($conn, $_POST['website_name']);
//$logo=mysqli_real_escape_string($conn, $_POST['logo']);

$footer=mysqli_real_escape_string($conn,$_POST['footer_desc']);



$query2 ="UPDATE settings SET website_name = '$website_name',
logo_image= '$file_name',
footer_desc = '$footer'";
 
 
if(mysqli_query($conn,$query2))
{
	
	header("Location:http://localhost:70/news-template/index.php");
}
else{
	echo "not updated";
}


	
}
?>