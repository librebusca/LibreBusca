<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Libre Busca</title>
    <meta name="description" value="Libre search engine, open source, no data collection and no censorship.">
    <link rel="icon" type="image/png" href="img/icon.png">

    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script src="js/anontab.js"></script> <!-- JavaScript code for the tab to change title when the user goes to another tab -->
    <script src="js/navbarresponsive.js" async></script> <!-- JavaScript code to make the navbar responsive. The ‘async’ attribute ensures that the JavaScript code is only executed after the HTML has been fully loaded -->
    <script src="js/settingsbutton.js"></script> <!-- Switch dark mode script --->

</head>

<body>

  
    <!-- NAVBAR -->
    <header>      

        <nav>            
        </nav>   

        <!-- Popup overlay (Makes the background dark when you open the popup) -->
            <div id="overlay" class="overlay"></div>
            <!----------------------------------------------------------------------->
            <!-- Settings button -->
                <div id="config-popup" class="config-popup">
                <div class="config-header">
                    <span>Settings</span>
                    <button id="close-config">✕</button>
                </div>

                <div class="config-body">
                    <div class="config-item">
                    <span>Dark Mode</span>
                    <label class="switch">
                        <input type="checkbox" id="darkMode">
                        <span class="slider"></span>
                    </label>
                    </div>

                    <div class="config-item">
                    <span>Unmoderated Search</span>
                    <input type="checkbox" id="compact">
                    </div>

                    <div class="config-item">
                    <span>Font Size</span>
                    <select>
                        <option>Small</option>
                        <option selected>Normal</option>
                        <option>Large</option>
                    </select>
                    </div>
                </div>
                </div>
            <!---------------------->
 
    </header>
    <!------------->

    
    <main>
        <!-- Search bar -->
        <div class="container">
            <h1>Libre <span class="title">Busca</span></h1>
            <form action="results.php" method="GET" name="">
                <input type="text" name="search" placeholder="Vincit omnia veritas..." maxlength=""> <!-- Search bar. The “maxlength” command determines the maximum number of letters that can be entered -->
                <button type="submit"><img src="img/lupa.png"></button> <!-- Search button -->
            </form>
        <!-- Settings button -->
        <div class="settings-wrapper">
            <button id="btn-config" class="config-btn">Settings</button>
        </div>
        <!--------------------->

        </div>
        <!-- Search bar -->
    </main>

    <!-- Settings button JavaScript -->
    <script src="js/settingsbutton.js"></script>
    <!--------------------------------->

    
    <!-- FOOTER -->
    <footer class="footer">
        <ul class="menu">
            <li class="menu-elem">
            <a href="https://github.com/librebusca/LibreBusca" class="menu-icon">GitHub</a>
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