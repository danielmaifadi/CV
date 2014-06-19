
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
	
	
		//Connect to database
		include("db_connection.php");
		
		//sql select Statement for contacts details
		$query = "select * from academic";
		$results = $db->query($query);
		
		$num_result = $results->num_rows;

		print "<div id=\"content\">";
			echo "<table align=\"center\" border=\"1\" bgcolor=\"black\">\n
					<tr>
						<td align=\"center\" colspan=\"6\" bgcolor=\"blue\">
							<strong><u>ACADEMICAL DETAILS</u></strong>
						</td>
					</tr>";
				
			for ($i=0; $i<$num_result; $i++) {
			
			$row = $results->fetch_assoc();
			
			echo "<tr>
					<td width=\"150\" height=\"30\">".$row[0]=$row['name_of_inst']."</td>
					<td width=\"150\" height=\"30\">".$row[1]=$row['course']."</td>
					<td width=\"150\" height=\"30\">".$row[2]=$row['s_field']."</td>
					<td width=\"150\" height=\"30\">".$row[3]=$row['q_type']."</td>
					<td width=\"150\" height=\"30\">".$row[4]=$row['duration']."</td>
					<td width=\"150\" height=\"30\">".$row[5]=$row['subject_to_com']."</td>
					</tr>";
			}
			echo "</table>
			
			<br /><br />";
			
			$query = "select * from subjects";
			$results = $db->query($query);
			
			$num_result = $results->num_rows;

			echo "<table align=\"center\" border=\"1\" bgcolor=\"grey\">\n
					<tr>
						<td align=\"center\" colspan=\"6\" bgcolor=\"blue\">
							<strong><u>SUBJECTS</u></strong>
						</td>
					</tr>";
				
			for ($i=0; $i<$num_result; $i++) {
			
			$row = $results->fetch_assoc();
			//displaying data
			echo "<tr>
					<td width=\"150\" height=\"30\">".$row[0]=$row['its']."</td>
					<td width=\"150\" height=\"30\">".$row[1]=$row['ssf']."</td>
					<td width=\"150\" height=\"30\">".$row[2]=$row['isy']."</td>
					<td width=\"150\" height=\"30\">".$row[3]=$row['tpg']."</td>
					<td width=\"150\" height=\"30\">".$row[4]=$row['dso']."</td>
					<td width=\"150\" height=\"30\">".$row[5]=$row['idc']."</td>
					</tr>";
			}
			echo "</table>";
			$query = "select * from subjects2";
			$results = $db->query($query);
			
			$num_result = $results->num_rows;

			echo "<table border=\"1\" bgcolor=\"aquar\">\n";
				
			for ($i=0; $i<$num_result; $i++) {
			
			$row = $results->fetch_assoc();
			
			echo "<tr>
					<td width=\"150\" height=\"30\">".$row[0]=$row['its']."</td>
					<td width=\"150\" height=\"30\">".$row[1]=$row['ssf']."</td>
					<td width=\"150\" height=\"30\">".$row[2]=$row['isy']."</td>
					<td width=\"150\" height=\"30\">".$row[3]=$row['tpg']."</td>
					<td width=\"150\" height=\"30\">".$row[4]=$row['dso']."</td>
					<td width=\"150\" height=\"30\">".$row[5]=$row['idc']."</td>
					</tr>";
			}
			echo "</table>";
		print "</div>";
		
	//end of php code
	?>
</body>
</html>
