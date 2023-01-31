<?php
include "layout/header.php";
include "config/datanopdo.php";

if(isset($_POST['tambah'])){

        $kodeg = $_POST['kodeg'];
        // $kodep = $_POST['kodep'];
        $gejala = $_POST['gejala'];
        // $proba = $_POST['proba'];
    
        // menyiapkan query
        // $sql = "INSERT INTO tblaturan (kd_gejala, kd_penyakit, nl_proba) VALUES ('$kodeg','$kodep','$proba')";
        $sql = "INSERT INTO tblgejala (kd_gejala, nm_gejala) VALUES ('$kodeg','$gejala')";

        $saved=mysqli_query($dta,$sql);
    
        // jika query simpan berhasil, maka user sudah terdaftar
        // maka alihkan ke halaman login
        if($saved){
            echo"<script>
            alert('Data Berhasil Ditambahkan');
            document.location.href = 'daftar.php';
            </script>";
        }else{
            echo"<script>
            alert('Data Gagal Ditambahkan');
            document.location.href = 'daftar.php';
            </script>";
        }
}
?>
    <div class="container mt-5">

        <h1>Tambah Gejala</h1>

        <form action="" method="post">
            <div class="mb-3">
                <label for="kodeg" class="form-label">Kode Gejala</label>
                <input type="text" class="form-control" id="kodeg" name="kodeg" placeholder="Kode..."
                required>
            </div>
            <!-- <div class="mb-3">
                <label for="kodep" class="form-label">Kode Penyakit</label>
                <input type="text" class="form-control" id="kodep" name="kodep" placeholder="Kode..."
                required>
            </div> -->
            <div class="mb-3">
                <label for="gejala" class="form-label">Gejala</label>
                <input type="text" class="form-control" id="gejala" name="gejala" placeholder="Gejala..."
                required>
            </div>
            <!-- <div class="mb-3">
                <label for="proba" class="form-label">Probabilitas</label>
                <input type="text" class="form-control" id="proba" name="proba" placeholder="Nilai..."
                required>
            </div> -->
            <button type="submit" name="tambah" class="btn btn-primary" style="float: right">Tambah</button>
        </form>

    </div>

<?php
include 'layout/footer.php';
?>