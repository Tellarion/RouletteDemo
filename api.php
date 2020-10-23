<?php

    $mysql = new mysqli("localhost", "root", "", "test", 3306);

    if($mysql->connect_error) {
        //$mysql->connect_error bla-bla;
    } else {

        define("CLONE_COUNT", 50);

        function generate_data($get_data) {
            $new_data = array();
            $get_data_counter = 0;
            for($i = 0; $i < count($get_data) * CLONE_COUNT; $i++) {
                $new_data[$i] = $get_data[$get_data_counter];
                $get_data_counter++;
                if($get_data_counter == count($get_data)) {
                    $get_data_counter = 0;
                }
            }
            return $new_data;
        }

        if($_POST['get'] == 'items') {
            $output = "";
            $get_data = $mysql->query("SELECT * FROM `roulette`")->fetch_all(MYSQLI_ASSOC);
            $get_data_counter = 0;
            $new_data = generate_data($get_data);
            shuffle($new_data);
            echo json_encode($new_data, JSON_UNESCAPED_UNICODE);
            //echo $get_data;
        } else if($_POST['get'] == 'result') {
            $output = "";
            $get_data = $mysql->query("SELECT * FROM `roulette`")->fetch_all(MYSQLI_ASSOC);
            $get_data_counter = 0;
            $new_data = generate_data($get_data);
            shuffle($new_data);
            $get_result = $new_data[rand(0, count($new_data))];
            echo json_encode($get_result, JSON_UNESCAPED_UNICODE);
        }
    }
?>