<?php
session_start();

if (!isset($_SESSION['current_account'])) {
    header('Location: CompteNetflix.php');
    exit();
}

$current_account = $_SESSION['current_account'];

try {
    $bd = new PDO("mysql:host=localhost;dbname=netflix", "root", "");
    $bd->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Récupérer tous les films pour le select de recherche
    $films = $bd->query("SELECT idFilm, nom FROM film")->fetchAll();
} catch (Exception $e) {
    die($e->getMessage());
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Netflix</title>
    <link rel="stylesheet" href="../CSS/Accueil.css">
</head>
<body>
    <header>
        <div class="logo"><h1>Netflix</h1></div>

        <nav>
            <ul>
                <li><a href="Accueil.php">Accueil</a></li>
                <li><a href="Films.php">Films</a></li>
                <li><a href="Series.php">Séries</a></li>
                <li><a href="CompteNetflix.php">Mon Compte</a></li>
            </ul>
        </nav>

        <!-- Barre de recherche simplifiée -->
        <form method="get" action="film.php" class="search-form">
            <select name="id" required>
                <option value="">Rechercher un film...</option>
                <?php foreach ($films as $film): ?>
                    <option value="<?= $film['idFilm'] ?>"><?= htmlspecialchars($film['nom']) ?></option>
                <?php endforeach; ?>
            </select>
            <button type="submit">▶</button>
        </form>

        <div class="profil">
            <span><?= htmlspecialchars($current_account['nom']) ?></span>
        </div>
        <link href="https://fonts.googleapis.com/css2?family=Helvetica+Neue:wght@400;500;700&display=swap" rel="stylesheet">
    </header>