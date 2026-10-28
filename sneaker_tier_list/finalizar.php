<?php
require 'config/database.php';
require 'includes/functions.php';
check_session();
$stmt = $pdo->prepare("SELECT COUNT(*) FROM calificaciones WHERE encuesta_id = ?");
$stmt->execute([$_SESSION['encuesta_id']]);
$total = $stmt->fetchColumn();
if ($total == 20) {
    $stmt = $pdo->prepare("UPDATE encuestas SET estado = 'finalizada', fecha_finalizacion = CURRENT_TIMESTAMP WHERE id = ?");
    $stmt->execute([$_SESSION['encuesta_id']]);
    header("Location: resultados.php");
    exit;
}
require 'includes/header.php';
?>
<div class="card">
    <h2>faltan zapatos por calificar</h2>
    <p>has calificado <?php echo $total; ?> de 20</p>
    <a href="encuesta.php?zapato=1" class="btn">volver a la encuesta</a>
</div>
<?php require 'includes/footer.php'; ?>
