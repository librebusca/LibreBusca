<?php
    include("php/include.php"); // Get a .php file with the database data (localhost, root, user, password)
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Libre Busca</title>
    <meta name="description" value="Libre search engine, open source, no data collection and no censorship.">
    <link rel="icon" type="image/png" href="img/icon.png">

    <link rel="stylesheet" type="text/css" href="css/results.css">
    <script src="js/anontab.js"></script> <!-- JavaScript code for the tab to change title when the user goes to another tab -->
    <script src="js/navbarresponsive.js" async></script> <!-- JavaScript code to make the navbar responsive. The ‘async’ attribute ensures that the JavaScript code is only executed after the HTML has been fully loaded -->

</head>

<body>
  
    <header>
        
        <!-- Search bar -->
        <section class="top-header">
            <div class="interface">
                <form action="" method="GET" name="">
                    <input type="text" name="search" placeholder="Vincit omnia veritas..." maxlength=""> <!-- Search bar. The “maxlength” command determines the maximum number of letters that can be entered -->
                    <button type="submit"><img src="img/lupa.png"></button> <!-- Search button -->
                </form>
            </div>
        </section>
        <!-- Search bar -->

        <!-- Menu with links -->
        <section class="bottom-header">

            <ul class="nav-links">
                <li><a href="index.php">Home</a></li>
                <li><a href="pages/faq.html">FAQ</a></li>
                <li><a href="pages/send-links.php">Send Links</a></li>
                <li><a href="pages/error.html">Error Page</a></li>
            </ul>

            <!-- Makes the navbar responsive -->
            <div class="menu-hamb-button hide-on-desktop">
                <div class="btn-line"></div>
                <div class="btn-line"></div>
                <div class="btn-line"></div>
            </div>
            <!-- Makes the navbar responsive -->   
        
        </section>
        <!-- Menu with links -->
        
 
    </header>

    
   
<!------ WEBSITE BODY ------>
<main>
<!------ mainResultsSection ------>
<div class="mainResultsSection">
       
<!-- Search system -->
<?php
    try {
        // Connect to the database with PDO
       $pdo = new PDO(
    'mysql:host=' . $_ENV['DB_HOST'] . ';dbname=' . $_ENV['DB_NAME'],
    $_ENV['DB_USER'],
    $_ENV['DB_PASS']
);

        // Checks if a search was sent
        if (isset($_GET['search']) && trim($_GET['search']) != '') {
            $search = trim($_GET['search']);
            $search = preg_replace('/\s+/', ' ', $search); // remove duplicate spaces
            $words = explode(' ', $search);

            $conditions = [];
            $params = [];

            foreach ($words as $index => $word) {
                if ($word === '') continue;

                // For each word, we create 3 conditions (1 per column)
                $param = '%' . $word . '%';
                $conditions[] = "(site_title LIKE :word$index OR site_description LIKE :word$index OR site_link LIKE :word$index)";
                $params["word$index"] = $param;
            }

            if (count($conditions) === 0) {
                echo 'No valid search terms provided.';
                exit;
            }

            $sql = "SELECT * FROM websites WHERE " . implode(" OR ", $conditions);
            $stmt = $pdo->prepare($sql);

            // Associates the parameters
            foreach ($params as $key => $value) {
                $stmt->bindValue(":$key", $value, PDO::PARAM_STR);
            }

            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $results_count = count($results);

            // Display the total number of results
            if ($results_count > 0) {
                echo '<div class="results-found">';
                echo '<br /><div class="right"><b><u>'.$results_count.'</u></b> results found!</div>';
                echo 'Your search for: <i>'.htmlspecialchars($search).'</i> <hr /><br />';
                echo '</div>';
                
                foreach ($results as $row) {
                    echo '<div class="serp-result-item">';
                    /* Website title */ echo '  <h3><a href="'.htmlspecialchars($row['site_link']).'">'.htmlspecialchars($row['site_title']).'</a></h3>';
                    /* Website link */ echo '  <a href="' .htmlspecialchars($row['site_link']) . '" class="url">' .htmlspecialchars($row['site_link']) . '</a>';
                    /* Website description */echo '  <p>' .htmlspecialchars($row['site_description']) . '</p>';
                    echo '</div>';
                }
              
            } else {
                echo '<div class="results-found">';
                echo 'No results found. Please search something else.';
                echo '</div>';
            }

        } else {
            echo '<div class="results-found">';
            echo 'Please enter a search term.';
            echo '</div>';
        }

    } catch (PDOException $e) {
        echo "Database error: " . $e->getMessage();
    }
?>
<!-- Search system -->
        
</div>
<!--------- End of mainResultsSection -------------->

</main>

    <!-- FOOTER -->
    <footer class="footer">
        <ul class="menu">
            <li class="menu-elem">
            <a href="" class="menu-icon">GitHub</a>
            </li>
            <li class="menu-elem">
            <a href="pages/faq.html" class="menu-icon">FAQ</a>
            </li>
            <li class="menu-elem">
            <a href="pages/send-links.php" class="menu-icon">Send Links</a>
            </li>
            <li class="menu-elem">
            <a href="pages/error.html" class="menu-icon">Error Page</a>
            </li>
        </ul>
    <span class="footer-text">우리는 말이 아니야. 사람이야.</span>
    </footer>
    <!-- FOOTER -->

</body>
</html>