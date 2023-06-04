<?php
include("connection.php");
include("functions.php");
$user_data = check_login($con);

$query1 = isset($_GET['query1']) ? $_GET['query1'] : '';

// Retrieve categories from the database
$queryCategories = "SELECT distinct category FROM category";
$resultCategories = mysqli_query($con, $queryCategories);
$categories = array();
if ($resultCategories && mysqli_num_rows($resultCategories) > 0) {
    while ($row = mysqli_fetch_assoc($resultCategories)) {
        $categories[] = $row['category'];
    }
}

$sql1 = "SELECT u.first_name, u.last_name
    FROM User u
    JOIN BorrowBook bb ON u.user_id = bb.user_id_FK
    WHERE u.user_type = 'teacher'
    AND DATE_ADD(bb.borrow_date, INTERVAL 1 YEAR) >= NOW()
    AND bb.ISBN_FK IN (
        SELECT ISBN_FK
        FROM category
        WHERE category = '$query1'
    );";

$result1 = mysqli_query($con, $sql1);

$sql2 = "SELECT author FROM Author
    WHERE author_id IN (
        SELECT author_id_FK
        FROM HasAuthor
        WHERE ISBN_FK IN (
            SELECT ISBN_FK
            FROM category
            WHERE category = '$query1'
        )
    );";

$result2 = mysqli_query($con, $sql2);
?>

<!-- HTML code for displaying the search bars and the table -->
<!DOCTYPE html>
<html>
<head>
    <title>Library User Home Page</title>
    <script src="listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">

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
            margin-bottom: 40px;
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
    </style>

</head>
<body>


    <input class="button" id="button" type="button" value="Back to queries menu" onclick="redirecttoQueries()" style="position: absolute; top: 10px; right: 0; margin: 10px;"><br><br>


<div class="container">
    <div class="title-frame">
        <h1>Question 3.1.2</h1>
    </div>

        <form method="GET">
            <div class="search-bar"  style="margin-left:25% ;width: 50%;">
            <div class="dropdown">
            <select id="searchInput1" name="query1">
                <option value="">Select category</option>
                <?php foreach ($categories as $category) : ?>
                    <option value="<?php echo $category; ?>" <?php echo ($category === $query1) ? 'selected' : ''; ?>>
                        <?php echo $category; ?>
                    </option>
                <?php endforeach; ?>
            </select>

            </div>
            <button type="submit" name="button1">Teachers borrowing from this category</button>
            <button type="submit" name="button2">Authors of this category</button>
        </div>
        </form>

        <?php
           if (isset($_GET['button1']) && mysqli_num_rows($result1) > 0) {
               echo "<div class='table-container'>";
               echo "<table>";
               echo "<tr><th>First name</th><th>Last name</th></tr>";
               while ($row = mysqli_fetch_assoc($result1)) {
                   echo "<tr>";
                   echo "<td>" . $row["first_name"] . "</td>";
                   echo "<td>" . $row["last_name"] . "</td>";
                   echo "</tr>";
               }
               echo "</table>";
               echo "</div>";
           } elseif (isset($_GET['button2']) && mysqli_num_rows($result2) > 0) {
               echo "<div class='table-container'>";
               echo "<table>";
               echo "<tr><th>Author</th></tr>";
               while ($row = mysqli_fetch_assoc($result2)) {
                   echo "<tr>";
                   echo "<td>" . $row["author"] . "</td>";
                   echo "</tr>";
               }
               echo "</table>";
               echo "</div>";
           } elseif (isset($_GET['button1']) || isset($_GET['button2'])) {
               echo "<p class='no-results-message'>No results found.</p>";
           }
           ?>
</div>



</body>
</html>
