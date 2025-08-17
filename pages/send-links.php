<?php include'php/includesl.php'; ?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Libre Busca</title>
    <meta name="description" value="Libre search engine, open source, no data collection and no censorship.">
    <link rel="icon" type="image/png" href="../img/icon.png">

    <link rel="stylesheet" type="text/css" href="css/sendlinks.css">
    <script src="../js/anontab.js"></script>
    <script src="../js/navbarresponsive.js" async></script>

</head>

<body>

  
    <!-- NAVBAR -->
    <header>        
    <!-- Menu with links -->
        <section class="bottom-header">

            <ul class="nav-links">
                <li><a href="../index.php">Home</a></li>
                <li><a href="faq.html">FAQ</a></li>
                <li><a href="send-links.php">Send Links</a></li>
                <li><a href="error.html">Error Page</a></li>
            </ul>

            <!-- Makes the navbar responsive -->
          <div class="menu-hamb-button hide-on-desktop">
            <div class="btn-line"></div>
            <div class="btn-line"></div>
            <div class="btn-line"></div>
        </div>
        <!-- Makes the navbar responsive -->   
        
        </section>
    <!-- End of menu with links --> 

    </header>
    <!------------->
    
   
   <!-- FAQ-->
   <div class="container">
    
        <!------ FORM ------>    
            <section class="formulario"> <!-- Form box -->
            
                <div class="interface"> <!-- Interface -->
                    <h2 class="titulo"> Send <span>Links</span></h2>
                    
                    <form method="POST"> <!-- Text boxes that go in the form -->
                        <input type="text" name="site_title" id="site_title" placeholder="Title:" required> <!-- The “required” command makes it mandatory for this message field to be answered. -->
                        <input type="url" name="site_link" id="site_link" placeholder="Website Link:" required> <!-- The type="url" command only allows links, so if someone tries to send text, they will not be able to do so. -->
                        <input type="text" name="site_description" id="site_description" placeholder="Description:"> <!-- Without the “required” command, this response field becomes optional for the user. -->

                    
                    <!-- Send message button -->
                    <div class="btn-enviar">
                    <input type="submit" value="SEND" name="submit" onclick="message()">

                    <!-- Success/failure message when submitting a website -->
                    <div class="message">
                    <div class="success" id="success">Success!</div>
                    <div class="danger" id="danger">Please, complete all fields!</div> <!-- Message that appears when you do not fill in a required field -->
                    
                    <div id="error-message" class="error-message" style="display:none;">
                    This site is already registered in the database! <!-- Message that appears when a website is already registered in the database -->
                    </div>

                    </div>
                    <!----------->
                    
                    <!-- JavaScript for success/failure message when submitting a website to work -->
                    <script>
                    function message(){
                    var site_title = document.getElementById('site_title');
                    var site_link = document.getElementById('site_link');
                    var site_description = document.getElementById('site_description');

                    const success = document.getElementById('success');
                    const danger = document.getElementById('danger');

                    if(site_title.value === '' || site_link.value === '' || site_description.value === ''){
                        danger.style.display = 'block';
                    }
                    else {
                        setTimeout(() => {
                        site_title.value = '';
                        site_link.value = '';
                        site_description.value = '';
                        }, 2000);

                    success.style.display = 'block';
                    }


                    setTimeout(() => {
                    danger.style.display = 'none';
                    success.style.display = 'none';
                    }, 4000);

                    }

                    </script>
                    <!---------------------------------------------------------------------->

                    <!-- The error message will be displayed below -->
                   
                    <!--------------------------------------------->
                    

                <!-- -->


                    </form>
                </div>
        
            </section>
            </div>
        <!----------------------->
    
    
    <footer>

    <!-- FOOTER -->
    <span class="rodape">우리는 말이 아니야. 사람이야</span>   
    <!------------->
      
    </footer>

</body>
</html>