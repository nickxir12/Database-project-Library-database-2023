<?php
include("connection.php");
include("functions.php");
$user_data = check_login($con);

$title = ""; // Default value

if (isset($_GET['isbn'])) {
    $encodedIsbn = $_GET['isbn'];
    $query1 = "SELECT * FROM books WHERE ISBN='$encodedIsbn'";
    $result1 = mysqli_query($con, $query1);

    if ($result1 && mysqli_num_rows($result1) > 0) {
        $book = mysqli_fetch_assoc($result1);
    }

    $copiesQuery = "SELECT available_copies FROM hasbook WHERE ISBN_FK='$encodedIsbn'";
    $copiesResult = mysqli_query($con, $copiesQuery);
    if ($copiesResult && mysqli_num_rows($copiesResult) > 0) {
        $copiesRow = mysqli_fetch_assoc($copiesResult);
        $copies = $copiesRow['available_copies'];
    }

}

$query2 = "SELECT author.author_id, author.author FROM author INNER JOIN hasauthor ON author.author_id = hasauthor.author_id_FK WHERE hasauthor.ISBN_FK = '$encodedIsbn'";
$result2 = mysqli_query($con, $query2);
$authors = array();

$query3 = "SELECT * FROM category WHERE category.ISBN_FK = '$encodedIsbn'";
$result3 = mysqli_query($con, $query3);
$categories = array();

$query4 = "SELECT * FROM keyword WHERE keyword.ISBN_FK = '$encodedIsbn'";
$result4 = mysqli_query($con, $query4);
$keywords = array();

if ($result2 && mysqli_num_rows($result2) > 0) {
    while ($row = mysqli_fetch_assoc($result2)) {
        $authors[] = $row;
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['update'])) {

        $newTitle = $_POST['title'];
        $newPublisher = $_POST['publisher'];
        $newLanguage = $_POST['language'];
        $newPageNumber = $_POST['page_number'];
        $newSummary = $_POST['summary'];
        $newCopies = $_POST['copies'];


        $query = "UPDATE books SET title='$newTitle', publisher='$newPublisher', language='$newLanguage', page_number='$newPageNumber', summary='$newSummary' WHERE ISBN='$encodedIsbn'";
        $result = mysqli_query($con, $query);
        if ($result) {

            $updateCopiesQuery = "UPDATE hasbook SET available_copies='$newCopies' WHERE ISBN_FK='$encodedIsbn'";
            mysqli_query($con, $updateCopiesQuery);

            // Update the authors in hasauthor table
            $updatedAuthors = $_POST['authors'];

            // Delete existing author entries for the book
            $deleteQuery = "DELETE FROM hasauthor WHERE ISBN_FK='$encodedIsbn'";
            mysqli_query($con, $deleteQuery);

            // Insert the updated authors into hasauthor table
            foreach ($updatedAuthors as $authorId => $authorName) {

                $ifQuery = "SELECT COUNT(*) as count FROM author WHERE author = '$authorName'";
                $ifResult = mysqli_query($con, $ifQuery);

                if ($ifResult && mysqli_num_rows($ifResult) > 0) {
                    $row = mysqli_fetch_assoc($ifResult);
                    $authorCount = $row['count'];
                    if ($authorCount == 0) {
                        $insertAuthorQuery = "INSERT INTO author (author) VALUES ('$authorName')";
                        mysqli_query($con, $insertAuthorQuery);

                        // Retrieve the newly inserted author ID
                        $newAuthorId = mysqli_insert_id($con);
                        // Use the new author ID in the hasauthor insert query
                        $insertQuery = "INSERT INTO hasauthor (ISBN_FK, author_id_FK) VALUES ('$encodedIsbn', '$newAuthorId')";
                        mysqli_query($con, $insertQuery);
                    } else {
                        // Retrieve the existing author ID
                        $existingAuthorQuery = "SELECT author_id FROM author WHERE author = '$authorName'";
                        $existingAuthorResult = mysqli_query($con, $existingAuthorQuery);
                        if ($existingAuthorResult && mysqli_num_rows($existingAuthorResult) > 0) {
                            $row = mysqli_fetch_assoc($existingAuthorResult);
                            $existingAuthorId = $row['author_id'];
                            // Use the existing author ID in the hasauthor insert query
                            $insertQuery = "INSERT INTO hasauthor (ISBN_FK, author_id_FK) VALUES ('$encodedIsbn', '$existingAuthorId')";
                            mysqli_query($con, $insertQuery);
                        }
                    }
                }
            }


            // Update the categories for the book
            $updatedCategories = $_POST['categories'];

            // Delete existing category entries for the book
            $deleteQuery = "DELETE FROM category WHERE ISBN_FK='$encodedIsbn'";
            mysqli_query($con, $deleteQuery);

            // Insert the updated categories into category table
            foreach ($updatedCategories as $category) {
                $insertQuery = "INSERT INTO category (ISBN_FK, category) VALUES ('$encodedIsbn', '$category')";
                mysqli_query($con, $insertQuery);
            }

            // Update the keywords for the book
            $updatedKeywords = $_POST['keywords'];

            // Delete existing keyword entries for the book
            $deleteQuery = "DELETE FROM keyword WHERE ISBN_FK='$encodedIsbn'";
            mysqli_query($con, $deleteQuery);

            // Insert the updated keywords into keyword table
            foreach ($updatedKeywords as $keyword) {
                $insertQuery = "INSERT INTO keyword (ISBN_FK, keyword) VALUES ('$encodedIsbn', '$keyword')";
                mysqli_query($con, $insertQuery);
            }

            if ($user_data['user_type'] == 'school_lib_operator') {
                header("Location: school_lib_operator.php");
                exit;
            } else {
                header("Location: users.php");
                exit;
            }



        } else {
            echo 'Error updating book information.';
        }



    }
    else {
        echo 'Error updating book information.';
    }

}
?>

