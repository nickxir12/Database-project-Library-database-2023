<?php

	include("connection.php");
	include("functions.php");
	include("userfunctions.php");
	// $user_data = check_login($con);

?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin queries</title>
	<script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">

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
		.custom-button {
			padding: 10px;
			width: 200px;
			.margin: auto;
			color: red;
			background-color: lightblue;
			border: none;
			margin-bottom: 10px; /* Add margin bottom to create space */
		}

        #box {
            background-color: black;
            margin: auto;
            width: 405px;
            padding: 20px;
        }
		#List313,#List314,#List317,#List316{
            display: none;
        }

        #List313,#List314,#List317,#List316{
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

    </style>

</head>
<body>

    <div id="box">

            <div style="font-size: 20px; margin: 10px; color: white;">Admin queries</div>

        <button class="custom-button" style="position: absolute; top: 10px; right: 0; margin: 10px;" onclick="redirectToAdmin()">Home</button>
		<button class="custom-button" onclick="redirectto311()">Question 3.1.1</button>
		<button class="custom-button" onclick="redirectto312()">Question 3.1.2</button>
		<button class="custom-button" onclick="showList('List313')">Question 3.1.3</button>
		<button class="custom-button" onclick="showList('List314')">Question 3.1.4</button>
		<button class="custom-button" onclick="redirectto315()">Question 3.1.5</button>
		<button class="custom-button" onclick="showList('List316')">Question 3.1.6</button>
		<button class="custom-button" onclick="showList('List317')">Question 3.1.7</button>

    </div>


</div>
<div class="container">
	<div class="list-container" id="List313">
		<h2>Question 3.1.3</h2>

	  <?php
	  $sql = "SELECT DISTINCT u.first_name,u.last_name,u.total_num_of_borrowed_books FROM User u JOIN BorrowBook bb
	  ON u.user_id = bb.user_id_FK
	  WHERE u.user_type = 'teacher'
	  AND DATE_ADD(birth_date, INTERVAL 40 YEAR) >= NOW()
	  ORDER BY u.total_num_of_borrowed_books DESC;";

	  $result = $con->query($sql);

	  if ($result->num_rows > 0) {
		echo '<table>';
		echo '<tr>';
		echo '<th>First name</th>';
		echo '<th>Last name</th>';
		echo '<th>Number of books</th>';
		echo '</tr>';
		while ($row = $result->fetch_assoc()) {
		  echo '<td>' . $row['first_name'] . '</td>';
		  echo '<td>' . $row['last_name'] . '</td>';
		  echo '<td>' . $row['total_num_of_borrowed_books'] . '</td>';
		  echo '</td>';
		  echo '</tr>';
		}
		echo '</table>';
	  } else {
		echo 'No users found.';
	  }
	  ?>
	</div>
  </div>

  <div class="container">
  	<div class="list-container" id="List314">
  		<h2>Question 3.1.4</h2>

  	  <?php
	  $sql = "SELECT author FROM Author
				  WHERE author_id IN (
				    SELECT author_id_FK FROM HasAuthor
				    WHERE ISBN_FK NOT IN (
				      SELECT DISTINCT ISBN_FK
				      FROM BorrowBook
				    )
				  );";

  	  $result = $con->query($sql);

  	  if ($result->num_rows > 0) {
  		echo '<table>';
  		echo '<tr>';
  		echo '<th>Author name</th>';
  		echo '</tr>';
  		while ($row = $result->fetch_assoc()) {
  		  echo '<td>' . $row['author'] . '</td>';
  		  echo '</td>';
  		  echo '</tr>';
  		}
  		echo '</table>';
  	  } else {
  		echo 'No users found.';
  	  }
  	  ?>
  	</div>
    </div>


	  <div class="container">
  	  <div class="list-container" id="List316">
  		  <h2>Question 3.1.6</h2>

  		<?php
  		$sql = "WITH top3 AS (
				  WITH liked AS (
				    SELECT bb.ISBN_FK
				    FROM BorrowBook bb
				    JOIN (
				        SELECT ISBN_FK
				        FROM category
				        GROUP BY ISBN_FK
				        HAVING COUNT(*) > 1
				    ) c ON bb.ISBN_FK = c.ISBN_FK
				  )
				  SELECT l.ISBN_FK, (
				    SELECT COUNT(*)
				    FROM BorrowBook
				    WHERE ISBN_FK = l.ISBN_FK
				  ) AS popularity FROM liked l
				  GROUP BY l.ISBN_FK
				  ORDER BY popularity DESC
				  LIMIT 3
				)
				SELECT top.ISBN_FK, c1.category as c1 , c2.category as c2, top.popularity
				FROM top3 top
				JOIN category c1 ON c1.ISBN_FK = top.ISBN_FK
				JOIN category c2 ON c2.ISBN_FK = top.ISBN_FK
				WHERE c1.category <> c2.category
				GROUP BY top.ISBN_FK;";

  		$result = $con->query($sql);

  		if ($result->num_rows > 0) {
  		  echo '<table>';
  		  echo '<tr>';
  		  echo '<th>Category 1</th>';
  		  echo '<th>Category 2</th>';
  		  echo '<th>Borrows</th>';
  		  echo '</tr>';
  		  while ($row = $result->fetch_assoc()) {
  			echo '<td>' . $row['c1'] . '</td>';
  			echo '<td>' . $row['c2'] . '</td>';
  			echo '<td>' . $row['popularity'] . '</td>';
  			echo '</td>';
  			echo '</tr>';
  		  }
  		  echo '</table>';
  		} else {
  		  echo 'No users found.';
  		}
  		?>
  	  </div>
  	  </div>


	  <div class="container">
		<div class="list-container" id="List317">
			<h2>Question 3.1.7</h2>

		  <?php
		  $sql = "WITH top_authors AS (
					    SELECT author_id_FK,(
					      SELECT COUNT(*)
					      FROM HasAuthor
					      WHERE author_id_FK = ha.author_id_FK
					    ) AS written_books FROM HasAuthor ha
					    GROUP BY ha.author_id_FK
					    ORDER BY written_books DESC
					  )
					  SELECT a.author, top.written_books
					  FROM top_authors top, author a
					  WHERE top.written_books <= (SELECT MAX(written_books) FROM top_authors) - 5
					  AND a.author_id = top.author_id_FK;";

		  $result = $con->query($sql);

		  if ($result->num_rows > 0) {
			echo '<table>';
			echo '<tr>';
			echo '<th>Author name</th>';
			echo '<th>Borrows</th>';
			echo '</tr>';
			while ($row = $result->fetch_assoc()) {
			  echo '<td>' . $row['author'] . '</td>';
			  echo '<td>' . $row['written_books'] . '</td>';
			  echo '</td>';
			  echo '</tr>';
			}
			echo '</table>';
		  } else {
			echo 'No users found.';
		  }
		  ?>
		</div>
		</div>
