<?php
	$con=mysqli_connect("localhost","user","uarfqnfdavcq1","trackingbase");
	if (mysqli_connect_errno()) {
		echo "Failed to connect to MySQL: " . mysqli_connect_error();
	}
	$active_row_number = 1;
	if ($_GET["newxsrequest"]=="true"){
		$result = mysqli_query($con,"SELECT row_number FROM maintable ORDER BY row_number DESC LIMIT 1");
		while($row = mysqli_fetch_array($result)) {
			$active_row_number = $row['row_number'];
		}
		$result = mysqli_query($con,"UPDATE tmp_storage SET active_row_number_from_bs=$active_row_number WHERE order_number=1");
	}
	else if ($_GET["newxsrequest"]=="false"){
		$result = mysqli_query($con,"SELECT active_row_number_from_bs FROM tmp_storage WHERE order_number='1'");
		while($row = mysqli_fetch_array($result)) {
			$active_row_number = $row['active_row_number_from_bs'];
		}
	}
	if ($_GET["latest_value"]=="x"){
		$result = mysqli_query($con,"SELECT x FROM maintable WHERE row_number = '$active_row_number'");
		while($row = mysqli_fetch_array($result)) {
			echo $row['x'];
		}
	}
	if ($_GET["latest_value"]=="y"){
		$result = mysqli_query($con,"SELECT y FROM maintable WHERE row_number = '$active_row_number'");
		while($row = mysqli_fetch_array($result)) {
			echo $row['y'];
		}
	}
	if ($_GET["raw_var"]){
		mysqli_query($con,"INSERT INTO rawdata (crd, n) VALUES ('$_GET[raw_var]', NULL)");
		$xi = 0;
		$xiflag = 0;
		while ($xi != 26){
			if ((substr( $_GET[raw_var] , $xi , 1 )) == "y" ){
				$xiflag = 1;
			}
			$xi = $xi + 1;
		}
		if ($xiflag == 0){
			if ((substr( $_GET[raw_var] , 11 , 1 )) == "N" ){
				$x_pos_r = (substr( $_GET[raw_var] , 0 , 2 ))+((substr( $_GET[raw_var] , 2 , 2 ))/60)+((substr( $_GET[raw_var] , 5 , 5 ))/6000000);
			}
			else if ((substr( $_GET[raw_var] , 11 , 1 )) == "S" ){
				$x_pos_r = (substr( $_GET[raw_var] , 0 , 2 ))+((substr( $_GET[raw_var] , 2 , 2 ))/60)+((substr( $_GET[raw_var] , 5 , 5 ))/6000000);
				$x_pos_r = $x_pos_r-($x_pos_r*2);
			}
			if ((substr( $_GET[raw_var] , 25 , 1 )) == "E" ){
				$y_pos_r = (substr( $_GET[raw_var] , 13 , 3 ))+((substr( $_GET[raw_var] , 16 , 2 ))/60)+((substr( $_GET[raw_var] , 19 , 5 ))/6000000);
			}
			else if ((substr( $_GET[raw_var] , 25 , 1 )) == "W" ){
				$y_pos_r = (substr( $_GET[raw_var] , 13 , 3 ))+((substr( $_GET[raw_var] , 16 , 2 ))/60)+((substr( $_GET[raw_var] , 19 , 5 ))/6000000);
				$y_pos_r = $y_pos_r-($y_pos_r*2);
			}
			mysqli_query($con,"INSERT INTO maintable (x, y) VALUES ('$x_pos_r', '$y_pos_r')");
		}
		echo "GDpOK";
	}
	mysqli_close($con);
?>