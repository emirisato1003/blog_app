<?php
$pageTitle = "Category - " . $_GET['category'];
require "inc/header.inc.php";

if (!isset($_GET['category'])) {
    header('Location: categories.php');
} else {
    $category = $_GET['category'];
}

$sql = "SELECT category.category, category.category_id, post_category.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name
        FROM category
        JOIN post_category
        ON category.category_id = post_category.category_id
        JOIN post
        ON post.post_id = post_category.post_id
        JOIN author
        ON post.author = author.author_id
        WHERE category = :category";

$stmt = $db->prepare($sql);
$stmt->execute(["category" => $category]);
$data = $stmt->fetchALL();

// echo var_dump($data);
?>
<div class="container">
    <div class="row">
        <div class="col-12 mt-5 text-center">
            <?php
            echo "<h1 class='display-1'>{$category}</h1>";
            echo '<hr>';
            ?>
        </div>
        <?php
        if (count($data) >= 1) {
            foreach ($data as $row) {
                echo '<div class="col-12 col-md-4 p-3 shadow">';
                $date = date_create($row->date);
                echo '<p class="fw-bold fs-4">' . $row->category . ' | ' . $date->format('M d,Y') . '</p>';
                echo '<h3 class="mb-3"><a href="single.php?id=' . $row->post_id . '">' . $row->title . '</a></h3>';
                $content = limit_text($row->content, 20);
                echo "<p>{$content}</p>";
                echo "<p>by {$row->first_name} {$row->last_name}</p></div>";
            }
        } else {
            echo "<div class='col-12 mt-5 text-center'>";
            echo "<h1> There is no post for <strong><em>{$category}</strong></em> category... </h1>";
            echo "</div>";
            echo "<div class='col-12 col-md-8 mx-auto text-center'>";
            echo "<div>";
            echo "<h3 class='mt-4'> Create new blog for this Category?</h3>";
            echo "<a  href='post.php' class='btn btn-dark mt-2' role='button'>Create Post</a>";
            echo "</div>";
            echo '<img src="https://cdn.pixabay.com/photo/2015/11/14/20/26/writing-1043622_640.png" alt="" class="img-fluid mt-5">';
            echo "</div>";
        }
        ?>
    </div>
</div>
<?php
require "inc/footer.inc.php";
?>