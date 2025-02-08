<?php
$pageTitle = "Post";
require "inc/header.inc.php";
?>
<div class="container my-5">
    <div class="row">
        <div class="col-6">
            <h1>New Blog Post</h1>
            <?= display_message() ?>
            <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                require "inc/error.inc.php";
                // $first = $_POST["first"];
                // $last = $_POST["last"];

                // $sql_author = "INSERT INTO author (first_name, last_name) VALUES(:first_name,:last_name)";
                // $stmt_author = $db->prepare($sql_author);
                // $result_author = $stmt_author->execute(["first_name" => $first, "last_name" => $last]);

                $author = $_POST['author'];
                $title = $_POST['title'];
                $date = $_POST['date'];
                $content = $_POST['content'];
                $sql = "INSERT INTO post (title,date,content,author) VALUES (:title,:date,:content,:author)";
                $stmt = $db->prepare($sql);
                $result = $stmt->execute(["title" => $title, "date" => $date, "content" => $content, "author" => $author]);
                // check to make sure insert worked
                if ($result) {
                    // get the id of the post just inserted
                    $post_id = $db->lastInsertId();
                }

                // now post_category
                $categories = $_POST["categories"];
                foreach ($categories as $category) {
                    $sql = "INSERT INTO post_category (post_id,category_id) VALUES (:post_id,:category_id)";
                    $stmt = $db->prepare($sql);
                    $result = $stmt->execute(["post_id" => $post_id, "category_id" => $category]);
                }

                // now post_tag
                $tags = $_POST["tags"];
                // var_dump($tags);
                foreach ($tags as $tag) {
                    $sql = "INSERT INTO post_tag (post_id,tag_id) VALUES (:post_id,:tag_id)";
                    $stmt = $db->prepare($sql);
                    $result = $stmt->execute(["post_id" => $post_id, "tag_id" => $tag]);
                }

                header("Location: post.php?message=New post is created");
            }

            ?>

            <!-- post form -->
            <form action="<?= $_SERVER['PHP_SELF'] ?>" class="mt-4" method="POST">
                <div class="mb-3">
                    <label for="author" class="form-label">Author</label>
                    <?php
                    $sql = "SELECT * FROM author ORDER BY last_name ASC";
                    $stmt = $db->prepare($sql);
                    $stmt->execute();
                    $results = $stmt->fetchAll();
                    ?>
                    <select name="author" id="author" class="form-select">
                        <?php
                        foreach ($results as $row) {
                            echo "<option value='$row->author_id'>$row->first_name $row->last_name</option>";
                        }
                        ?>
                    </select>
                </div>
                <!-- <div class="row">
                    <label for="author_name">New Author</label>
                    <div class="col-12 col-md-6 mb-3">
                        <input type="text" class="form-control" name="first" placeholder="First name" id="author_name" maxlength="20">
                    </div>
                    <div class="col-12 col-md-6 mb-3">
                        <input type="text" class="form-control" name="last" placeholder="Last name" id="author_name" maxlength="20">
                    </div>
                </div> -->
                <div class="mb-3">
                    <label for="title" class="form-label">Title*</label>
                    <input type="text" id="title" name="title" class="form-control" maxlength="200" required>
                </div>
                <div class="mb-3">
                    <label for="date" class="form-label">Date*</label>
                    <input type="date" class="form-control" name="date" id="date" required>
                </div>
                <div class="mb-3">
                    <label for="categories" class="form-label">Category(s)*</label>
                    <?php
                    $sql = "SELECT * FROM category ORDER BY category ASC";
                    $stmt = $db->prepare($sql);
                    $stmt->execute();
                    $results = $stmt->fetchAll();
                    ?>
                    <select name="categories[]" id="categories" class="form-select form-select-lg mb-3" multiple required>
                        <?php
                        foreach ($results as $row) {
                            echo "<option value='$row->category_id'>$row->category</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="tags" class="form-label">Tag(s)*</label>
                    <?php
                    $sql = "SELECT * FROM tag ORDER BY tag ASC";
                    $stmt = $db->prepare($sql);
                    $stmt->execute();
                    $results = $stmt->fetchAll();
                    ?>
                    <select name="tags[]" id="tags" class="form-select form-select-lg mb-3" multiple required>
                        <?php
                        foreach ($results as $row) {
                            echo "<option value='$row->id'>$row->tag</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="content" class="form-label">Content*</label>
                    <textarea class="form-control" id="content" rows="5" name="content" required></textarea>
                </div>
                <button type="submit" name='submit_post' id="submit_post" class="btn btn-light">Save</button>
            </form>
        </div>
    </div>
</div>