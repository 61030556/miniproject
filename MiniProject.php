<?php
    // connect database 
    $db_host = "laravel-db";
    $db_user = "root";
    $db_password = "123456";
    $db_name = "Blog";

    // connect database
    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");
    
    $sql = "SELECT * FROM Blog,Category 
            WHERE Category.categoryid = Blog.categoryid
            ORDER BY 1";

    $result = $mysqli->query($sql);

    $arr = array();
   
    while($row = $result->fetch_object())
    {

        $arr[] = $row;

    }

    echo json_encode($arr);
    
 ?>