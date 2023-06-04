# Database-project-Library-database-2023
Database project simulating a school library app and connecting it with a database


## Authors
- Elias Kallioras  03120050
- Nikolas Xiros    03120107 

## ER Diagram
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/Diagrams/ER.png)

## Relational
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/Diagrams/Relational.jpg)


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
1.Clone the Repository: Start by cloning the GitHub repository containing the DDL and DML scripts to the user's local machine. This can be done using the git clone command followed by the repository's URL.


2.Install XAMPP: Ensure that XAMPP is installed on the user's computer. XAMPP provides the necessary web server and database services to run the application. Follow the installation instructions specific to the user's operating system.

3.Start XAMPP: Launch XAMPP and start the Apache web server and MySQL database server. This can usually be done through the XAMPP control panel.

4.Import the Database: Access the MySQL database management tool (phpMyAdmin) through the XAMPP control panel or by navigating to http://localhost/phpmyadmin in a web browser. Create a new database and import the DDL script to set up the necessary database structure.

a. Create Database: Click on "New" to create a new database and provide a suitable name.

b. Import DDL Script: Select the newly created database and navigate to the "Import" tab. Choose the DDL script file from your local machine and click on "Go" to execute the script and create the required tables.

5.Import DML Script : Follow a similar process to import the DML script and populate the tables with sample data.

6.Configure Application: Depending on your application's configuration, you may need to update the database connection settings in your PHP files. Open the relevant PHP files and modify the database host, username, password, and database name to match the user's local setup.

7.Start the Application: Place the PHP, CSS, JS, and other necessary files in the appropriate directory within the XAMPP htdocs folder (usually located at C:\xampp\htdocs\). Access the application by opening a web browser and entering the URL http://localhost/your-application-folder.


## Usage
The school library system showcases the functionality of an interface that allows users to sign up and log in to the application. The main emphasis during development was placed on establishing a reliable connection with the database, ensuring seamless integration between the system and the database.

While the visual appearance of the interface may be simplistic, the focus was primarily on the database connection and core functionality. Users can make full use of the library and its capabilities, benefiting from the efficient interaction between the system and the database.

The aim of this project was to prioritize the functionality and database connectivity, providing a solid foundation for the school library system.


## Screenshots
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20OperatorHome.png)
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20UserHome.png)
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20book.png)
![image](https://github.com/nickxir12/Database-project-Library-database-2023/blob/main/screenshoots/Screenshot%20search.png)


