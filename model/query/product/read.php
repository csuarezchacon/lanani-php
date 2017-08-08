<?php
  header("Access-Control-Allow-Origin: *");
  header("Content-Type: application/json; charset= UTF-8");

  include_once '../config/conn.php';
  include_once '../object/productObject.php';

  $database = new Database();
  $db = $database->getConnection();

  $product = new Product($db);

  $stmt = $product->read();
  $num = $stmt->rowCount();

  if ($num>0) {
    $product_arr = array();
    $product_arr["records"]=array();

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
      extract($row);

      $product_item = array(
        "id" => $id,
        "name" => $name,
        "description" => html_entity_decode($description),
        "price" => $price
      );

      array_push($product_arr["records"], $product_item)
    }

    echo json_encode($product_arr);
  } else {
    echo json_encode(
      array("message" => "No products found.")
    );
  }
?>
