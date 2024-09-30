RUN sudo mysql -u root

RUN ALTER USER 'root'@localhost IDENTIFIED WITH mysql_native_password BY 'Testpassword@123';

RUN CREATE USER 'wp_user'@localhost IDENTIFIED BY 'Testpassword@123';

RUN CREATE DATABASE wp;

RUN GRANT ALL PRIVILEGES ON wp.* TO 'wp_user'@localhost;