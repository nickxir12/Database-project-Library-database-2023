<?php
include("connection.php");
include("functions.php");
$user_data = check_login($con);

$query1 = isset($_GET['query1']) ? $_GET['query1'] : '';
$query2 = isset($_GET['query2']) ? $_GET['query2'] : '';


// Retrieve categories from the database
$queryusers = "SELECT * FROM user WHERE school_name_FK = '{$user_data['school_name_FK']}'";
$resultusers = mysqli_query($con, $queryusers);
$users = array();
if ($resultusers && mysqli_num_rows($resultusers) > 0) {
    while ($row = mysqli_fetch_assoc($resultusers)) {
        $users[] = $row['user_id'];
    }
}

$queryCategories = "SELECT distinct category FROM category";
$resultCategories = mysqli_query($con, $queryCategories);
$categories = array();
if ($resultCategories && mysqli_num_rows($resultCategories) > 0) {
    while ($row = mysqli_fetch_assoc($resultCategories)) {
        $categories[] = $row['category'];
    }
}


    $sql1 = "WITH ratings AS (
                  SELECT rb.user_id_FK, rb.ISBN_FK, rb.Likert_rating AS average_rating
                  FROM RateBook rb
                  JOIN (SELECT DISTINCT user_id_FK FROM BorrowBook) bb ON rb.user_id_FK = bb.user_id_FK
                  JOIN (SELECT DISTINCT school_name_FK, user_id FROM User) u ON rb.user_id_FK = u.user_id
                  JOIN category c ON rb.ISBN_FK = c.ISBN_FK
                  WHERE u.school_name_FK = '$user_data[school_name_FK]'
                  AND rb.user_id_FK LIKE '%$query1%'
                  AND c.category LIKE '%$query2%'
                )
                SELECT AVG(r.average_rating) AS average_rating
                FROM ratings r;
                ";


$result1 = mysqli_query($con, $sql1);

?>

<!-- HTML code for displaying the search bars and the table -->
<!DOCTYPE html>
<html>
<head>
    <title>Library User Home Page</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">

    <style type="text/css">

        .order-buttons {
            margin-top: 20px;
            text-align: center;
        }

        .order-buttons button {
            margin: 10px;
            padding: 15px 30px;
            border: none;
            border-radius: 5px;
            background-color: brown;
            color: white;
            font-size: 18px;
            cursor: pointer;
            flex-basis: 200px;
            text-align: center;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #ffffff;
            text-align: center;
            font-size: 32px;
            margin: 0;
            padding: 20px 0;
            z-index: 1;
        }

        .list-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin: 0 auto; /* Add margin auto to center the table */
            max-width: 40%; /* Set max-width to adjust the width of the table */
            margin-top: 80px;
        }

        .table-container {
            position: relative;
            margin-top: 20px;
        }

        table {
            width: 50%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #aaaaaa;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .container {
            position: relative;
            margin-top: 40px;
        }

        .selected {
            background-color: #aaf3ff;
        }

        .no-results-message {
            text-align: center;
            font-size: 24px;
            margin-top: 40px;
            width: 40%;
            margin: 0 auto;
            background-color: #ff0000; /* Add background color */
            color: #ffffff; /* Set text color */
            padding: 10px; /* Add padding for better visibility */
        }

        .hidden {
            display: none;
        }
        .dropdown {
             position: relative;
             display: inline-block;
         }

         .dropdown select {
             padding: 8px 16px;
             font-size: 14px;
             border: none;
             border-radius: 4px;
             background-color: #f2f2f2;
             color: #333;
             appearance: none;
             -webkit-appearance: none;
             -moz-appearance: none;
             cursor: pointer;
         }

         .dropdown select:focus {
             outline: none;
         }

         .dropdown::after {
             content: '\25BC';
             position: absolute;
             top: 50%;
             right: 12px;
             transform: translateY(-50%);
             font-size: 12px;
             color: #999;
         }

         .no-results-message {
             text-align: center;
             font-size: 24px;
             margin-top: 40px;
             width: 40%;
             margin: 0 auto;
             background-color: #ff0000; /* Add background color */
             color: #ffffff; /* Set text color */
             padding: 10px; /* Add padding for better visibility */
         }

    </style>

</head>
<body>


<input class="button" id="button" type="button" value="Back to home" onclick="redirectToopHome()" style="position: absolute; top: 10px; right: 0; margin: 10px;"><br><br>


<div class="container">
    <div class="title-frame">
        <h1>Question 3.2.3</h1>
    </div>

        <form method="GET">
            <div class="search-bar"  style="margin-left:25% ;width: 50%;">

            <div class="dropdown">
            <select id="searchInput1" name="query1">
                <option value="">Select User ID   </option>
                <?php foreach ($users as $user) : ?>
                    <option value="<?php echo $user; ?>" <?php echo ($user === $query1) ? 'selected' : ''; ?>>
                        <?php echo $user; ?>
                    </option>
                <?php endforeach; ?>
            </select>
            </div>

            <div class="dropdown">
            <select id="searchInput3" name="query2">
                <option value="">Select category</option>
                <?php foreach ($categories as $category) : ?>
                    <option value="<?php echo $category; ?>" <?php echo ($category === $query2) ? 'selected' : ''; ?>>
                        <?php echo $category; ?>
                    </option>
                <?php endforeach; ?>
            </select>
            </div>

            <button type="submit" >Search</button>

        </form>
</div>
    <div class="table-container">
        <?php
           if (mysqli_num_rows($result1) > 0) {

               while ($row = mysqli_fetch_assoc($result1)) {
                   if($row['average_rating']==NULL){
                      echo "<p class='no-results-message'>No results found.</p>";
                   }
                   else{
                       echo "<table>";
                       echo "<tr><th>Average Rating</th></tr>";
                       echo "<tr>";
                       // echo "<td>" . $row["user_id_FK"] . "</td>";
                       // echo "<td>" . $row["category"] . "</td>";
                       echo "<td>" . $row['average_rating'] . "</td>";
                       echo "</tr>";
                   }
               }
               echo "</table>";
           }else{
              echo "<p class='no-results-message'>No results found.</p>";
           }

           ?>
    </div>



</body>
</html>
