<?php
require_once("baglanti.php");

if (isset($_GET['eserID'])) {
    $eserID = mysqli_real_escape_string($baglanti, $_GET['eserID']);
    $sorgu = mysqli_query($baglanti, "SELECT * FROM eser WHERE eserID = '$eserID'");
    $eser = mysqli_fetch_assoc($sorgu);
} else {
    // EserID parametresi eksik, kullanıcıyı başka bir sayfaya yönlendir
    header("Location: index.php");
    exit();
}

// Form gönderildiğinde
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Güncelleme işlemleri burada gerçekleştirilecek
    $eserADI = mysqli_real_escape_string($baglanti, $_POST['eserADI']);

    $guncelleSorgu = mysqli_query($baglanti, "UPDATE eser SET eserADI = '$eserADI' WHERE eserID = '$eserID'");

    if ($guncelleSorgu) {
        // Güncelleme başarılı, kullanıcıyı eser_islemleri.php sayfasına yönlendir
        header("Location: eser_islemleri.php");
        exit();
    } else {
        echo "Güncelleme başarısız: " . mysqli_error($baglanti);
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Eser Güncelle</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<div class="container">
    <h2>Eser Güncelle</h2>
    <form method="post" action="">
        <div class="mb-3">
            <label for="eserADI" class="form-label">Eser Adı:</label>
            <input type="text" class="form-control" id="eserADI" name="eserADI" value="<?php echo $eser['eserADI']; ?>" required>
        </div>
        <button type="submit" class="btn btn-primary">Güncelle</button>
    </form>
</div>

<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
