<?php
require "inc/header.inc.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $first = $_POST["first"];
    $last = $_POST["last"];

    $sql = "INSERT INTO author (first_name, last_name) VALUES(:first_name,:last_name)";
    $stmt = $db->prepare($sql);
    $result = $stmt->execute(["first_name" => $first, "last_name" => $last]);
}
?>
<div class="container">
    <div class="row">
        <div class="col-6">
            <form action="<?= $_SERVER['PHP_SELF'] ?>" class="mt-4" method="POST">
                <div class="row">
                    <div class="col-12 col-md-6 mb-3">
                        <input type="text" class="form-control" name="first" placeholder="First name" id="first" maxlength="20">
                    </div>
                    <div class="col-12 col-md-6 mb-3">
                        <input type="text" class="form-control" name="last" placeholder="Last name" id="last" maxlength="20">
                    </div>
                    <input type="submit" value="submit">
            </form>
        </div>
    </div>
</div>