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
				 SELECT p.prod_id, p.prod_name, p.prod_description, p.prod_price " .
				"FROM " . $this->tableName . " p ";

			$stmt = $this->conn->prepare($query);

			$stmt->execute();

			return $stmt;
		}
	}
?>
