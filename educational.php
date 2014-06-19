
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" type="text/css" href="login.css" media="all" />
</head>

<body background="bgPicture.jpg">
	<p id="header">
		<?php
		//start of php code
		
			//import header script
			include("header.php");
			
		//end of php code
		?>
	</p>
	<p align="center" id="links">
		<a href="index.php">Home<a>    |    
		<a href="personalDetails.php">Personal Details<a>    |    
		<a href="Contact.php">Contact Details<a>    |    
		<a href="educational.php">Educational Details<a>    |    
		<a href="academic.php">Academical Details<a>    |    
		<a href="languages.php">Languages<a>    |    
		<a href="references.php">References<a>
	</p>
	<br />
	<br />
	<?
	//start of php code
	
	
		//Connect to database
		include("db_connection.php");
		
		//sql select Statement for educational details
		$query = "select * from education";
		$results = $db->query($query);
		
		$num_result = $results->num_rows;
		
	//displaying data
		print "<div id=\"content\">";
			echo "<table align=\"center\" border=\"1\" bgcolor=\"black\">\n
					<tr>
						<td align=\"center\" colspan=\"3\" bgcolor=\"blue\">
							<strong><u>EDUCATIONAL DETAILS</u></strong>
						</td>
					</tr>";
				
			for ($i=0; $i<$num_result; $i++) {
			
			$row = $results->fetch_assoc();
			
			echo "<tr>
					<td width=\"150\" height=\"30\">".$row[0]=$row['school']."</td>
					<td width=\"150\" height=\"30\">".$row[1]=$row['last_grade']."</td>
					<td width=\"150\" height=\"30\">".$row[2]=$row['year']."</td>
					</tr>";
			}
			echo "</table>";
		print "</div>";
		
	//end of php code
	?>
</body>
</html>
