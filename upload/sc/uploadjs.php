<?php
// Define an array of allowed file extensions
$allowedExtensions = array("js");

// Get the file extension of the uploaded file
$filename = $_FILES["file"]["name"];
$fileExtension = strtolower(pathinfo($filename, PATHINFO_EXTENSION));

// Check if there were any errors during the file upload
if ($_FILES["file"]["error"] > 0) {
  echo "Error: " . $_FILES["file"]["error"] . "<br />";
} 
// Check if the uploaded file's extension is allowed
elseif (!in_array($fileExtension, $allowedExtensions)) {
  echo "Error: Only JS files are allowed.";
}
else {
  // Move the uploaded file to the destination directory
  move_uploaded_file($_FILES["file"]["tmp_name"], "/var/www/web/js/" . $filename);
  echo "上传成功";
}
?>
