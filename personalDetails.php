
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
		
			//import the header script
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
	<?php
	//start of php code
	
	 
		//Connect to database/import the connection script
		include("db_connection.php");
		
		//sql select Statement for personal details
		$query = "select * from personal_details";
		$results = $db->query($query);
		
		$num_result = $results->num_rows;
		
		//displaying data
		print "<div id=\"content\">";
			echo "<table align=\"center\" border=\"1\"bgcolor=\"black\">\n
					<tr>
						<td align=\"center\" colspan=\"10\" bgcolor=\"blue\">
							<strong><u>PERSONAL DETAILS</u></strong>
						</td>
					</tr>";
				
			for ($i=0; $i<$num_result; $i++) {
			
			$row = $results->fetch_assoc();
			
			echo "<tr>
					<td width=\"150\" height=\"30\">".$row[0]=$row['surname']."</td>
					 
					<td width=\"150\" height=\"30\">".$row[1]=$row['name']."</td>
					 
					<td width=\"150\" height=\"30\">".$row[2]=$row['gender']."</td>
					<td width=\"150\" height=\"30\">".$row[3]=$row['id_numbere']."</td>
					<td width=\"150\" height=\"30\">".$row[4]=$row['h_language']."</td>
					<td width=\"150\" height=\"30\">".$row[5]=$row['m_status']."</td>
					<td width=\"150\" height=\"30\">".$row[6]=$row['h_status']."</td>
					<td width=\"150\" height=\"30\">".$row[7]=$row['region']."</td>
					<td width=\"150\" height=\"30\">".$row[8]=$row['nationality']."</td>
					<td width=\"150\" height=\"30\">".$row[9]=$row['C_offence']."</td>
					</tr>";
			}
			echo "</table>";
		print "</div>";
		
	//end of php code
	?>
</body>
</html>
