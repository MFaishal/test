<?php
include("../include/dbconnect.php");
//Creates new record as per request
date_default_timezone_set("Asia/Jakarta");
//Connect to database
$data = $_FILES['foto']['name'];
$datacheck = $_FILES['check']['name'];
if($_SERVER['REQUEST_METHOD']=='POST')   
{
    if(!empty($data))
    {
        $yellow_perc_value = $_POST['yellow_perc_value'];
        $red_stain_percentage = 100 - $_POST['red_stain_percentage'];
        $leaf_blight_percentage = 100 - $_POST['leaf_blight_percentage'];
        $leaf_rust_percentage = 100 - $_POST['leaf_rust_percentage'];

        $timestamp = date('Y-m-d H:i:s');
        $allowed_ext  = array('bmp', 'jpg', 'jpeg', 'png', 'gif'); // Jenis file yang diperbolehkan untuk diupload
        $file_name    = $_FILES['foto']['name']; // img adalah name dari tombol input pada form
        $file_ext     = strtolower(pathinfo($file_name,PATHINFO_EXTENSION)); // Membuat ekstensi file

        $file_name_checked    = $_FILES['check']['name']; // img adalah name dari tombol input pada form
        $file_ext_checked     = strtolower(pathinfo($file_name,PATHINFO_EXTENSION)); // Membuat ekstensi file
        
        $file_new_name = date('Y-m-d-H-i-s').'-'.$file_name;
        $file_new_name_checked = date('Y-m-d-H-i-s').'_checked_'.$file_name_checked;
        $SQL = "INSERT INTO foto_tanaman (yellow_perc_value, red_stain_percentage, leaf_blight_percentage, leaf_rust_percentage, nama_file, checked_file, timestamp) VALUES ('".$yellow_perc_value."', '".$red_stain_percentage."', '".$leaf_blight_percentage."', '".$leaf_rust_percentage."', '".$file_new_name."', '".$file_new_name_checked."', '".$timestamp."')";
        if(in_array($file_ext, $allowed_ext) === true && mysqli_query($dbh, $SQL)) // Pengecekan tipe file yang diperbolehkan
        {
            $target_file = __DIR__.'/../uploads/'.$file_new_name; 
            move_uploaded_file($_FILES['foto']['tmp_name'],$target_file);
            $target_file_checked = __DIR__.'/../uploads/'.$file_new_name_checked; 
            move_uploaded_file($_FILES['check']['tmp_name'],$target_file_checked);
            $response['message'] = "Data berhasil dimasukkan ke database server";
        } else if (!in_array($file_ext, $allowed_ext)) {
            $response['message'] = "Jenis file yang diunggah tidak diperbolehkan diunggah ke server";
        } else if (!mysqli_query($dbh, $SQL)) {
            $response['message'] = "Data tidak dapat diunggah ke server";
        }
    } else {
        $response['message'] = "Tidak ada data masuk ke server";
    } 
} else {
    $response['message'] = "Request tidak valid";
}   

echo json_encode($response);

?>