<?php
	include 'DBConn'
	
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="style.css"
</head>
<body>

	<div class="login">
		<h1 align="center">Login</h1>
		<form action="" method="post" style="text-align:center;">
			<input type="text" placeholder="StudentNo" id="stnum" name="stnum"><br/><br/>
			<input type="text" placeholder="Username" id="user" name="user"><br/><br/>
			<input type="password" placeholder="password" id="pass" name="pass" <a href="AdminLogin.php" a/>><br/><br/>
			<input type="submit" value="Login" name="submit"><br><br>
			<span><?php echo $invalid; ?></span>
			<a href="Register.php">Click here to register account</a><br><br>
			<input type="submit" value="Admin Login" name="AdminLog"><br><br>
			
		</form>
	</div>


</body>
</html>
