<?php
require_once 'header.php';

if (!isset($_GET['id'])) {
    header('Location: Accueil.php');
    exit();
}

$film_id = (int)$_GET['id'];

try {
    $stmt = $bd->prepare("SELECT * FROM film WHERE idFilm = ?");
    $stmt->execute([$film_id]);
    $film = $stmt->fetch();
    
    if (!$film) {
        throw new Exception("Film non trouvé");
    }
} catch(Exception $e) {
    die($e->getMessage());
}
?>

<main class="film-container">
    <div class="film-video">
        <!-- Remplacez par votre système de vidéos -->
        <iframe width="100%" height="500" 
                src="https://www.youtube.com/embed/<?= extraireIdYouTube($film['lien_bande_annonce']) ?>" 
                frameborder="0" 
                allowfullscreen>
        </iframe>
    </div>
    
    <div class="film-info">
        <h1><?= htmlspecialchars($film['nom']) ?> (<?= $film['annee'] ?>)</h1>
        <button class="play-button">▶ Lecture</button>
    </div>
</main>

<style>
    .film-container {
        max-width: 800px;
        margin: 20px auto;
    }
    
    .play-button {
        background: #e50914;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 18px;
        cursor: pointer;
        margin-top: 20px;
    }
</style>

<?php 
function extraireIdYouTube($url) {
    // Fonction pour extraire l'ID d'une URL YouTube
    parse_str(parse_url($url, PHP_URL_QUERY), $vars);
    return $vars['v'] ?? '';
}
?>

<?php require_once 'footer.php'; ?>