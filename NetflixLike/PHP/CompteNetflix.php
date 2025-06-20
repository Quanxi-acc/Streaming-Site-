<?php
session_start();
$pdo = new PDO('mysql:host=localhost;dbname=netflix', 'root', '');
$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$stmt = $pdo->query("SELECT id, nom FROM compteNetflix");
$comptes = $stmt->fetchAll();

if (isset($_POST['select_account']) && isset($_POST['account_id'])) {
    // Réinitialisation complète de la session
    session_unset();
    session_regenerate_id(true);
    
    // Mise à jour de la session avec le nouveau compte
    $_SESSION['current_account'] = [
        'id' => $_POST['account_id'],
        'nom' => $_POST['account_name']
    ];
    
    // Redirection immédiate avec exit
    header('Location: Accueil.php');
    exit();
}

if (isset($_POST['add_account'])) {
    $new_name = trim($_POST['new_account']);
    if (!empty($new_name)) {
        $stmt = $pdo->prepare("INSERT INTO compteNetflix (nom) VALUES (?)");
        $stmt->execute([$new_name]);
        header('Location: CompteNetflix.php');
        exit();
    }
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choix du Compte - Netflix</title>
    <link rel="stylesheet" href="../CSS/CompteNetflix.css">
</head>
<body>
    <h2>Choisissez un compte</h2>
    <form method="post">
        <?php foreach ($comptes as $compte): ?>
            <input type="hidden" name="account_id" value="<?= $compte['id'] ?>">
            <input type="hidden" name="account_name" value="<?= htmlspecialchars($compte['nom']) ?>">
            <button type="submit" name="select_account">
                <?= htmlspecialchars($compte['nom']) ?>
            </button>
        <?php endforeach; ?>
    </form>

    <h3>Ajouter un compte</h3>
    <form method="post">
        <input type="text" name="new_account" placeholder="Nom du compte" required>
        <button type="submit" name="add_account">Ajouter</button>
    </form>
</body>
</html>