<?php
    include('config/koneksi.php');
    if(isset($_POST['cari_keyword']))
    {
        $cari_keyword = $koneksi->real_escape_string($_POST['cari_keyword']);
        $sqlSiswa="SELECT nama FROM lapor WHERE nama LIKE '%$cari_keyword%'";
        $resSiswa=$koneksi->query($sqlSiswa);
 
        if($resSiswa === false) {
            trigger_error('Error: ' . $dbConnection->error, E_USER_ERROR);
        }else{
            $rows_returned = $resSiswa->num_rows;
        }
 
 $bold_cari_keyword = '<strong>'.$cari_keyword.'</strong>';
 if($rows_returned > 0){
            while($rowSiswa = $resSiswa->fetch_assoc()) 
            { 
                echo '<div class="show" align="left"><span class="nama_siswa">'.str_ireplace($cari_keyword,$bold_cari_keyword,$rowSiswa['nama']).'</span></div>'; 
            }
        }else{
            echo '<div class="show" align="left">No matching records.</div>'; 
        }
    } 
?>