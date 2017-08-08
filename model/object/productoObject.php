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
	}
?>