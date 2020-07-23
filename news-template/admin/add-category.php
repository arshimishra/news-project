<?php include "header.php"; 
include 'config.php';
if($_SESSION['user_role']=='0')
 {
	 header("Location:http://localhost:70/news-template/admin/post.php");
 }
 
 if(isset($_POST['save'])){
	
	 $cat_name=$_POST['cat'];
	 
	 
	 $sql="insert into category (category_name) values('$cat_name')";
	 if(mysqli_query($conn,$sql)){
		 header("Location:category.php");
	 }
	 else{
		 echo "not added";
	 }
 }
 
 
?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Add New Category</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                  <!-- Form Start -->
                  <form action="<?php $_SERVER['PHP_SELF']?>" method="POST" autocomplete="off">
                      <div class="form-group">
                          <label>Category Name</label>
                          <input type="text" name="cat" class="form-control" placeholder="Category Name" required>
                      </div>
                      <input type="submit" name="save" class="btn btn-primary" value="Save" required />
                  </form>
                  <!-- /Form End -->
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
