<?php
	class Image {
		private $conn;
		private $tableName = 'image';

		public $id;
		public $placeholder;
		public $src_cln;
		public $src_bkg;
		public $main_flag;

		public function __construct($db) {
			$this->conn = $db;
		}
	}
?>