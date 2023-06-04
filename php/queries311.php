<?php
	include("connection.php");
	include("functions.php");
	include("userfunctions.php");


	$message = ""; // Variable to store any error messages
	$result = null; // Initialize $result variable

	if ($_SERVER['REQUEST_METHOD'] == "POST") {
	    // Something was posted
		$start_date = $_POST['start_date'];
		$end_date = $_POST['end_date'];
		$school_name = $_POST['School'];

		$sql = "SELECT * FROM borrowbook WHERE
				user_id_FK IN
				(SELECT user_id FROM User WHERE school_name_FK = '$school_name')
				AND (borrow_date > '$start_date' AND borrow_date < '$end_date')";

		$result = $con->query($sql);
		if ($result && $result->num_rows > 0) {
		// Query executed successfully and returned results
		$message = ""; // Clear any previous error messages
	} else {
		// Query did not return any results
		$message = "No borrowings found.";
	}
	}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin actions</title>
	<script src="listshowing.js"></script>
	<script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
</head>
<body>
	<input class="button" id="button" type="button" value="Back to queries menu" onclick="redirecttoQueries()" style="position: absolute; top: 10px; right: 0; margin: 10px;"><br><br>

    <style>
        .message-box {
            display: none;
            width: 300px;
            height: 20px;
            background: #f2f2f2;
            border: 1px solid #ccc;
            text-align: center;
            padding: 10px;
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
    </style>

    <style type="text/css">


        #text {
            height: 25px;
            border-radius: 5px;
            padding: 4px;
            border: solid thin #aaa;
            width: 100%;
        }

		th, td {
		  padding: 12px;
		  border: 1px solid #ccc;
		}

		th {
		  background-color: #f2f2f2;
		}
		.container {
		  margin-bottom: 40px;
		}

		#box {
	    background-color: black;
	    margin: auto;
	    width: 405px;
	    padding: 20px;
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    flex-direction: column;
	  }

	  .custom-button {
	    padding: 10px;
	    width: 200px;
	    margin-top: 10px;
			margin-left: 100px;
	    color: black;
	    background-color: lightblue;
	    border: none;
	  }

		#schoolList{
            display: none;
        }

            #totalBorrows{
              background-color: #fff;
              padding: 20px;
              border-radius: 8px;
              box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
              text-align: center;
              margin: 0 auto;
              max-width: 40%;
            }
			.list-container {
		        margin: 0 auto;
		        max-width: 100%;
		        text-align: center;
		    }
			.list-container table {
		        width: 100%;
		    }
			.table{
				margin:auto;
			}

			label[for="start_date"] {
				color: white;
			}

			label[for="end_date"] {
				color: white;
			}

    </style>

		<div id="box">
		    <form method="post">
		        <div style="font-size: 20px; margin: 10px; color: white;">School Borrowings</div><br>

		        <label for="start_date">Start Date:</label>
		        <input type="date" id="Start Date" name="start_date">

		        <label for="end_date">End Date:</label>
		        <input type="date" id="End Date" name="end_date"><br><br>

						<div class="form-group">
								<label for="School" style="color: white;">School Name:</label>
								<div class="row">
										<div class="col-md-6">
												<select class="form-control" id="School" name="School">
														<?php
														// Perform database query to fetch options for all schools
														$query3 = "SELECT school_name FROM school";
														$result3 = $con->query($query3);

														if ($result3->num_rows > 0) {
																while ($row = $result3->fetch_assoc()) {
																		$schoolId = $row['school_name'];
																		$schoolName = $row['school_name'];
																		echo '<option value="' . $schoolId . '">' . $schoolName . '</option>';
																}
														} else {
																echo '<option value="">No schools found</option>';
														}
														?>
												</select>
										</div>
								</div>
						</div>

		        <button class="custom-button" type="submit" name="submit">Show Borrowings</button>
		    </form>
		</div>


	<div class="container">
	    <div class="list-container" id="totalBorrows">
	        <h2>Total Borrows</h2>
	        <?php
				if ($result) {
					if($result->num_rows > 0){
					echo '<table>';
					echo '<tr>';
					echo '<th>user id</th>';
					echo '<th>isbn</th>';
					echo '<th>borrow date</th>';
					echo '<th>return date</th>';
					echo '<th>due date</th>';
					echo '</tr>';
					while ($row = $result->fetch_assoc()) {
						echo '<tr>';
						echo '<td style="background-color: white;">' . $row['user_id_FK'] . '</td>';
						echo '<td style="background-color: white;">' . $row['ISBN_FK'] . '</td>';
						echo '<td style="background-color: white;">' . $row['borrow_date'] . '</td>';
						echo '<td style="background-color: white;">' . $row['return_date'] . '</td>';
						echo '<td style="background-color: white;">' . $row['due_date'] . '</td>';
						echo '</tr>';
					}
					echo '</table>';
				}else {
					echo 'No borrowings found.';
				}
				} else {
					echo 'No criteria entered.';
				}
	        ?>
	    </div>
	</div>

</body>
</html>
