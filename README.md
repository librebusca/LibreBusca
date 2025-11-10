<!-- ABOUT THE PROJECT -->
## About The Project
Libre Busca is an open source search engine project that is lightweight, does not rely on third-party scripts, does not collect cookies or user data, does not display ads, and, above all, is uncensored.
<br>
We want users to find exactly what they are looking for.
Is it possible to catalog the entire internet? With the help of something called a “web crawler,” it is possible to automate the cataloging of websites quickly and easily. This same method is used by major search engines. So yes, it is possible to have a search engine with a huge database in a practical way.
<br>
I started this project on my own without knowing how to code. I studied and worked on this project for months, and I think it is now ready to be launched. However, I need the help of people who understand coding (PHP, SQL, etc.) to help with the project and make it much bigger and better.
<br>
<br>
![main-light](https://i.ibb.co/pBnqN93L/01.png)
![results-dark](https://i.ibb.co/MxKYH55W/06.png)
![results-light](https://i.ibb.co/m5DPDRpL/02.png)
![sendlinks-light](https://i.ibb.co/svRPBzH6/03.png)
![errorpage-light](https://i.ibb.co/wFXt5vmT/04.png)

<!-- GETTING STARTED -->
## Getting Started
**LOCAL**
<br>
Download the Libre Busca files. In a database (MySQl, MariaDB) + a web interface/graphical client for managing databases (phpMyAdmin, HeidiSQL), create a database called “librebusca,” then  import the “websites.sql” file, which is in the “database” folder, in a table. Configure the database username and password in the “.env” file, then rename it by deleting “.example,” leaving only “.env”. Then just host the website with a web server (Apache for Windows or Nginx for Linux).

**To install LibreBusca, you will need: a web server (Apache or Nginx) + a database (MySQL or MariaDB) + a web interface/graphical client for managing databases (phpMyAdmin or HeidiSQL) [Optional] + PHP (to run the website scripts).**
<br>
## How to use
To learn how to use Libre Busca, please refer to the complete [instructions](readme/instructions.md).

<!-- LB CONFIGURATION -->
## Configuration
**How do I change the maximum number of words/characters people can type in the search?**
<br>
On the “index.php” and “results.php” pages, look for the line below:
<input type="text" name="search" placeholder="Vincit omnia veritas..." maxlength=""> 
The “maxlength” command determines the maximum number of letters that can be entered. Enter the maximum number of characters you want users to be able to type in the search field.

**Send Links page**
<br>
The “send-links” page was created so that you can quickly, easily, and simply submit websites to the database. However, be careful that other people do not have access to this page and submit unwanted websites or attempt an attack. Change the name of the “send-links” page and remove the link to this page from your LB.

**Favicon**
<br>
To add a favicon to your website, place a favicon named “icon” in .png format in the “img” folder.
If you want to add a favicon with a different name or format, you will need to change the line below on all pages:
<link rel="icon" type="image/png" href="img/icon.png">

<!-- ROADMAP -->
## Roadmap

- [x] Complete and functional website capable of performing searches.
- [ ] Improve the PHP/SQL code of the search engine:
    - [ ] Highlight all searched words found in the search (in the title, URL, and description).
    - [ ] Making a pagination system.
    - [ ] Create a “safe mode” system where adult content, for example, will be hidden from users' searches by the users themselves in the settings.
- [ ] Create a web crawler to automate website cataloging.
- [ ] Create a separate search page just for videos.

<!-- CONTRIBUTING -->
## Contributing

Any contributions you make are greatly appreciated.

<!-- LICENSE -->
## License

Distributed under the GPL v3. See `LICENSE.txt` for more information.

<p align="right">(<a href="README.md">back to top</a>)</p>
