<!-- GETTING STARTED -->
## How to use on Windows
### With XAMPP + Apache + MySQL/MariaDB + phpMyAdmin
Install XAMPP, then go to the XAMPP folder, find the “htdocs” folder, and place the Libre Busca folder inside it. Open XAMPP and start Apache and MySQL, then type http://localhost/phpmyadmin/ in your browser. Click on “new” and create a database with the name ‘librebusca’, then click on “import” and select the 'websites.sql' file to import the websites.
<br>
Now to access the website, type //localhost/librebusca in your browser.
<br>
<br>
XAMPP comes with Apache, MySQL, and phpMyAdmin installed by default.

**Use XAMPP only for testing or personal use, because if you use it to make the website public and accessible to everyone, it will pose a security risk, as anyone will be able to access your personal computer. If you want to make a public website, use a paid cloud service or at least HeidiSQL + MariaDB. Only set up a local server if you have another computer to use as a server and know how to configure everything.**
<br>
<br>
### With Nginx + PHP + MariaDB + HeidiSQL
Download Nginx. Place the LB files in the Nginx “html” folder.
<br>
In the Nginx "config" folder, open the **nginx.config** file, copy the 'root' and 'index' that are in **Location**, and paste them into Server line, below 'server_name', adding "index.php" before "index.html". Example:
```sh
 server {
        listen       80;
        server_name  localhost;
        root   html;
        index  index.php index.html index.htm;
```

In **Location**, delete what is inside the ```sh try_files $uri $uri/ =404```, for example:
```sh
location / {
           try_files $uri $uri/ /index.php?$query_string; (delete this)
           }      
```

Above **Location**, paste the code below:
```sh
# Configuration for static files (.css, .js, images)
         location /assets/ {
           root C:/Users/User/Downloads/nginx-1.29.3/html/librebusca; #Path where static files are located
           try_files $uri $uri/ =404; #Used for archives CSS, JS, images
         }
```

In the **Server** "root" line, delete “html”, change to the LibreBusca folder path in html on your Nginx, and place the normal slash to the right /, not to the left \ as in Windows. Example:
```sh
 server {
        root   C:/Users/User/Downloads/nginx-1.29.3/html/LibreBusca;
```

Then comment on the entire **Location** section. 

Uncomment the entire section below and change the line ```sh /scripts$fastcgi_script_name;``` to ```sh fastcgi_param SCRIPT_FILENAME C:/Users/User/Downloads/nginx-1.29.3/html/libre$fastcgi_script_name;```. Example:
```sh
location ~ \.php$ {
            root           html;
            fastcgi_pass   127.0.0.1:9000;
            fastcgi_index  index.php;
            fastcgi_param  SCRIPT_FILENAME  C:/Users/User/Downloads/nginx-1.29.3/html/LibreBusca$fastcgi_script_name;
            include        fastcgi_params;
        }
```


**Configuring PHP**
<br>
Download PHP (Download the NTS [non-threaded] version).
<br>
Rename the **php.ini-development** file to **php.ini**, then open it and enable the necessary extensions below (remove the semicolon at the beginning of the lines to do this):
```sh
;extension_dir = "ext"
;extension=mysqli
;extension=pdo_mysql
;extension=openssl
;extension=mbstring
;date.timezone =
```
And configure the time zone. Example:
```sh
date.timezone = "America/Sao_Paulo"
```

Open a CMD in the PHP folder and start PHP as a FastCGI server (leave this cmd open, it is the PHP server; if you close it, nginx will not be able to process PHP) using the command ```sh php-cgi.exe -b 127.0.0.1:9000 ```.
<br>
<br>
**Configuring MariaDB**
<br>
Download MariaDB and install it as usual. Now download HeidiSQL to manage the database via GUI.
In HeidiSQL, click **New**, leave the root and default port, and enter your root password (if you don't have one, leave it blank), then click **Open**. Right-click on **unnamed** and click **Create New -> Database** and select "website.sql", then press F9 or click the Start button and you're done.
<br>
**Connecting everything**
Open a CMD in the **PHP** folder and use the command:
```sh
php-cgi.exe -b 127.0.0.1:9000
```
Open a CMD in the **Nginx** folder and use the command:
```sh
start nginx
```
The server will already be running, and you can type http://localhost/librebusca into your browser.
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
Now, to access the website, type the following into your browser: http://localhost/librebusca/

PHPMYADMIN (OPTIONAL)
<br>
Install it by typing in the terminal:
```sh
sudo apt install phpmyadmin
```
Then go to: http://localhost/phpmyadmin/


## How to export SQL database
### HeidiSQL
Right-click on the “websites” table, then click on “export database as SQL,” set the database name in “filename,” and click on “export.”
<br>
### XAMPP
Go to http://localhost/phpmyadmin/, expand the “librebusca” database and click on the “websites” table, go to “Export,” make sure that ‘Format’ is set to SQL, and click “Export.”
