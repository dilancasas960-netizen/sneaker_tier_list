<?php
require '../config/database.php';
require '../includes/functions.php';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = trim($_POST['username']);
    if (empty($username)) {
        header("Location: ../index.php");
        exit;
    }
    $stmt = $pdo->prepare("SELECT id FROM usuarios WHERE username = ?");
    $stmt->execute([$username]);
    $user = $stmt->fetch();
    if (!$user) {
        $stmt = $pdo->prepare("INSERT INTO usuarios (username) VALUES (?)");
        $stmt->execute([$username]);
        $usuario_id = $pdo->lastInsertId();
    } else {
        $usuario_id = $user['id'];
    }
    $stmt = $pdo->prepare("SELECT id FROM encuestas WHERE usuario_id = ? AND estado = 'en_progreso'");
    $stmt->execute([$usuario_id]);
    $encuesta = $stmt->fetch();
    if (!$encuesta) {
        $stmt = $pdo->prepare("INSERT INTO encuestas (usuario_id) VALUES (?)");
        $stmt->execute([$usuario_id]);
        $encuesta_id = $pdo->lastInsertId();
    } else {
        $encuesta_id = $encuesta['id'];
    }
    $_SESSION['usuario_id'] = $usuario_id;
    $_SESSION['encuesta_id'] = $encuesta_id;
    header("Location: ../encuesta.php?zapato=1");
    exit;
}
