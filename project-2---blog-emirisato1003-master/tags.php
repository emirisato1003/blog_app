<?php
$pageTitle = "Tags";
require "inc/header.inc.php";

// create query to get all tags
$sql = "SELECT * FROM tag ORDER BY tag ASC";

// prepare statements
$stmt = $db->prepare($sql);
$stmt->execute();

$data = $stmt->fetchALL();
// var_dump($data)
?>
<div class="container mt-5">
    <div class="row">
        <div class="col-12 col-md-8 mx-auto text-center">
            <h1>All Tags</h1>
            <div class="tags">
                <?php
                echo '<ul>';
                foreach ($data as $row) {
                    echo "<li><a href='tag.php?tag={$row->tag}' class='btn btn-outline-light'># " . $row->tag . "</a></li>";
                }
                echo '</ul>';
                ?>
                <hr>
            </div>
            <img src="https://cdn.pixabay.com/photo/2015/11/14/20/26/writing-1043622_640.png" alt="writing" class="img-fluid mt-5">
        </div>
    </div>
</div>

<?php
require "inc/footer.inc.php";
?>