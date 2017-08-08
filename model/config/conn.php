<?php 
	class Database {
		private $host = 'localhost';
		private $dbName = 'nonodb';
		private $userName = 'admin';
		private $password = 'v4JLVdqdv1YN';

		public function getConnection(){
			$this->conn = null;
			try {
				$this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->dbName, $this->userName, $this->password);
				$this->conn->exec("set names utf8");
			} catch(PDOException $exception){
				echo "Connection error: " . $exception->getMessage();
			}

			return $this->conn;
		}
	}
?>