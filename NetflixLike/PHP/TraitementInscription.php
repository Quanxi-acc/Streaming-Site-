<?php
session_start();

// Vérification des champs obligatoires
$required = ['prenom', 'nom', 'email', 'pseudo', 'motdepasse', 'datenaissance', 'genre'];
foreach($required as $field){
    if(empty($_POST[$field])){
        header("Location: Inscription.php?error=$field");
        exit();
    }
}

try {
    $bdd = new PDO("mysql:host=localhost;dbname=netflix", "root", "");
    
    // Vérification email unique
    $check = $bdd->prepare("SELECT id FROM Utilisateur WHERE email = ?");
    $check->execute([$_POST['email']]);
    
    if($check->rowCount() > 0){
        header("Location: Inscription.php?error=email_exists");
        exit();
    }

    // Insertion
    $sql = "INSERT INTO Utilisateur (pseudo, motdepasse, prenom, nom, email, datenaissance, genre) 
            VALUES (?, ?, ?, ?, ?, ?, ?)";
    
    $stmt = $bdd->prepare($sql);
    $stmt->execute([
        $_POST['pseudo'],
        $_POST['motdepasse'],
        $_POST['prenom'],
        $_POST['nom'],
        $_POST['email'],
        $_POST['datenaissance'],
        $_POST['genre']
    ]);

    // Connexion automatique
    $_SESSION['user'] = [
        'id' => $bdd->lastInsertId(),
        'pseudo' => $_POST['pseudo'],
        'email' => $_POST['email']
    ];
    
    header("Location: Accueil.php");
    exit();

} catch(Exception $e) {
    header("Location: Inscription.php?error=system");
    exit();
}
?>