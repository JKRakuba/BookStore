<?php

include "DBConn.php";

CREATE TABLE  `tbluser` (
  `StudentNo` int(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(50) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
COMMIT;

$create$tbluser = mysqli_query($conn,$tbluser)
if(!$tbluser  )
{
	echo("<br>Error Description" .mysqli_error($conn));
}
else
{
	echo("<br> Table was create successfully!!!");
}
IF  NOT EXISTS (SELECT * FROM bookstore 
WHERE id = ID(N'[dbo].[YourTable]') AND type in (N'U'))

BEGIN
CREATE TABLE [dbo].[YourTable](
    ....
    ....
    ....
) 

END
?>