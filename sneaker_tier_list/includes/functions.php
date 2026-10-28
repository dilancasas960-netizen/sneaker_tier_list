<?php
session_start();
function check_session() {
    if (!isset($_SESSION['usuario_id'])) {
        header("Location: index.php");
        exit;
    }
}
