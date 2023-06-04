<!DOCTYPE html>
<html>
<head>
  <title>Library User Home Page</title>
  <script src="../js/listshowing.js"></script>
  <link rel="stylesheet" type="text/css" href="../css/styles.css">

  <style type="text/css">
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
      margin-top: 30px;
    }

    .selected {
      background-color: #aaf3ff;
    }

    .hidden {
      display: none;
    }
  </style>
</head>
<body>
    <input class="button" id="button" type="button" value="Back to home" onclick="redirectToopHome()" style="position: absolute; top: 10px; right: 0; margin: 10px;"><br><br>

    <div class="container">
      <div class="title-frame">
        <h1>Search by name</h1>
      </div>
      <div class="search-bar">
        <form method="GET">
          <input type="text" id="searchInput" name="query1" placeholder="Enter name" value="<?php echo isset($_GET['query1']) ? $_GET['query1'] : ''; ?>">
          <button type="submit">Search</button>
        </form>
      </div>

    </div>

    <?php
    include("connection.php");
    include("functions.php");
    $user_data = check_login($con);

    $query1 = isset($_GET['query1']) ? $_GET['query1'] : '';

    if (!empty($query1)) {
      // $sql = "SELECT * FROM books WHERE title LIKE '%$query1%'";
      $sql = "SELECT * FROM user
        WHERE school_name_FK = '$user_data[school_name_FK]'
        AND username LIKE '%$query1%'
        AND user_type = 'student'
        ORDER BY accepted_user ASC";

      $result = $con->query($sql);


      if ($result->num_rows > 0) {
        echo '<table>';
        echo '<tr>';
        echo '<th>First name</th>';
        echo '<th>Last name</th>';
        echo '<th>Username</th>';
        echo '<th>Status</th>';
        echo '<th>Active</th>';
        echo '</tr>';
        while ($row = $result->fetch_assoc()) {
          $accepted = $row['accepted_user'];
          $active = $row['active_user'];
          echo '<tr onclick="redirectToUserPage(\'' . $row['user_id'] . '\')">';
          echo '<td>' . $row['first_name'] . '</td>';
          echo '<td>' . $row['last_name'] . '</td>';
          echo '<td>' . $row['username'] . '</td>';
          echo '<td class="' . ($accepted == 1 ? 'green' : 'red') . '">';
          echo ($accepted == 1 ? 'Accepted User' : 'Not accepted yet');
          echo '<td class="' . ($active == 1 ? 'green' : 'red') . '">';
          echo ($active == 1 ? 'Activated' : 'Disabled');
          echo '</td>';
          echo '</tr>';
        }
    echo "</table>";
    echo "</div>";
} else {
    echo "<p>No results found.</p>";


}
    }

?>

</body>
</html>
