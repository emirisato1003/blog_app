<?php
$pageTitle = "tag - " . $_GET['tag'];
require "inc/header.inc.php";

if (!isset($_GET['tag'])) {
    header('Location: tags.php');
} else {
    $tag = $_GET['tag'];
}

$sql = "SELECT tag.tag, post_tag.post_id, post.author, post.date, post.title,post.content, author.first_name, author.last_name 
        FROM tag
        JOIN post_tag 
        ON tag.id = post_tag.tag_id 
        JOIN post 
        ON post_tag.post_id = post.post_id 
        JOIN author 
        ON post.author = author.author_id
        WHERE tag = :tag";

$stmt = $db->prepare($sql);
$stmt->execute(["tag" => $tag]);
$results = $stmt->fetchALL();

// echo var_dump($results);
?>
<div class="container">
    <div class="row">
        <div class="col-12 mt-5 text-center">
            <?php
            echo "<h1 class='display-1'># {$tag}</h1>";
            echo '<hr>';
            ?>
        </div>
        <?php
        if (count($results) >= 1) {
            foreach ($results as $row) {
                echo '<div class="col-12 col-md-4 p-3 shadow">';
                $date = date_create($row->date);
                echo '<p class="fw-bold fs-4">' . $date->format('M d,Y') . '</p>';
                echo '<h3 class=""><a href="single.php?id=' . $row->post_id . '">' . $row->title . '</a></h3>';
                $content = limit_text($row->content, 20);
                echo "<p>{$content}</p>";
                echo "<p>by {$row->first_name} {$row->last_name}</p></div>";
            }
        } else {
            echo "<div class='col-12 mt-5 text-center'>";
            echo "<h1> There is no post for <strong><em>{$tag}</strong></em> tag... </h1>";
            echo "</div>";
            echo "<div class='col-12 col-md-8 mx-auto text-center'>";
            echo "<div>";
            echo "<h3 class='mt-4'> Create new blog for this tag?</h3>";
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