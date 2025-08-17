## USING .ENV FOR SECURITY

Step 1 - Install Composer
-> Go to https://getcomposer.org/Composer-Setup.exe and install it.
-> During installation, point to the XAMPP PHP executable (for example, C:\xampp\php\php.exe).

Step 2 - Enable the zip extension in php.ini
-> Go to the file C:\xampp\php\php.ini
-> Open it with a text editor (Notepad, VS Code, etc.)
-> Search for: ;extension=zip
-> Remove the ; to enable: extension=zip
-> Save the file.
-> Restart Apache in XAMPP to apply the change.

Step 3 - Install Git
-> Download and install Git for Windows here: https://git-scm.com/download/win
-> During installation, choose the option that adds Git to PATH (checked by default).
-> After that, close and reopen the terminal.

Step 4 - Install phpdotenv
-> Open the terminal and type the command to the location of your project, for example: cd C:\xampp\htdocs\test
-> Use the following command to install phpdotenv: composer require vlucas/phpdotenv

Ps: The .env file should be at the beginning of the project, in the same location as the “vendor” folder. In this file, you will enter the name of your database and password.