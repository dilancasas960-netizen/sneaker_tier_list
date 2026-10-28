<?php
require 'config/database.php';
require 'includes/functions.php';
require 'includes/header.php';
$stmt = $pdo->query("
    SELECT z.nombre, z.imagen, AVG(c.puntuacion) as promedio, COUNT(c.id) as votos
    FROM zapatos z
    LEFT JOIN calificaciones c ON z.id = c.zapato_id
    LEFT JOIN encuestas e ON c.encuesta_id = e.id
    WHERE e.estado = 'finalizada'
    GROUP BY z.id
    ORDER BY promedio DESC, votos DESC
");
$ranking = $stmt->fetchAll();
?>
<div class="card results-card">
    <h2>tier list global</h2>
    <div class="tier-list">
        <?php foreach ($ranking as $z): 
            $promedio = round($z['promedio'], 2);
            $tier = 's';
            if ($promedio < 4.5) $tier = 'a';
            if ($promedio < 4.0) $tier = 'b';
            if ($promedio < 3.0) $tier = 'c';
            if ($promedio < 2.0) $tier = 'd';
            if ($z['votos'] == 0) $tier = 'sin votos';
        ?>
        <div class="tier-item">
            <img src="assets/img/<?php echo htmlspecialchars($z['imagen']); ?>" alt="zapato" onerror="this.src='assets/img/placeholder.png'">
            <div>
                <h3><?php echo htmlspecialchars($z['nombre']); ?></h3>
                <p>tier <?php echo $tier; ?> - promedio <?php echo $promedio; ?> (<?php echo $z['votos']; ?> votos)</p>
            </div>
        </div>
        <?php endforeach; ?>
    </div>
    <a href="index.php" class="btn">volver al inicio</a>
</div>
<?php require 'includes/footer.php'; ?>
