<?php

//Connecting to database
	@ $db = new mysqli('localhost','cv','cv','kaay_cv');
	
	if(mysqli_connect_errno())
	{
		//error message if connection failed
		print "Error: Connection to database failed. Please try again later!!!";
	}
?>
