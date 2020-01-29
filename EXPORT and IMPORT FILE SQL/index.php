<?php
include"export_library.php";
//export
if(isset($_GET['dl'])){
$host 	= 'localhost';
$user 	= 'root';
$pwd 	= '';
$db 	= $_GET['database'];

$dir  = dirname(__file__); // directory files
$name = './BackupSQL/'.$db; // name sql backup
$download = backup_database($dir,$name,$host,$user,$pwd,$db); // execute

$dl = substr($download, 12);

echo"Success backup your database! <br> Download file : <a href='$download'>  $dl  </a> ";

}

// import
// if(isset($_POST['imp'])){
 
// $host 	= 'localhost';
// $user 	= 'root';
// $pwd 	= '';
// $db 	= $_POST['database'];


//  //$file = dirname(__FILE__).'/'.$db; // sql data file
//  $args = file_get_contents($file); // get contents
//  print_r( mysqli_import_sql( $args, $host,$user,$pwd,$db) ); // execute

// }



if(isset($_POST['imp'])){

// upload file
$target = basename($_FILES['database']['name']) ;
$move = move_uploaded_file($_FILES['database']['tmp_name'], $target);

if($move){
	$host 	= 'localhost';
	$user 	= 'root';
	$pwd 	= '';
	$db 	= $_POST['db']; //database statik


		$file = dirname(__FILE__).'/'.$target; // sql data file
		$args = file_get_contents($file); // get contents
		$import = mysqli_import_sql( $args, $host,$user,$pwd,$db); // execute
		if($import){
			//untuk hapus
			unlink($_FILES['database']['name']);
			echo "Complete import to database !";
		}else{
			echo "Faild import to database";
		}
}else{
	echo "Faild import to database";
}

}

?>

<div>
<form action="" method="get">
	<input type="text" name="database">
	<input type="submit" name="dl" value="BackupSQL">
</form>
</div>

<div>
<form action="" method="post" enctype="multipart/form-data">
    <input type="text" name="db" placeholder="Databasename" />
    <input type="file" name="database">
    <input type="submit" name="imp" value="Import">
</form>
</div>