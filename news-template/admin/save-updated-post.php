<?php
session_start();

include 'config.php';
if(isset($_POST['submit']))
{
if(empty($_FILES['new-image']['name'])){
	$target=$_POST['old-image'];
}
else{
	$errors=array();
	
	
	$file_name =$_FILES['new-image']['name'];
	$file_size =$_FILES['new-image']['size'];
	$file_tmp =$_FILES['new-image']['tmp_name'];
	$file_type =$_FILES['new-image']['type'];
	$file_ext =end(explode('.' ,$file_name));
	$extensions=array("jpeg","jpg","png");
	
	
	if(in_array($file_ext,$extensions)===false){
    $error[]="this extension file is not allowed,please choose  jpg or png"	;	
}
if($file_size>2097152){
	$error[]='file size must be 2mb or lower';
}
$new_name=time()."-".basename($file_name);
$target="upload/".$new_name;
$image_name=$new_name;
if(empty($error)==true){
	move_uploaded_file($file_tmp,"upload/".$target);
}
else{

	print_r($error);
	die();
}
}

$title=mysqli_real_escape_string($conn, $_POST['post_title']);
$description=mysqli_real_escape_string($conn, $_POST['postdesc']);
$category=mysqli_real_escape_string($conn,$_POST['category']);
$id=mysqli_real_escape_string($conn,$_POST['post_id']);
$post_img=mysqli_real_escape_string($conn,$image_name);
$old_category=mysqli_real_escape_string($conn,$_POST['old_category']);
//$old_category=mysqli_real_escape_string($conn,$_POST['old_category']);

$sql ="UPDATE post SET title = '$title',
description = '$description',
category = '$category',
post_img='$post_img'
 WHERE post_id ='$id ';" ;
 if($POST['old_category']!=$_POST['category']){
	$sql .="update category set post=post-1 where category_id='$old_category';"; 
	$sql .="update category set post=post+1 where category_id='$category'"; 
 }

 
if(mysqli_multi_query($conn,$sql))
{
	header("Location:post.php");
}
else{
	echo "not updated";
}


	
}
?>