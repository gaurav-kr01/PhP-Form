<?php
$insert = false;
if (isset($_POST['name'])) {
    $server = "localhost";  // server to connect to
    $username = "root";
    $password = "";
    $dbname = "form";  // specify the database name

    // Create connection
    $con = mysqli_connect($server, $username, $password, $dbname);

    // Check connection
    if (!$con) {
        die("Connection to the database failed due to: " . mysqli_connect_error());
    }

    // Retrieve and sanitize form data
    $name = mysqli_real_escape_string($con, $_POST['name']);
    $age = mysqli_real_escape_string($con, $_POST['age']);
    $gender = mysqli_real_escape_string($con, $_POST['gender']);
    $email = mysqli_real_escape_string($con, $_POST['email']);
    $phone = mysqli_real_escape_string($con, $_POST['phone']);
    $desc = mysqli_real_escape_string($con, $_POST['desc']);

    // SQL query to insert data
    $sql = "INSERT INTO `detail` (`name`, `age`, `gender`, `email`, `phone`, `other`, `dt`) VALUES ('$name', '$age', '$gender', '$email', '$phone', '$desc', current_timestamp());";

    if ($con->query($sql) === true) {
        $insert = true;
    } else {
        echo "ERROR: $sql <br> $con->error";
    }

    // Close the connection
    $con->close();
} else {
    // Reset $insert to false when the form is not submitted
    $insert = false;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <img class="bg" src="download.jpeg" alt="biet">
    <div class="container">
        <h1>Welcome to BIET form</h1>
        <p class="s">Please provide each detail</p>
        <?php
        if ($insert == true) {
            echo "<p class='submit'>Thanks for submitting your form.</p>";
        }
        ?>
        <form action="form.php" method="post">
            <input type="text" name="name" id="name" placeholder="Enter your name" required>
            <input type="number" name="age" id="age" placeholder="Enter your age" required>
            <input type="text" name="gender" id="gender" placeholder="Enter your gender" required>
            <input type="email" name="email" id="email" placeholder="Enter your email" required>
            <input type="tel" name="phone" id="phone" placeholder="Enter your phone number" required>
            <textarea name="desc" id="desc" cols="30" rows="10" placeholder="Enter other information" required></textarea>
            <button class="btn" type="submit">Submit</button>
        </form>
    </div>
    <script src="index.js"></script>
</body>
</html>
