<?php
	class Product{
		private $conn;
		private $tableName = 'product';

		public $id;
		public $name;
		public $description;
		public $price;

		public function __construct($db) {
			$this->conn = $db;
		}

		function read(){
			$query = "
				 SELECT p.id, p.name, p.description, p.price " .
				"FROM " . $this->table_name . " p " .
				"ORDER BY p.created DESC";

			$stmt = $this->conn->prepare($query);

			$stmt->execute();

			return $stmt;
		}
	}
?>
