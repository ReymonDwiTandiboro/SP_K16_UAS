<?php

$dta = mysqli_connect('localhost','root','','sp_db');

if(!$dta){
    echo 'gagal';
}else{
    echo 'berhasil';
}

?>