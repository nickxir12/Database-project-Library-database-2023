# Database-project-Library-database-2023
Database project simulating a school library app and connecting it with a database


## Authors
- Elias Kallioras  03120050
- Nikolas Xiros    03120107 

## ER Diagram
![image](https://user-images.githubusercontent.com/62110837/172057838-ed871f63-ae29-498f-ab79-301cb39398a3.png)

## Relational
![image](https://user-images.githubusercontent.com/61976410/172052725-99211133-2059-4af2-8b0c-930bece7b258.png)


## Dependencies
 
 - [MySQL](https://www.mysql.com/)
 - [Apache Server](https://httpd.apache.org/)
 - [PHP](https://www.php.net/)

These dependencies can either be installed as a stack (e.g. LAMP, XAMPP, etc.) or individually. If you select to install each dependency individually you must configure the appropriate files for Apache and MySQL Servers.

## Additional Software

 - [phpMyAdmin] (https://www.phpmyadmin.net/)

phpMyAdmin is a free software tool written inh PHP, intended to handle the administration of MySQL over the Web. phpMyAdmin may be included in the aforementioned technology stacks, otherwise it has to be installed manually.


## Project Structure

After installing and configuring the software dependencies for this project, the files of this repository must be placed in the driectory specified by Apache configuration files as "DocumentRoot". 

Most of the AMP(Apache-MySQL-PHP) stacks contain a folder named "htdocs", which is preconfiguerd as the "DocumentRoot" driectory. In these cases, the repo files must be copied in that folder.

_The demo's toy database is created and populated by_ `db-project-demo.sql`.


## Note for Linux users

Applications that run without `sudo` privileges often are not allowed to connect to MySQL with the _root_ user. In order to overcome this problem, you should create a new MySQL user an grant him privileges for this demo application. Follow these steps:

1. Open a terminal and precede the `mysql` command with `sudo` to invoke it with the privileges of the root Ubuntu user in order to gain access to the root MySQL user. This can be done using  
`sudo mysql -u root -p`.
2. Create a new MySQL user using:  
`mysql> CREATE USER 'type_username'@'localhost' IDENTIFIED BY 'type_your_password_here_123';`
3. Grant the user root privileges on the application's database using:  
`mysql> GRANT ALL PRIVILEGES ON demo.* TO 'type_username'@'localhost' WITH GRANT OPTION;`
4. Reload the grant tables to ensure that the new privileges are put into effect using:
`FLUSH PRIVILEGES;`.
5. Exit MySQL with `mysql> exit;`.


For more details read [this](https://www.digitalocean.com/community/tutorials/how-to-create-a-new-user-and-grant-permissions-in-mysql).

## Install Steps
Clone the repository: Go to GitHub repository and click on the "Code" button. Select "Download ZIP" to download the repository as a ZIP file.

1.Extract the ZIP file: Once the ZIP file is downloaded, extract its contents to a folder on your computer. This folder will contain all the necessary files for your web page.

2.Move files: Open the extracted folder and locate your PHP, CSS, and JS files. Move these files to the appropriate directory in your XAMPP installation. Typically, you would move them to the "htdocs" folder within the XAMPP installation directory.

3.Start XAMPP: Launch the XAMPP control panel and start the Apache server. This will allow your web page to run locally on your computer.

4.Access localhost: Open a web browser and type "localhost" in the address bar. This will take you to the XAMPP default page, indicating that the server is running correctly.

5.Access your web page: To view your web page, open a web browser and enter "localhost" followed by the path to your PHP file. For example, if your PHP file is named "index.php" and located in the "mywebpage" folder within "htdocs", you would enter "localhost/mywebpage/index.php" in the address bar.

That's it! Your web page should now be accessible through your XAMPP localhost environment.


## Usage
The school library system showcases the functionality of an interface that allows users to sign up and log in to the application. The main emphasis during development was placed on establishing a reliable connection with the database, ensuring seamless integration between the system and the database.

While the visual appearance of the interface may be simplistic, the focus was primarily on the database connection and core functionality. Users can make full use of the library and its capabilities, benefiting from the efficient interaction between the system and the database.

The aim of this project was to prioritize the functionality and database connectivity, providing a solid foundation for the school library system.


## Screenshots
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20OperatorHome.png)
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20UserHome.png)
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20book.png)
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20search.png)