<!-- HTML form -->
<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
    <script src="../js/listshowing.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/styles.css">

    <style>
        .user-form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f7f7f7;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            padding: 10px 20px;
            background-color: #4caf50;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<form action="<?php echo $_SERVER['PHP_SELF'] . '?isbn=' . $encodedIsbn; ?>" method="post" class="user-form">
    <div class="form-group">
        <label for="title">Title:</label>
        <input type="text" id="title" name="title" value="<?php echo $book['title']; ?>" required>
    </div>
    <div class="form-group">
        <label for="publisher">Publisher:</label>
        <input type="text" id="title" name="publisher" value="<?php echo $book['publisher']; ?>" required>
    </div>

    <div class="form-group">
        <label for="language">Language:</label>
        <input type="text" id="title" name="language" value="<?php echo $book['language']; ?>" required>
    </div>

    <div class="form-group">
        <label for="page_number">Page number:</label>
        <input type="text" id="title" name="page_number" value="<?php echo $book['page_number']; ?>" required>
    </div>
    <div class="form-group">
        <label for="title">Summary:</label>
        <input type="text" id="title" name="summary" value="<?php echo $book['summary']; ?>" required>
    </div>
    <div class="form-group">
        <label for="copies">Copies:</label>
        <input type="text" id="title" name="copies" value="<?php echo $copies ; ?>" required>
    </div>

    <div class="form-group">
        <label for="authors">Authors:</label>
        <?php foreach ($authors as $author) {
            $authorId = $author['author_id'];
            $authorName = $author['author'];
            $value = '';
            foreach ($authors as $selectedAuthor) {
                if ($selectedAuthor['author_id'] === $authorId) {
                    $value = $selectedAuthor['author'];
                    break;
                }
            }
            echo "<input type='text' name='authors[$authorId]' value='$value'><br>";
        } ?>
    </div>

    <div class="form-group">
        <label for="categories">Categories:</label>
        <?php while ($row = mysqli_fetch_assoc($result3)) {
            $category = $row['category'];
            echo "<input type='text' name='categories[]' value='$category'><br>";
        } ?>
    </div>

    <div class="form-group">
        <label for="keywords">Keywords:</label>
        <?php while ($row = mysqli_fetch_assoc($result4)) {
            $keyword = $row['keyword'];
            echo "<input type='text' name='keywords[]' value='$keyword'><br>";
        } ?>
    </div>

    <div class="form-group">
        <button type="submit" name="update">Update</button>
    </div>
</form>
</body>
</html>
