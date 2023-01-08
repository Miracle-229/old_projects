<?php
	$name = $_POST['name'];
 
	$user = 'ca20724_121';
	$pass = '11111111';
	$db = new PDO('mysql:host=localhost;dbname=ca20724_121', 'ca20724_121', '11111111');
	$db->exec("INSERT INTO vebinar(`time`, `name`) VALUES(NOW(), '" ,'$name',"');");
	echo '1';