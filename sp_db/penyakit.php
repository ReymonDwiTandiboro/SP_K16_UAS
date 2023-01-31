<?php
include "layout/header.php";
include "config/datanopdo.php";

if(isset($_POST['tambah'])){

        // $kodeg = $_POST['kodeg'];
        $kodep = $_POST['kodep'];
        $kerusakan = $_POST['kerusakan'];
        $proba = $_POST['proba'];
        $solusi = $_POST['solusi'];
    
        // menyiapkan query
        $sql = "INSERT INTO tblpenyakit (kd_penyakit, nm_penyakit, nl_penyakit, pengobatan) VALUES ('$kodep','$kerusakan','$proba','$solusi')";

        $saved=mysqli_query($dta,$sql);
    
        // jika query simpan berhasil, maka user sudah terdaftar
        // maka alihkan ke halaman login
        if($saved){
            echo"<script>
            alert('Data Berhasil Ditambahkan');
            document.location.href = 'penyakit.php';
            </script>";
        }else{
            echo"<script>
            alert('Data Gagal Ditambahkan');
            document.location.href = 'penyakit.php';
            </script>";
        }
}
?>
    <div class="container mt-5">

        <h1>Tambah Kerusakan</h1>

        <form action="" method="post">
            <div class="mb-3">
                <label for="kodep" class="form-label">Kode Kerusakan</label>
                <input type="text" class="form-control" id="kodep" name="kodep" placeholder="Kode..."
                required>
            </div>
            <div class="mb-3">
                <label for="kerusakan" class="form-label">Nama Kerusakan</label>
                <input type="text" class="form-control" id="kerusakan" name="kerusakan" placeholder="Kerusakan..."
                required>
            </div>
            <div class="mb-3">
                <label for="proba" class="form-label">Probabilitas</label>
                <input type="text" class="form-control" id="proba" name="proba" placeholder="Nilai..."
                required>
            </div>
            <div class="mb-3">
                <label for="solusi" class="form-label">Solusi</label>
                <input type="text" class="form-control" id="solusi" name="solusi" placeholder="Solusi..."
                required>
            </div>
            <button type="submit" name="tambah" class="btn btn-primary" style="float: right">Tambah</button>
        </form>

    </div>

<?php
include 'layout/footer.php';
?>