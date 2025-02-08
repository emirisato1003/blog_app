<?php
// https://stackoverflow.com/questions/965235/how-can-i-truncate-a-string-to-the-first-20-words-in-php
function limit_text($text, $limit)
{
    if (str_word_count($text, 0) > $limit) {
        $words = str_word_count($text, 2);
        $pos   = array_keys($words);
        $text  = substr($text, 0, $pos[$limit]) . '...';
    }
    return $text;
}

// array 
// formatted html 
function format_array_contents($arr, $type)
{
    $items = [];
    $item = [];
    foreach ($arr as $row) {
        if ($type == 'category') {
            array_push($items, "<a href='category.php?category={$row->category}' class='fw-bold fs-4 text-decoration-none'>" . $row->category . "</a>");
        } else if ($type == 'tag') {
            array_push($item, "<a href='tag.php?tag={$row->tag}' class='btn btn-outline-dark mt-3'># " . $row->tag . "</a>");
        }
    }
    echo  implode(", ", $items);
    echo '<p>' . implode(" ", $item) . '</p>';
}

function activateNavItemLink($requestUri)
{
    $current_file_name = basename($_SERVER["REQUEST_URI"], ".php");
    if ($current_file_name === $requestUri) {
        echo 'active';
    }
}

function display_message()
{
    if (isset($_GET["message"])) {
        $message = $_GET["message"];
        echo '<div class="mt-4 alert alert-success" role="alert">';
        echo $message;
        echo '</div>';
    }
}
