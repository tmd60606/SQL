#!/usr/bin/env bash

# Querying Data Lesson

./DataJek/Lessons/maintenance/startup.sh


mysql -u root -Bse "CREATE DATABASE MovieIndustry;USE MovieIndustry;CREATE TABLE Actors (Id INT AUTO_INCREMENT, FirstName VARCHAR(20), SecondName VARCHAR(20),DoB DATE,Gender ENUM('Male','Female','Transgender'), MaritalStatus ENUM('Married', 'Divorced', 'Single'), NetWorthInMillions DECIMAL, PRIMARY KEY(Id));"
mysql -u root -Bse "USE MovieIndustry; INSERT INTO Actors ( FirstName, SecondName,DoB, Gender, MaritalStatus, NetWorthInMillions) VALUES (\"Brad\", \"Pitt\", \"1963-12-18\",\"Male\", \"Single\", 240.00),
(\"Jennifer\", \"Aniston\", \"1969-11-02\",\"Female\", \"Single\", 240.00),
(\"Angelina\", \"Jolie\", \"1975-06-04\",\"Female\", \"Single\", 100.00),
(\"Johnny\", \"Depp\", \"1963-06-09\",\"Male\", \"Single\", 200.00);"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO Actors ( FirstName, SecondName,DoB, Gender, MaritalStatus, NetWorthInMillions)
 VALUES (\"Natalie\", \"Portman\", \"1981-06-09\",\"Female\",\"Married\",60.00),
(\"Tom\", \"Cruise\", \"1962-07-03\",\"Male\",\"Divorced\",570.00),
(\"Kylie\", \"Jenner\", \"1997-08-10\",\"Female\",\"Married\",1000.00),
(\"Kim\", \"Kardashian\", \"1980-10-21\",\"Female\",\"Married\",370.00),
(\"Amitabh\", \"Bachchan\", \"1942-10-11\",\"Male\",\"Married\",400.00),
(\"Shahrukh\", \"Khan\", \"1965-11-02\",\"Male\",\"Married\",600.00),
(\"priyanka\", \"Chopra\",\"1982-07-18\",\"Female\",\"Married\",28);"

# Launch MySQL
mysql -DMovieIndustry