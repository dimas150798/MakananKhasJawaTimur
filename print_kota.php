<?php
	include "koneksi/koneksi.php";
?>

<html>
<head>
	<title>Print Document</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
</head>

<body>
	<table border="1" width="90%" style="border-collapse:collapse;" align="center">
    	<tr class="tableheader">
        	<th rowspan="1">NO</th>
            <th>PICTURE</th>
            <th>NAMA KOTA</th>
            <th>NAMA KABUPATEN</th>
            <th>PUSAT PEMERINTAH</th>
            <th>KETERANGAN</th>
        </tr>

        <?php $i=1 ?>
        <?php
        $data = "select * from jenis"; 
        $result=mysqli_query($mysqli,$data);
        while($hasil = mysqli_fetch_array($result))
        { 
        ?>

        <tr id="rowHover">
            <td width="10%" align="center"><?= $i++ ?></td>
            <td width="10%" align="center"><img src="images/<?php echo $hasil['gambar']?>" height ="250px" width="260px"></td>
            <td width="10%" align="center"><?php echo $hasil['kota'] ?></td>
            <td width="10%" align="center"><?php echo $hasil['kabupaten'] ?></td>
            <td width="10%" align="center"><?php echo $hasil['pusat'] ?></td>
            <td width="100%" align="center"><?php echo $hasil['keterangan'] ?></td>       
        </tr>
        <?php } ?>
    </table>
    
    <script>
		window.load = print_d();
		function print_d(){
			window.print();
		}
	</script>
</body>
</html>

