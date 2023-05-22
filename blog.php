<?php
$pageTitle = "Blog Home";
require "inc/header.inc.php";
?>

<div class="container mt-3">
    <div class="row">
        <div class="col-12 header">
            <h1 class="mt-5 display-1 text-center">Simply Living Bliss</h1>
            <img src="https://picsum.photos/id/184/1500/400" class="img-fluid" alt="">
        </div>
        <?php
        // SQL to get all blog posts. Note the use of a JOIN
        $sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name 
                    FROM post 
                    JOIN author 
                    ON post.author = author.author_id";

        // PDO Prepared Statements
        $stmt = $db->prepare($sql);
        $stmt->execute();
        // Fetch all of the row(s)
        $data = $stmt->fetchAll();
        // Iterate through each of the rows
        foreach ($data as $row) {
            $sql = "SELECT post_category.post_id, post_category.category_id, category.category 
                    FROM post_category 
                    JOIN category 
                    ON post_category.category_id = category.category_id 
                    WHERE post_category.post_id = :post_id";

            $stmt_category = $db->prepare($sql);
            $stmt_category->execute(["post_id" => $row->post_id]);
            $categories = $stmt_category->fetchAll();

            echo "<div class='col-12 col-md-4 my-5'>"; //blog content column
            echo "<h2 class='fw-bold fs-1 fst-italic'>{$row->title}</h2>";
            echo "<hr>";
            $date = date_create($row->date);
            echo "<p>{$date->format('M d, Y')} | {$row->first_name} {$row->last_name}</p>";
            echo format_array_contents($categories, "category");

            // Show the blog post content
            $content = limit_text($row->content, 40);
            echo "<p>{$content}</p>";
            echo "<a href='single.php?id={$row->post_id}' class='fst-italic' title='Read the post'>Read more</a>";
            $sql = "SELECT post_tag.post_id, post_tag.tag_id, tag.tag 
                    FROM post_tag 
                    JOIN tag 
                    ON post_tag.tag_id = tag.id 
                    WHERE post_tag.post_id = :post_id";

            // PDO Prepared statements
            $stmt_tag = $db->prepare($sql);
            $stmt_tag->execute(["post_id" => $row->post_id]);
            $tags = $stmt_tag->fetchAll();
            echo format_array_contents($tags, "tag");
            echo "</div>"; // closing .col-12
        } // end of loop for Posts
        ?>
    </div> <!-- Closing for .row -->
</div>
<?php
require "inc/footer.inc.php";
?>