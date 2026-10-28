<?php
require '../config/database.php';
require '../includes/functions.php';
check_session();
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $zapato_id = (int)$_POST['zapato_id'];
    $zapato_index = (int)$_POST['zapato_index'];
    $puntuacion = (int)$_POST['puntuacion'];
    if ($puntuacion >= 1 && $puntuacion <= 5) {
        $stmt = $pdo->prepare("INSERT INTO calificaciones (encuesta_id, zapato_id, puntuacion) VALUES (?, ?, ?) ON DUPLICATE KEY UPDATE puntuacion = ?");
        $stmt->execute([$_SESSION['encuesta_id'], $zapato_id, $puntuacion, $puntuacion]);
    }
    if ($zapato_index < 20) {
        header("Location: ../encuesta.php?zapato=" . ($zapato_index + 1));
    } else {
        header("Location: ../finalizar.php");
    }
    exit;
}
