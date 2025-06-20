<?php
require_once 'header.php';

try {
    $series = $bd->query("SELECT * FROM film WHERE fkType = 4")->fetchAll();
} catch (Exception $e) {
    die($e->getMessage());
}
?>

<main class="main-content">
<section class="content-section">
        <h2>Séries</h2>
        <div class="carousel-container">
            <button class="prev">❮</button>
            <div class="carousel">
                <?php foreach ($series as $serie): ?>
                    <div class="carousel-item">
                        <a href="film.php?id=<?= $serie['idFilm'] ?>">
                            <img src="<?= htmlspecialchars($serie['image']) ?>" 
                                 alt="<?= htmlspecialchars($serie['nom']) ?>"
                                 class="content-poster">
                            <div class="play-overlay">▶</div>
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
            <button class="next">❯</button>
        </div>
    </section>
</main>

<?php require_once 'footer.php'; ?>