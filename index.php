<?php
session_start();

if( !isset($_SESSION['login']) ) {
    header("location: login.php");
    exit;
}


?>


<?php require_once 'tampletes/header.php'; ?>

<div class="container">
    <div class="jumbotron jumbotron-fluid mt-4">
    <div class="container">
        <h1 class="display-4"> Sistem Pendukung Keputusan Metode SAW </h1>
        <hr>
        <p class="lead">Sistem pendukung keputusan dengan menggunakan metode SAW. Terdapat 5 kriteria yang dinilai dalam sistem ini yaitu C1 ( Harga Motor ), C2 ( Kualitas ), C3 ( Desain ), C4 ( Purna Jual ), C5 ( Konsumsi BBM ). Dari setiap kriteria terdapat bobot-bobot yang dapat diedit didalam sistem ini. Sistem ini bertujuan untuk menetukan keperluan iverstasi dalam rangka meningkatkan kinerja perusahaan kedepanya, dengan menggunakan perangkingan.</p>
    </div>
    </div>
</div>



<?php require_once 'tampletes/footer.php' ?>

