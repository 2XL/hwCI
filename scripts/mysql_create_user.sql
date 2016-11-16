
CREATE USER 'x'@'localhost' IDENTIFIED BY 'x'; # create user

GRANT ALL PRIVILEGES ON *.* TO 'x'@'localhost'; # session operation

FLUSH PRIVILEGES; # commit operations