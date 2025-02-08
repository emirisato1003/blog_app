<?php
$error_bucket = [];

if (!isset($_POST["author"])) {
    array_push($error_bucket, "<strong>Author</strong> is required.");
} else {
    $author = $_POST["author"];
}
if ($_POST["title"] == "") {
    array_push($error_bucket, "<strong>Title</strong> is required.");
} else {
    $title = $_POST["title"];
}
if ($_POST["date"] == "") {
    array_push($error_bucket, "<strong>Date</strong> is required.");
} else {
    $date = $_POST["date"];
}
if (!isset($_POST["categories"])) {
    array_push($error_bucket, "<strong>Category(s)</strong> are required.");
} else {
    $categories = $_POST["categories"];
}
if (!isset($_POST["tags"])) {
    array_push($error_bucket, "<strong>Tag(s)</strong> are required.");
} else {
    $tags = $_POST["tags"];
}
if ($_POST["content"] == "") {
    array_push($error_bucket, "<strong>Content</strong> is required.");
} else {
    $content = $_POST["content"];
}
