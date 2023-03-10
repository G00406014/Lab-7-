CREATE DATABASE mydatabase;
USE mydatabase;

CREATE TABle person(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
age INT NOT NULL,
email VARCHAR(50) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE address(
   id INT NOT NULL AUTO_INCREMENT,
   person_id INT NOT NULL,
   street VARCHAR(50) NOT NULL,
   city VARCHAR(50) NOT NULL,
   county VARCHAR(50) NOT NULL,
   PRIMARY KEY (id),
   FOREIGN KEY (person_id) REFERENCES person(id)
   
   );
   
   
   INSERT INTO person (name, age, email) VALUES
   ("JOHN", 25, "john@example.com"),
   ("ALEX", 28, "alex@atu.com"),
   
   INSERT INTO address (person_id, street, city, county) VALUES
   (1, "123 main st", "anytown", "anycounty"),
   (2, "456 Oak St", "Somecity", "Somecounty"),
   