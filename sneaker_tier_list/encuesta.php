<?php
require 'config/database.php';
require 'includes/functions.php';
check_session();
$zapato_index = isset($_GET['zapato']) ? (int)$_GET['zapato'] : 1;
if ($zapato_index < 1 || $zapato_index > 20) {
    header("Location: encuesta.php?zapato=1");
    exit;
}
$stmt = $pdo->prepare("SELECT * FROM zapatos ORDER BY id ASC LIMIT 1 OFFSET ?");
$stmt->execute([$zapato_index - 1]);
$zapato = $stmt->fetch();
if (!$zapato) {
    header("Location: finalizar.php");
    exit;
}
$stmt = $pdo->prepare("SELECT puntuacion FROM calificaciones WHERE encuesta_id = ? AND zapato_id = ?");
$stmt->execute([$_SESSION['encuesta_id'], $zapato['id']]);
$calificacion_previa = $stmt->fetchColumn();
require 'includes/header.php';
?>
<div class="card">
    <p>zapato <?php echo $zapato_index; ?> de 20</p>
    <div class="progress-bar">
        <div class="progress" style="width: <?php echo ($zapato_index / 20) * 100; ?>%"></div>
    </div>
    <h2><?php echo htmlspecialchars($zapato['nombre']); ?></h2>
    <img src="assets/img/<?php echo htmlspecialchars($zapato['imagen']); ?>" alt="zapato" class="zapato-img" onerror="this.src='assets/img/placeholder.png'">
    <p><?php echo htmlspecialchars($zapato['descripcion']); ?></p>
    <form action="actions/guardar_calificacion.php" method="post">
        <input type="hidden" name="zapato_id" value="<?php echo $zapato['id']; ?>">
        <input type="hidden" name="zapato_index" value="<?php echo $zapato_index; ?>">
        <div class="stars">
            <?php for($i=1; $i<=5; $i++): ?>
                <label>
                    <input type="radio" name="puntuacion" value="<?php echo $i; ?>" required <?php echo ($calificacion_previa == $i) ? 'checked' : ''; ?>>
                    <span class="star">★</span>
                </label>
            <?php endfor; ?>
        </div>
        <div class="buttons">
            <?php if($zapato_index > 1): ?>
                <a href="encuesta.php?zapato=<?php echo $zapato_index - 1; ?>" class="btn">anterior</a>
            <?php endif; ?>
            <?php if($zapato_index < 20): ?>
                <button type="submit" class="btn">siguiente</button>
            <?php else: ?>
                <button type="submit" class="btn">terminar</button>
            <?php endif; ?>
        </div>
    </form>
</div>
<?php require 'includes/footer.php'; ?>
