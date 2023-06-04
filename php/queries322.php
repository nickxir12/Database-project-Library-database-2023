<?php
include("connection.php");
include("functions.php");
$user_data = check_login($con);

$query1 = isset($_GET['query1']) ? $_GET['query1'] : '';
$query2 = isset($_GET['query2']) ? $_GET['query2'] : '';
$query3 = isset($_GET['query3']) ? $_GET['query3'] : '';

// Retrieve categories from the database
$queryusers = "SELECT * FROM user";
$resultusers = mysqli_query($con, $queryusers);
$first_names = array();
$last_names = array();
if ($resultusers && mysqli_num_rows($resultusers) > 0) {
    while ($row = mysqli_fetch_assoc($resultusers)) {
        $first_names[] = $row['first_name'];
        $last_names[] = $row['last_name'];
    }
}

$sql1 = "SELECT u.first_name, u.last_name, DATEDIFF(NOW(), bb.due_date) AS late_days
            FROM BorrowBook bb
            JOIN (
                SELECT first_name, last_name, user_id
                FROM User
                WHERE first_name LIKE '%$query1%' AND last_name LIKE '%$query2%'
            ) AS u ON bb.user_id_FK = u.user_id
            WHERE bb.return_date IS NULL
              AND bb.late = '1'
              AND DATEDIFF(NOW(), bb.due_date) >= '$query3';
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
        <h1>Question 3.2.2</h1>
    </div>

        <form method="GET">
            <div class="search-bar"  style="margin-left:25% ;width: 50%;">

            <div class="dropdown">
            <select id="searchInput1" name="query1">
                <option value="">Select first name</option>
                <?php foreach ($first_names as $first_name) : ?>
                    <option value="<?php echo $first_name; ?>" <?php echo ($first_name === $query1) ? 'selected' : ''; ?>>
                        <?php echo $first_name; ?>
                    </option>
                <?php endforeach; ?>
            </select>
            </div>

            <div class="dropdown">
            <select id="searchInput1" name="query2">
                <option value="">Select last name</option>
                <?php foreach ($last_names as $last_name) : ?>
                    <option value="<?php echo $last_name; ?>" <?php echo ($last_name === $query2) ? 'selected' : ''; ?>>
                        <?php echo $last_name; ?>
                    </option>
                <?php endforeach; ?>
            </select>
            </div>

            <div class="dropdown">
                <select id="searchInput1" name="query3">
                    <option value="">Select days late</option>
                    <?php
                    for ($i = 1; $i <= 30; $i++) {
                        echo "<option value='$i'>$i</option>";
                    }
                    ?>
                </select>
            </div>

            <button type="submit" >Search</button>

        </form>
            </div>
        <div class="table-container">
        <?php
           if (mysqli_num_rows($result1) > 0) {
               echo "<table>";
               echo "<tr><th>First name</th><th>Last name</th><th>Days late</th></tr>";
               while ($row = mysqli_fetch_assoc($result1)) {
                   echo "<tr>";
                   echo "<td>" . $row["first_name"] . "</td>";
                   echo "<td>" . $row["last_name"] . "</td>";
                   echo "<td>" . $row["late_days"] . "</td>";
                   echo "</tr>";
               }
               echo "</table>";

           } else {
               echo "<p class='no-results-message'>No results found.</p>";
           }
           ?>
        </div>
</div>



</body>
</html>
