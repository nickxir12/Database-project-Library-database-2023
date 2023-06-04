<?php
include("connection.php");
include("functions.php");
include("userfunctions.php");
$user_data = check_login($con);

$userResults = array();
$bookResults = array();

$userQuery = '';

if ($_SERVER["REQUEST_METHOD"] === "GET") {
    if (isset($_GET['userQuery'])) {
        $userQuery = $_GET['userQuery'];

        // Perform the database query to search users by username
        $userSql = "SELECT *
                    FROM user
                    WHERE username LIKE '%$userQuery%'
                    AND (
                        (number_of_borrowed_books < 2 AND user_type = 'student')
                        OR
                        (number_of_borrowed_books < 1 AND user_type = 'teacher')
                        OR
                        (number_of_borrowed_books < 2 AND user_type = 'school_lib_operator')
                    )
                    AND user_id NOT IN (
                        SELECT user_id_FK
                        FROM borrowbook
                        WHERE late > 0
                    )
                    AND school_name_FK = '{$user_data['school_name_FK']}'";


        $userResult = $con->query($userSql);

        if ($userResult->num_rows > 0) {
            while ($row = $userResult->fetch_assoc()) {
                $userResults[] = $row;
            }
        }
    }

    if (isset($_GET['bookQuery'])) {
        $bookQuery = $_GET['bookQuery'];

        // Perform the database query to search books by title
        if (isset($_GET['selectedUser'])) {
            $userId = $_GET['selectedUser'];

            $bookSql = "SELECT b.*
                            FROM books b
                            INNER JOIN hasbook hb ON b.ISBN = hb.ISBN_FK
                            WHERE b.title LIKE '%$bookQuery%'
                            AND hb.school_name_FK = (SELECT school_name_fk FROM user WHERE user_id = '$userId') AND hb.available_copies > 0
                            AND b.ISBN NOT IN (SELECT ISBN_FK FROM BORROWBOOK WHERE user_id_FK IN (SELECT user_id FROM user WHERE username LIKE '%$userQuery%') AND return_date IS NOT NULL)";


            $bookResult = $con->query($bookSql);

            if ($bookResult->num_rows > 0) {
                while ($row = $bookResult->fetch_assoc()) {
                    $bookResults[] = $row;
                }
            }
        }
    }
}

if (isset($_POST['deleteButton'])) {
    $userId = $_POST['selectedUser'];
    $bookISBN = $_POST['selectedBook'];
    // Perform the desired action with $userId and $bookISBN
    // For example, you can call a function to handle the borrowing process
    borrowBook($userId, $bookISBN);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Search Users and Books</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">
    <style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        h2 {
            color: #ffffff;
            text-align: center;
            font-size: 32px;
            margin: 0;
            padding: 20px 0;
            z-index: 1;
        }

        .search-container {
            height:auto;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
        }

        .search-bar {
            margin: 10px;
        }

        .search-bar input {
            padding: 10px;
            font-size: 16px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .search-results {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .search-results select {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            font-size: 16px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }

        .submit-button {
            text-align: center;
            margin-top: 20px;
        }

        .submit-button input[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 4px;
            background-color: #4caf50;
            color: #ffffff;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<h2>Search Users and Books</h2>
<div class="search-container">
    <div class="search-bar">
        <form action="instantborrow.php" method="get">
            <input type="text" name="userQuery" placeholder="Search users by username...">
            <input type="submit" value="Search">
        </form>
    </div>
    <div class="search-results">
        <form action="instantborrow.php" method="get">
            <select name="selectedUser">
                <option value="">Select a user</option>
                <?php foreach ($userResults as $result) : ?>
                    <option value="<?php echo $result['user_id']; ?>"><?php echo $result['username']; ?></option>
                <?php endforeach; ?>
            </select>
            <input type="submit" class="button" style="margin-left:140px" value="Next">
        </form>
    </div>
    <div class="search-bar">
        <form action="instantborrow.php" method="get">
            <input type="text" name="bookQuery" placeholder="Search books by title...">
            <input type="hidden" name="selectedUser" value="<?php echo isset($_GET['selectedUser']) ? $_GET['selectedUser'] : ''; ?>">
            <input type="submit" value="Search">
        </form>
    </div>
    <div class="search-results" >
        <form method="post">
            <select name="selectedBook">
                <option value="">Select a book</option>
                <?php foreach ($bookResults as $result) : ?>
                    <option value="<?php echo $result['ISBN']; ?>"><?php echo $result['title']; ?></option>
                <?php endforeach; ?>
            </select>
            <input type="hidden" name="selectedUser" value="<?php echo isset($_GET['selectedUser']) ? $_GET['selectedUser'] : ''; ?>">
            <input class="button" style="margin-left:130px" type="submit" name="deleteButton" value="Borrow">
        </form>
    </div>
</div>
</body>
</html>
