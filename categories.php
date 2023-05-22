<?php
$pageTitle = "Categories";
require "inc/header.inc.php";

// SQL to get all blog posts. Note the use of a JOIN
$sql = "SELECT * FROM category ORDER BY category ASC";

// PDO Prepared Statements
$stmt = $db->prepare($sql);
$stmt->execute();

// Fetch all of the row(s)
$data = $stmt->fetchAll();
?>
<div class="container mt-5">
    <div class="row">
        <div class="col-12 col-md-8 mx-auto text-center">
            <h1>All Categories</h1>
            <div class="category">
                <?php
                echo '<ul>';
                foreach ($data as $row) {
                    echo "<li><a href='category.php?category={$row->category}'>" . $row->category . "</a></li>";
                }
                echo '</ul>';
                ?>
                <hr>
            </div>
            <img src="https://cdn.pixabay.com/photo/2015/11/14/20/26/writing-1043622_640.png" alt="" class="img-fluid mt-5">
        </div>
    </div>
</div>

<?php
require "inc/footer.inc.php";
?>