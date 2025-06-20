<?php
require_once 'header.php';

try {
    $films = $bd->query("SELECT * FROM film WHERE fkType = 3")->fetchAll();
} catch (Exception $e) {
    die($e->getMessage());
}
?>

<main class="main-content">
<section class="content-section">
        <h2>Films</h2>
        <div class="carousel-container">
            <button class="prev">❮</button>
            <div class="carousel">
                <?php foreach ($films as $film): ?>
                    <div class="carousel-item">
                        <a href="film.php?id=<?= $film['idFilm'] ?>">
                            <img src="<?= htmlspecialchars($film['image']) ?>" 
                                 alt="<?= htmlspecialchars($film['nom']) ?>"
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