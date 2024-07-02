# #########################################################################
# Personal Notes - Zilla ##################################################
# #########################################################################

As a PHP Developer I used to work with XAMPP most part of my life. With Docker technology, I retired XAMPP
and started to use Docker with a basic Apache Server and a MySQL Database.

### After clonning the files to your local repository:
1. Inside the project's directory, open the Terminal and run `docker compose build` to build the Images.
2. Still in the Terminal, run the command `docker compose up` to start the services (containers). You can ad the `-d` flag to the command to activate the "Detached mode" that run the containers in the background giving you back the control of the Terminal. On detached mode, the command would be `docker compose up -d`

### Directories
- **/.docker/:** Apache and MySQL Dockerfile configurations.
- **/web/:** Database connection (./conn.php), home page (/index.php) with Table Query Result and a PHP_INFO page (phpinfo.php).
- **/docker.compose.yml:** YML file with Docker Compose configurations.
- **/.htaccess:** A Rewrite example where `localhost/phpinfo.php` can be accessed with the `localhost/phpinfo-details` friendly URL

> [!TIP]
> While containers are running you can access them with the commands:
> **Apache server:** `docker exec -it frontend-container /bin/bash`
> **MySQL server:** `docker exec -it database-container /bin/bash` to access the MySQL container. To get into MySQL database, once inside the container you will need to run the following command: `mysql -u root -p'rootpwd' -D email_sender`.
> Those commands above will work if none of the containers' name and MySQL password are not modified from the original source code. If you rename any of the items (Containers' name and MySQL password) after clonning the Project, you will have to update them in the others files.