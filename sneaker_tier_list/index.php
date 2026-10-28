<?php
require 'config/database.php';
require 'includes/functions.php';
require 'includes/header.php';
?>
<div class="card">
    <h2>bienvenido</h2>
    <form action="actions/iniciar_encuesta.php" method="post">
        <label for="username">tu nombre</label>
        <input type="text" id="username" name="username" required>
        <button type="submit">comenzar encuesta</button>
    </form>
</div>
<?php require 'includes/footer.php'; ?>
