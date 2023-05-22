<?php
require "inc/db_connect.inc.php";

$sql = "SELECT post.post_id, post.title, post.date, post.content, author.author_id, author.first_name, author.last_name
FROM post
JOIN author
ON post.author = author.author_id
WHERE post.post_id=" . $_GET["id"];

$stmt = $db->prepare($sql);
$stmt->execute();

// fetch all of the rows
$data = $stmt->fetchALL();

json_encode(["results" => $data]);

echo "<p class='fw-bold'>[$data:first_name] [$data:_name]  - " . $date->format('M d, Y')  . "</p>";

