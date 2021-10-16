<?php 
require_once 'database.php';

//remove dash

function remove_dash($query_string){
    $query_string = str_replace('-', ' ',$query_string);
    $query_string = str_replace('_', ' ', $query_string);
    return ucwords($query_string); 
    
}


//select data

function select($sql){
    $query = mysql_query($sql);    
    return $query;
}

// date formate

function date_ymd($date){
    return date_format(date_create($date), "Y-m-d");
}

// short sql string

function sql_short($sql,$srt='order by'){    
    $position = strripos($sql,$srt);
    return substr($sql,0,$position);
}

function time_convert ($second){    
    
    $hinit = $second;
    $hhours = floor($hinit / 3600);
    $hminutes = floor(($hinit / 60) % 60);
    $hseconds = $hinit % 60;
    echo $htl_talk_time = $hhours.":".$hminutes.":".$hseconds;
}
function time_convert1 ($second){    
    
    $hinit = $second;
    $hhours = floor($hinit / 3600);
    $hminutes = floor(($hinit / 60) % 60);
    $hseconds = $hinit % 60;
    return $htl_talk_time = $hhours.":".$hminutes.":".$hseconds;
}


?>