<!DOCTYPE html>
<?php
include'config.php';
$page=basename($_SERVER['PHP_SELF']);
switch($page){
	case "single.php":
	
	{
		 if(isset($_GET['id']))
		 {
        $sql_title = "SELECT * FROM post WHERE post_id = {$_GET['id']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['title'];
		 }
         else
		 {
         $page_title="No Post Found";
		 }	
		break;
	}
	
	case "author.php":
	{
		 if(isset($_GET['aid']))
		 {
        $sql_title = "SELECT * FROM user WHERE user_id = {$_GET['aid']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['username'];
		 }
         else
		 {
         $page_title="No Post Found";
		 }	
		break;
	}
	case "category.php":
	{
		 if(isset($_GET['cid']))
		 {
        $sql_title = "SELECT * FROM category WHERE category_id = {$_GET['cid']}";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['category_name'];
		 }
         else
		 {
         $page_title="No Post Found";
		 }	
		break;
	}
	case "search.php":
	{
		 if(isset($_GET['search']))
		 {
        
        $page_title = $_GET['search'];
		 }
         else
		 {
         $page_title="No Post Found";
		 }	
		break;
	}
	default:
	{
		
        $sql_title = "SELECT * FROM settings ";
        $result_title = mysqli_query($conn,$sql_title) or die("Tile Query Failed");
        $row_title = mysqli_fetch_assoc($result_title);
        $page_title = $row_title['website_name'];
		
	}
}

?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title><?php echo $page_title; ?></title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.css">
    <!-- Custom stlylesheet -->
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!-- HEADER -->

<?php
include 'config.php';
$sql="select * from settings";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_assoc($result);


?>
<div id="header">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- LOGO -->
            <div class=" col-md-offset-4 col-md-4">
                <a href="index.php" id="logo"><img src="admin\images\<?php echo $row['logo_image']; ?>"></a>
            </div>
            <!-- /LOGO -->
        </div>
    </div>
</div>
<!-- /HEADER -->
<!-- Menu Bar -->
<div id="menu-bar">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
			<?php
			include 'config.php';
			if(isset($_GET['cid'])){
				$cat_id=$_GET['cid'];
			}
			
			 
			
			$sql="select * from category where post > 0";
			$result=mysqli_query($conn,$sql);
			if(mysqli_num_rows($result)>0){
				
			 $active="";
			?>
                <ul class='menu'>
			<li><a  href="<?php echo $hostname?>">HOME</a></li>
				<?php
				  while($rows=mysqli_fetch_assoc($result))
				  {
					  if(isset($_GET['cid'])){
						   if($rows['category_id']==$cat_id){
					   $active="active";
				   }
				   else{
					   $active="";
				   }
					  }
				  
				  echo "<li><a class='{$active}' href='category.php?cid={$rows["category_id"]}'>{$rows['category_name']}</a></li>";
				  }
					?>
				 
                </ul>
			<?php } ?>
            </div>
        </div>
    </div>
</div>
<!-- /Menu Bar -->
