<?php 
include 'layout/header.php';
include 'config/datanopdo.php';
?>    
    <div class="container mt-5">

        <h1>Data Gejala</h1>

        <table class="table table-bordered table-striped mt-3">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Nama Gejala</th>
                </tr>
            </thead>

            <tbody>
                <?php
                $no=1;
                $query = mysqli_query($dta,"SELECT * FROM tblgejala");
                while ($data = mysqli_fetch_array($query)){
                    echo"
                    <tr>
                        <td> $no</td>
                        <td> $data[kd_gejala] </td>
                        <td> $data[nm_gejala] </td>
                    </tr>";
                    $no++;
                }
                ?>
            </tbody>
        </table>
    </div>

<?php
include 'layout/footer.php';
?>