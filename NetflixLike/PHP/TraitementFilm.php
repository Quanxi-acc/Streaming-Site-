<?php
session_start();
if(!isset($_SESSION["admin"]) || $_SESSION["admin"]!=1){
    die("Accès refusé");
}

try {
    $bd = new PDO("mysql:host=localhost;dbname=netflix", "root", "");
    
    // Mise à jour du film
    $stmt = $bd->prepare("UPDATE film SET nom = ?, annee = ?, fkGenre = ?, fkType = ? WHERE idFilm = ?");
    $stmt->execute([
        $_POST['nom'],
        $_POST['annee'],
        $_POST['genre'],
        $_POST['type'],
        $_POST['idFilm']
    ]);
    
    $_SESSION['success'] = "Film mis à jour avec succès";
    header("Location: AdminPanel.php");
    
} catch(Exception $e) {
    $_SESSION['error'] = "Erreur lors de la mise à jour: ".$e->getMessage();
    header("Location: AdminPanel.php");
}