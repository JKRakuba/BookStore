<?php


$invalid='';//variable to store error messages

if(isset($_POST['submit'])){
	if(empty($_POST['user'])|| empty($_POST['pass'])){
		$inavlid = "Incorrect Username or password";
	}
	else
	{
		$user=$_POST['user'];
		$pass=$_POST['pass'];
		
		$conn = mysqli_connect("localhost", "root", "");
		$db = mysqli_select_db($conn,"bookstore");//name of the the DB "bookstore"
		$query = mysqli_query($conn,"SELECT * FROM form WHERE password='$pass' AND username='$user'");
		
		
		$rows = mysqli_num_rows($query);
		if($rows == 1){
			header("Location:UserHomepage ") //Redirecting to another page
		}
		else
		{
			$invalid = "Incorrect";
		}
			mysql_close($conn);
	}

}
?>