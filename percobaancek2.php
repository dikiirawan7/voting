<?php
$koneksi=new mysqli("localhost","root","","apalah");
$id=$_GET['id'];
$query1="select * from terserah where ktp='$id'";
$cek1=mysqli_query($koneksi,$query1);

$tampil=mysqli_fetch_array($cek1);
$namamu=$tampil['nama'];
?>


<form action="" method="POST">
masukkan pilihan
	<input type="text" name="calon"><br/>
	<input type="submit" name="lapor" value="lapor">
</form>

<?php
	if(isset($_POST['lapor'])){
		$ktp=$id;//sama dengan di $id baris nomer 3
		$query3="select * from tambah where ktp='$ktp'";
		$cek1=mysqli_query($koneksi,$query3);
		$cekpernahpilihbelum=mysqli_num_rows($cek1);
		if(!$cekpernahpilihbelum==1){
		
		$calon=$_POST['calon'];
		
		$query="insert into tambah set ktp='$ktp',nama='$namamu',plihan='$calon'";
		$cek=mysqli_query($koneksi,$query);
		if($cek==true){
			echo "anda sudah memilih".$calon;
		}
		else{
					echo "ada ganguan";
					

		}
		}
		
		else{
			echo "Nomer KTP ".$ktp." sudah pernah memilih";
		}
	
	}
?>