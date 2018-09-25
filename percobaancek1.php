<?php
$koneksi=new mysqli("localhost","root","","apalah");
?>


<form action="" method="POST">
	Nomer ktp
	<input type="text" name="nomer"><br/>
	Nama
	<input type="text" name="nama"><br/>
	<input type="submit" name="lapor" value="lapor">
</form>

<?php
	if(isset($_POST['lapor'])){
		$opo=$_POST['nomer'];
		$nm=$_POST['nama'];
		
		$query="select * from terserah where ktp='$opo' and nama='$nm'";
		$cek=mysqli_query($koneksi,$query);
		$rowcount=mysqli_num_rows($cek);
		if($rowcount==1){
			header("location:percobaancek2.php?id=$opo");
		}
		else{
					echo "Nomor yang anda masukkan salah";
			

		}
	
	}
?>