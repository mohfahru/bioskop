<?php
include 'header.php';
require("koneksi.php");

?>
<table style="width:100%">
    		<tr>
    			<th>Animasi</th>
    			<th>Horor</th>
                <th>Thriller</th>
    			<th>Action</th>
    			<th>Tanggal</th>
				<th>Waktu</th>
    		</tr>

<?php
$query = $koneksi->query("SELECT
    `animasi`.`NAMA`
    , `horor`.`NAMA`
    , `thriller`.`NAMA`
    , `action`.`NAMA`
FROM
    `biioskop`.`jadwal`
    INNER JOIN `biioskop`.`animasi` 
        ON (`jadwal`.`ID_ANIM` = `animasi`.`ID_ANIM`)
    INNER JOIN `biioskop`.`action` 
        ON (`jadwal`.`ID_ACT` = `action`.`ID_ACT`)
    INNER JOIN `biioskop`.`thriller` 
        ON (`jadwal`.`ID_TH` = `thriller`.`ID_TH`)
    INNER JOIN `biioskop`.`horor` 
        ON (`jadwal`.`ID_HOR` = `horor`.`ID_HOR`)");

        		 while($row = $query->fetch_array()){ ?>
    		<tr>
    			<td><?php echo $row['NAMA'] ?></td>
    			<td><?php echo $row['NAMA'] ?></td>
    			<td><?php echo $row['NAMA'] ?></td>
    			<td><?php echo $row['NAMA'] ?></td>
    		</tr>
    		<?php } ?>
    	</tbody>
    </table>

<?php
$koneksi->close(); 
include 'footer.php';
?>