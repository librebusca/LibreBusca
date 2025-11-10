<?php
require_once __DIR__ . '/../../vendor/autoload.php';

// Carrega o .env
$dotenv = Dotenv\Dotenv::createImmutable(__DIR__ . '/../../');
$dotenv->load();

if (isset($_POST['submit'])) {
    $site_title = $_POST['site_title'];
    $site_link = $_POST['site_link'];
    $site_description = $_POST['site_description'];

    // Pega dados do banco a partir do .env
    $dsn = "mysql:host={$_ENV['DB_HOST']};dbname={$_ENV['DB_NAME']}";

    try {
        $con = new PDO(
            $dsn,
            $_ENV['DB_USER'], // Usuário
            $_ENV['DB_PASS']  // Senha
        );
        $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        // Verifica se o site já existe
        $sql_check = "SELECT COUNT(*) FROM websites WHERE site_link = :site_link";
        $statement_check = $con->prepare($sql_check);
        $statement_check->execute([
            'site_link' => $site_link,
        ]);

        $existing_link = $statement_check->fetchColumn();

        if ($existing_link > 0) {
            echo "<script>
                document.addEventListener('DOMContentLoaded', function() {
                    var errorMessage = document.getElementById('error-message');
                    errorMessage.style.display = 'block';
                });
            </script>";
        } else {
            // Insere novo registro
            $sql = "INSERT INTO websites (site_title, site_link, site_description) 
                    VALUES (:site_title, :site_link, :site_description)";
            $statement = $con->prepare($sql);
            $statement->execute([
                'site_title' => $site_title,
                'site_link' => $site_link,
                'site_description' => $site_description,
            ]);

            echo "The website has been successfully registered!";
        }

    } catch (PDOException $e) {
        echo "Database error: " . $e->getMessage();
        die();
    }
}
