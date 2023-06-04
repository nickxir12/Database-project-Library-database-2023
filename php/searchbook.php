<?php
include("connection.php");
include("functions.php");
$user_data = check_login($con);

$query1 = isset($_GET['query1']) ? $_GET['query1'] : '';
$query2 = isset($_GET['query2']) ? $_GET['query2'] : '';
$query3 = isset($_GET['query3']) ? $_GET['query3'] : '';
$query4 = isset($_GET['query4']) ? $_GET['query4'] : '';
$order = isset($_GET['order']) ? $_GET['order'] : '';


// Retrieve categories from the database
$queryCategories = "SELECT distinct category FROM category";
$resultCategories = mysqli_query($con, $queryCategories);
$categories = array();
if ($resultCategories && mysqli_num_rows($resultCategories) > 0) {
    while ($row = mysqli_fetch_assoc($resultCategories)) {
        $categories[] = $row['category'];
    }
}

$querytitles = "SELECT distinct title FROM books order by title";
$resulttitles = mysqli_query($con, $querytitles);
$titles = array();
if ($resulttitles && mysqli_num_rows($resulttitles) > 0) {
    while ($row = mysqli_fetch_assoc($resulttitles)) {
        $titles[] = $row['title'];
    }
}

$queryAuthors = "SELECT DISTINCT author FROM author order by author";
$resultAuthors = mysqli_query($con, $queryAuthors);
$authors = array();
if ($resultAuthors && mysqli_num_rows($resultAuthors) > 0) {
    while ($row = mysqli_fetch_assoc($resultAuthors)) {
        $authors[] = $row['author'];
    }
}




    $sql = "SELECT DISTINCT b.*
        FROM books AS b
        JOIN hasbook AS hb ON hb.ISBN_FK = b.ISBN
        JOIN hasauthor AS ha ON ha.ISBN_FK = b.ISBN";

if (!empty($query3)) {
    $sql .= " JOIN category AS c ON c.ISBN_FK = b.ISBN";
}

$sql .= " WHERE 1 = 1";

if (!empty($query1)) {
    $sql .= " AND b.title LIKE '%$query1%'";
}

if (!empty($query2)) {
    $sql .= " AND ha.author_id_FK IN (SELECT author_id FROM Author WHERE author LIKE '%$query2%')";
}

if (!empty($query3)) {
    $sql .= " AND c.category LIKE '%$query3%'";
}

if (!empty($query4)) {
    $sql .= " AND hb.available_copies = '$query4'";
}

if ($user_data['user_type'] == 'school_lib_operator') {
    $sql .= " AND hb.school_name_FK = '$user_data[school_name_FK]'";
}

if (!empty($order)) {
    switch ($order) {
        case 'title':
            $sql .= " ORDER BY b.title ASC";
            break;
    }
}

$sql .= ";";


$result = mysqli_query($con, $sql);
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

<?php if ($user_data['user_type'] == 'school_lib_operator') : ?>
    <input class="button" id="button" type="button" value="Back to home" onclick="redirectToopHome()" style="position: absolute; top: 10px; right: 0; margin: 10px;"><br><br>
<?php else : ?>
    <input class="button" id="button" type="button" value="Back to home" onclick="redirectToHome()" style="position: absolute; top: 10px; right: 0; margin: 10px;"><br><br>
<?php endif ?>

<div class="container">
    <div class="title-frame">
        <h1>Search by Title, Author, and Category</h1>
    </div>

        <form method="GET">
        <div class="search-bar"  style="margin-left:25% ;width: 50%;">
            <div class="dropdown">
            <select id="searchInput1" name="query1">
                <option value="">Select Ttile</option>
                <?php foreach ($titles as $title) : ?>
                    <option value="<?php echo $title; ?>" <?php echo ($title === $query1) ? 'selected' : ''; ?>>
                        <?php echo $title; ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>

        <div class="dropdown">
            <select id="searchInput2" name="query2">
                <option value="">Select author</option>
                <?php foreach ($authors as $author) : ?>
                    <option value="<?php echo $author; ?>" <?php echo ($author === $query2) ? 'selected' : ''; ?>>
                        <?php echo $author; ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>

            <div class="dropdown">
            <select id="searchInput3" name="query3">
                <option value="">Select category</option>
                <?php foreach ($categories as $category) : ?>
                    <option value="<?php echo $category; ?>" <?php echo ($category === $query3) ? 'selected' : ''; ?>>
                        <?php echo $category; ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
            <?php if ($user_data['user_type'] == 'school_lib_operator') : ?>
                <input type="text" id="searchInput4" name="query4" placeholder="Enter copies" value="<?php echo isset($_GET['query4']) ? $_GET['query4'] : ''; ?>">
            <?php endif; ?>
            <button type="submit" >Search</button>
        </div>
        </form>


    <div class="order-buttons">
    <button onclick="orderByTitle()">Order by Title</button>
    </div>

    <div class="table-container">
        <?php
        if (mysqli_num_rows($result) > 0) {
            echo "<table>";
            echo "<tr><th>Title</th><th>Authors</th></tr>";
            while ($row = mysqli_fetch_assoc($result)) {
                $bookISBN = $row['ISBN'];
                $queryAuthors = "SELECT author FROM author
                                        WHERE author_id
                                        IN (SELECT author_id_FK FROM hasauthor WHERE ISBN_FK = '$bookISBN')";
                $resultAuthors = mysqli_query($con, $queryAuthors);
                $authors = array();
                while ($authorRow = mysqli_fetch_assoc($resultAuthors)) {
                    $authors[] = $authorRow['author'];
                }
                echo '<tr onclick="redirectToBookPage(\'' . $row['ISBN'] . '\')">';
                echo "<td>" . $row["title"] . "</td>";
                echo "<td>" . implode(', ', $authors) . "</td>";
                echo "</tr>";
            }
            echo "</table>";
        } else {
            echo "<p class='no-results-message'>No results found.</p>";
        }
        ?>
    </div>
</div>

<script>

function orderByTitle() {
    var url = window.location.pathname + '?query1=<?php echo urlencode($query1) ?>&query2=<?php echo urlencode($query2) ?>&query3=<?php echo urlencode($query3) ?>';

    <?php if ($user_data['user_type'] == 'school_lib_operator') : ?>
        url += '&query4=<?php echo urlencode($query4) ?>';
    <?php endif; ?>

    url += '&order=title';

    window.location.href = url;
}


</script>


</body>
</html>
