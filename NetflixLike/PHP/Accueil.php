<?php
require_once 'header.php';

try {
    $contenusMelanges = $bd->query("SELECT * FROM film WHERE fkType IN (3, 4) ORDER BY RAND() LIMIT 10")->fetchAll();
    $films = $bd->query("SELECT * FROM film WHERE fkType = 3 LIMIT 10")->fetchAll();
    $series = $bd->query("SELECT * FROM film WHERE fkType = 4 LIMIT 10")->fetchAll();
} catch (Exception $e) {
    die($e->getMessage());
}
?>

<main class="main-content">
    <!-- Carrousel principal -->
    <section class="content-section">
        <h2>Contenus recommandés</h2>
        <div class="carousel-container">
            <button class="prev">❮</button>
            <div class="carousel">
                <?php foreach ($contenusMelanges as $contenu): ?>
                    <div class="carousel-item">
                        <a href="film.php?id=<?= $contenu['idFilm'] ?>">
                            <img src="<?= htmlspecialchars($contenu['image']) ?>" 
                                 alt="<?= htmlspecialchars($contenu['nom']) ?>"
                                 class="content-poster">
                            <div class="play-overlay">▶</div>
                        </a>
                    </div>
                <?php endforeach; ?>
            </div>
            <button class="next">❯</button>
        </div>
    </section>

    <!-- Films -->
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

    <!-- Séries -->
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