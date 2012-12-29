<?php


function connect($server, $user, $pass, $db) {
	try {
		$connection = new PDO('mysql:host='.$server.';dbname='.$db, $user, $pass);
		// echo "Success";
		return $connection;
	} catch (PDOException $e) {
		// echo $e->getMessage();
		return false;
	}
}

function query($pdo, $query) {
	try {
		if ($pdo === false) {
			return false;
		} else {
			$query_result = $pdo->query($query);
			// echo "Success";
			return $query_result->fetchAll();
		}
	} catch (PDOException $e) {
		// echo $e->getMessage();
		return false;
	}
}


?>