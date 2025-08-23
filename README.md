<!-- ABOUT THE PROJECT -->
## About The Project
Libre Busca is an open source search engine project that is lightweight, does not rely on third-party scripts, does not collect cookies or user data, does not display ads, and, above all, is uncensored.
We want users to find exactly what they are looking for.
![main-light](https://ibb.co/Rk78tVCD)
![results-dark](https://ibb.co/1tBDNJJh)
![results-light](https://ibb.co/wh020dt9)
![sendlinks-light](https://ibb.co/KjhG1SwL)
![errorpage-light](https://ibb.co/4nGkhQrc)

<!-- GETTING STARTED -->
## Getting Started
Download the Libre Busca files. In a MySQL database, create a database called “librebusca,” then host the “websites.sql” file, which is in the “database” folder, in a table. Configure the database username and password in the “.env” file, then rename it by deleting “.example,” leaving only “.env.” Then just host the website locally or in the cloud.

### With XAMPP + Apache/Nginx (web server) + MySQL/MariaDB (database) + phpMyAdmin (web interface for the database)
Install XAMPP, then go to the XAMPP folder, find the “htdocs” folder, and place the Libre Busca folder inside it. Open XAMPP and start Apache and MySQL, then type http://localhost/phpmyadmin/ in your browser. Click on “new” and create a database with the name ‘librebusca’, then click on “import” and select the websites.sql file to import the websites.
Now to access the website, type //localhost/librebusca in your browser.

XAMPP comes with Apache, MySL, and phpMyAdmin installed by default.

**Use XAMPP only for testing or personal use, because if you use it to make the website public and accessible to everyone, it will pose a security risk, as anyone will be able to access your personal computer. If you want to make a public website, use a paid cloud service or at least HeideSQL + MariaDB. Only set up a local server if you have another computer to use as a server and know how to configure everything.**

### With HeidiSQL (graphical client for managing databases, such as phpMyAdmin) + MariaDB (database) + Apache or Nginx (web server) + PHP (to run the website scripts)
Download HeidiSQL and MariaDB.

How to install MariaDB (with APT) on Linux; type in the terminal:

```sh
sudo apt update
```
```sh
sudo apt install mariadb-server -y
```

This will download and install the stable version of MariaDB, configure the 'mysqld' service, and automatically start the server.
To verify that MariaDB is running, type the following in the terminal:

```sh
sudo systemctl status mariadb
```

You should see something like “active (running).” If not, type the command below to start it:

```sh
sudo systemctl start mariadb
```

Or, if you want it to start with the system:

```sh
sudo systemctl enable mariadb.
```

For security settings, type:

```sh
sudo mysql_secure_installation
```

This will allow you to set the root password, remove anonymous users, disable remote login for root, and clear the test database.
Now, to connect locally with HeidiSQL, you need to create a new user with TCP/IP access permission and use it in HeidiSQL. Type the following in the terminal:

```sh
sudo mariadb
```

Then run the command below to create a new user with permissions:

```sh
CREATE USER 'admin'@'%' IDENTIFIED BY 'your_secure_password';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```

Replace ‘your_secure_password’ with the password you want to use in HeidiSQL. The ‘%’ allows connections from any IP, including the localhost itself.
Now restart MariaDB:

```sh
sudo systemctl restart mariadb
```

In HeidiSQL, set the user as “admin” instead of “root.”

Open HeidiSQL and click on “New”, then “” and enter the name “localhost” (or any name you wish), in “User” enter the name you want for your user and in ‘Password’ enter a strong password, then click on “open”.
Right-click on “localhost,” go to “Create New” -> “Database,” and name it “librebusca.” Then click on the librebusca database, go to “File,” then “Load SQL File...” and select the “websites.sql” file in the ‘database’ folder. Then just click ‘yes’ for Heidi to automatically detect the file encoding. Now click “Execute SQL...” or press F9 to run it.



**INSTALLING APACHE + PHP**
Install Apache, PHP, and necessary modules. In the terminal, type:
```sh
sudo apt update
```
```sh
sudo apt install apache2 php libapache2-mod-php php-mysql -y
```

To test Apache, go to your browser and type:
http://localhost
(The “Apache2 Ubuntu Default Page” should appear.)

In Ubuntu, the equivalent of the “htdocs” folder in XAMPP is /var/www/html. Paste the LibreBusca folder there.
```sh
sudo cp -r /path/folder/librebusca/* /var/www/html/librebusca/
```

Now, to access the website, type the following into your browser: http://localhost/librebusca

PHPMYADMIN (OPTIONAL)
Install it by typing in the terminal:
```sh
sudo apt install phpmyadmin
```
Then go to: http://localhost/phpmyadmin



<!-- LB CONFIGURATION -->
## Configuration
**How do I change the maximum number of words/characters people can type in the search?**
On the “index.php” and “results.php” pages, look for the line below:
<input type="text" name="search" placeholder="Vincit omnia veritas..." maxlength=""> 
The “maxlength” command determines the maximum number of letters that can be entered. Enter the maximum number of characters you want users to be able to type in the search field.

**Send Links page**
The “send-links” page was created so that you can quickly, easily, and simply submit websites to the database. However, be careful that other people do not have access to this page and submit unwanted websites or attempt an attack. Change the name of the “send-links” page and remove the link to this page from your LB.

**Favicon**
To add a favicon to your website, place a favicon named “icon” in .png format in the “img” folder.
If you want to add a favicon with a different name or format, you will need to change the line below on all pages:
<link rel="icon" type="image/png" href="img/icon.png">

<!-- ROADMAP -->
## Roadmap

- [x] Complete and functional website capable of performing searches
- [ ] Improve the PHP/SQL code of the search engine
    - [ ] Making a pagination system
    - [ ] Create a “safe mode” system where adult content, for example, will be hidden from users' searches by the users themselves in the settings.
- [ ] Create a web crawler to automate website cataloging
- [ ] Create a separate search page just for videos

<!-- CONTRIBUTING -->
## Contributing

Any contributions you make are greatly appreciated.

<!-- LICENSE -->
## License

Distributed under the GPL v3. See `LICENSE.txt` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
