var userListVisible = false;
var resListVisible = false;
var borrowListVisible = false;
var ReviewListVisible = false;


function showList(listId) {
            var list = document.getElementById(listId);

            if (list.style.display === "none") {
                hideAllLists();
                list.style.display = "block";
            } else {
                list.style.display = "none";
            }
        }

function hideAllLists() {
            var lists = document.getElementsByClassName("list-container");

            for (var i = 0; i < lists.length; i++) {
                lists[i].style.display = "none";
            }
        }

function showUserList() {
    var userList = document.getElementById('userList');
    var resList = document.getElementById('resList');

    if (!userListVisible) {
        userList.style.display = 'block';
        userListVisible = true;
    } else {
        userList.style.display = 'none';
        userListVisible = false;
    }

    // Hide the reservations list
    resList.style.display = 'none';
    resListVisible = false;
}

function showReservsList() {
    var userList = document.getElementById('userList');
    var resList = document.getElementById('resList');

    if (!resListVisible) {
        resList.style.display = 'block';
        resListVisible = true;
    } else {
        resList.style.display = 'none';
        resListVisible = false;
    }

    // Hide the user list
    userList.style.display = 'none';
    userListVisible = false;
}

function showReviewsList() {
    var userList = document.getElementById('userList');
    var ReviewList = document.getElementById('reviewList');

    if (!ReviewListVisible) {
        ReviewList.style.display = 'block';
        ReviewListVisible = true;
    } else {
        ReviewList.style.display = 'none';
        ReviewListVisible = false;
    }

    // Hide the reservations list
    userList.style.display = 'none';
    userListVisible = false;
}

function showBorrowsList() {
    var userList = document.getElementById('userList');
    var borrowList = document.getElementById('BorrowsList');

    if (!borrowListVisible) {
        borrowList.style.display = 'block';
        borrowListVisible = true;
    } else {
        borrowList.style.display = 'none';
        borrowListVisible = false;
    }

    // Hide the user list
    userList.style.display = 'none';
    userListVisible = false;
}


function showBookList() {
    var bookList = document.getElementById('bookList');
    var message = document.getElementById('message');

    if (bookList.style.display === 'none') {
        bookList.style.display = 'block';
        message.style.display = 'none';
    } else {
        bookList.style.display = 'none';
        message.style.display = 'block';
    }
}


function redirectToBookPage(isbn) {
    var encodedIsbn = encodeURIComponent(isbn);
    var url = 'bookspecific.php?isbn=' + encodedIsbn;
    window.location.href = url;
}



function redirectToUserPage(userId) {
    var encodedUserId = encodeURIComponent(userId);
    var url = 'userspecific.php?userId=' + encodedUserId;
    window.location.href = url;
}
function changePassword() {
    window.location.href = 'changepassword.php';
}
function addbook() {
    window.location.href = 'addbook.php';
}

function addschool() {
    window.location.href = 'addschool.php';
}
function login() {
    window.location.href = 'login.php';
}

function redirectToinstantborrow() {
    window.location.href = 'instantborrow.php';
}

function redirectTosearchbook() {
    window.location.href = 'searchbook.php';
}

function redirectTo311() {
    window.location.href = 'queries311.php';
}

function redirectToAdmin() {
    window.location.href = 'administrator.php';
}
function redirectTosearchuser() {
    window.location.href = 'searchuser.php';
}
function redirectToeditbook(isbn) {
    var encodedIsbn = encodeURIComponent(isbn);
    var url = 'editbook.php?isbn=' + encodedIsbn;
    window.location.href = url;
}

function redirectTosearchbook() {
    window.location.href = 'searchbook.php';
}

function redirecttoQueries() {
    window.location.href = 'queries.php';
}

function redirectto311() {
    window.location.href = 'queries311.php';
}

function redirectto312() {
    window.location.href = 'queries312.php';
}

function redirectTo322() {
    window.location.href = 'queries322.php';
}

function redirectTo323() {
    window.location.href = 'queries323.php';
}

function redirectto315() {
    window.location.href = 'queries315.php';
}

function redirectToopHome() {
        window.location.href = "school_lib_operator.php"; // Replace "users.php" with the desired page URL
    }

function redirectToHome() {
        window.location.href = "users.php"; // Replace "users.php" with the desired page URL
    }

function showMessage() {
    var messageBox = document.getElementById('messageBox');
    messageBox.style.display = 'block';
    setTimeout(function() {
        messageBox.style.display = 'none';
    }, 5000);
}
