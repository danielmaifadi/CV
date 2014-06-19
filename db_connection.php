<?php

//Connecting to database
	@ $db = new mysqli('localhost','cv','cv','kaay_cv');
	
	if(mysqli_connect_errno())
	{
		print "Error: Connection to database failed. Please try again later!!!";
	}
?>