<!-- GETTING STARTED -->
## How to use on Windows
### With XAMPP + Apache + MySQL/MariaDB + phpMyAdmin
Install XAMPP, then go to the XAMPP folder, find the “htdocs” folder, and place the Libre Busca folder inside it. Open XAMPP and start Apache and MySQL, then type http://localhost/phpmyadmin/ in your browser. Click on “new” and create a database with the name ‘librebusca’, then click on “import” and select the 'websites.sql' file to import the websites.
<br>
Now to access the website, type //localhost/librebusca in your browser.
<br>
<br>
XAMPP comes with Apache, MySQL, and phpMyAdmin installed by default.

**Use XAMPP only for testing or personal use, because if you use it to make the website public and accessible to everyone, it will pose a security risk, as anyone will be able to access your personal computer. If you want to make a public website, use a paid cloud service or at least HeideSQL + MariaDB. Only set up a local server if you have another computer to use as a server and know how to configure everything.**
<br>
<br>
## How to use on Linux
### With HeidiSQL + MariaDB + Apache + PHP
Download HeidiSQL and MariaDB.

How to install MariaDB (with APT) on Linux. Type in the terminal:

```sh
sudo apt update
```
```sh
sudo apt install mariadb-server -y
```
<br>
This will download and install the stable version of MariaDB, configure the 'mysqld' service, and automatically start the server.
To verify that MariaDB is running, type the following in the terminal:

```sh
sudo systemctl status mariadb
```
<br>
You should see something like “active (running).” If not, type the command below to start it:

```sh
sudo systemctl start mariadb
```
<br>
Or, if you want it to start with the system:

```sh
sudo systemctl enable mariadb.
```
<br>
For security settings, type:

```sh
sudo mysql_secure_installation
```
<br>
This will allow you to set the root password, remove anonymous users, disable remote login for root, and clear the test database.
Now, to connect locally with HeidiSQL, you need to create a new user with TCP/IP access permission and use it in HeidiSQL. Type the following in the terminal:

```sh
sudo mariadb
```
<br>
Then run the command below to create a new user with permissions:

```sh
CREATE USER 'admin'@'%' IDENTIFIED BY 'your_secure_password';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```
<br>
Replace ‘your_secure_password’ with the password you want to use in HeidiSQL. The ‘%’ allows connections from any IP, including the localhost itself.
Now restart MariaDB:

```sh
sudo systemctl restart mariadb
```

In HeidiSQL, set the user as “admin” instead of “root.”

Open HeidiSQL and click on “New”, then “” and enter the name “localhost” (or any name you wish), in “User” enter the name you want for your user and in ‘Password’ enter a strong password, then click on “open”.
Right-click on “localhost,” go to “Create New” -> “Database,” and name it “librebusca.” Then click on the librebusca database, go to “File,” then “Load SQL File...” and select the “websites.sql” file in the ‘database’ folder. Then just click ‘yes’ for Heidi to automatically detect the file encoding. Now click “Execute SQL...” or press F9 to run it.
<br>
<br>
**INSTALLING APACHE + PHP**
<br>
Install Apache, PHP, and necessary modules. In the terminal, type:
```sh
sudo apt update
```
```sh
sudo apt install apache2 php libapache2-mod-php php-mysql -y
```
<br>
To test Apache, go to your browser and type: http://localhost
(The “Apache2 Ubuntu Default Page” should appear.)
<br>

In Ubuntu, the equivalent of the “htdocs” folder in XAMPP is /var/www/html. Paste the LibreBusca folder there.

```sh
sudo cp -r /path/folder/librebusca/* /var/www/html/librebusca/
```
<br>
Now, to access the website, type the following into your browser: http://localhost/librebusca

<br>
PHPMYADMIN (OPTIONAL)
Install it by typing in the terminal:
```sh
sudo apt install phpmyadmin
```
<br>
Then go to: http://localhost/phpmyadmin
