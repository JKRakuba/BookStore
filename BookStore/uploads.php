<?php 
if(isset($_POST['submit'])){
	$file = $_FILES['file'];
	
	$fileName = $_FILES['file']['name'];
	$fileTmpName = $_FILES['file']['tmp_name'];
	$fileSize = $_FILES['file']['Size'];
	$fileError = $_FILES['file']['error'];
	$FileType = $_File['file']['type'];
	
	$fileExt = explode('.',$fileName);
	$fileActuaLeXT = strtolower(end($fileExt));
	
	$allowed = array('jpg', 'jpeg', 'png', 'pdf');
	
	if(in_array($fileActualExt,$allowed)){
		if($fileError === 0{
			if($fileSize <1000000){
				$fileNameNew = uniqid('',true)."".$fileActualExt;
				$fileDestination = 'uploads'.$fileNameNew;
				move_uploaded_file($fileTmpName, $fileDestination );
				header("Location: loadBookStore.php?uploadsuccess");
			}else{
				echo "Your file is too big!"; 
			}
			}else{
				echo "There was an error uploading your file!";
			}
	}else{
		echo"You cannot upload this file"
	}
}
?>