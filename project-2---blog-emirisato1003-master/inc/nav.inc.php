<header>
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container-fluid ">
            <a class="navbar-brand" href="blog.php"><img src="img/sun.png" width="50" height="50" alt="sun icon brings you home page"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="nav nav-underline me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link text-dark <?= activateNavItemLink("blog") ?>" aria-current="page" href="blog.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark <?= activateNavItemLink("categories") ?>" aria-current="page" href="categories.php">Categories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark <?= activateNavItemLink("tags") ?>" aria-current="page" href="tags.php">Tags</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-dark <?= activateNavItemLink("post") ?>" aria-current="page" href="post.php">Create Post</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>