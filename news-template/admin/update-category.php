<?php include "header.php"; 
if($_SESSION['user_role']=='0')
 {
	 header("Location:http://localhost:70/news-template/admin/post.php");
 }
 include 'config.php';
 $cat_id=$_GET['id'];
 $query="select * from category where category_id='$cat_id'";
 $result=mysqli_query($conn,$query);
 $rows=mysqli_fetch_assoc($result);
 
 if(isset($_POST['submit']))
 {
	 $cat_name=mysqli_real_escape_string($conn,$_POST['cat_name']);
	 
	 $query2="update category set category_name='$cat_name' where category_id='$cat_id'";
	 $result2=mysqli_query($conn,$query2);
	if($result)
	{
		header("Location:category.php");
	}
	else{
		echo"not updated";
	}
 }
?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="adin-heading"> Update Category</h1>
              </div>
              <div class="col-md-offset-3 col-md-6">
                  <form action="<?php $_SERVER['PHP_SELF']?>" method ="POST">
                      <div class="form-group">
                          <input type="hidden" name="cat_id"  class="form-control" value="1" placeholder="">
                      </div>
                      <div class="form-group">
                          <label>Category Name</label>
                          <input type="text" name="cat_name" class="form-control" value="<?php echo$rows['category_name']?>"  placeholder="" required>
                      </div>
                      <input type="submit" name="submit" class="btn btn-primary" value="Update" required />
                  </form>
                </div>
              </div>
            </div>
          </div>
<?php include "footer.php"; ?>
