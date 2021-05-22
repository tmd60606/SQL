#!/usr/bin/env bash

# Inserting Data Lesson

./DataJek/Lessons/maintenance/startup.sh

mysql -u root -Bse "CREATE DATABASE MovieIndustry;USE MovieIndustry;CREATE TABLE Actors (Id INT AUTO_INCREMENT, FirstName VARCHAR(20), SecondName VARCHAR(20),DoB DATE,Gender ENUM('Male','Female','Transgender'), MaritalStatus ENUM('Married', 'Divorced', 'Single'), NetWorthInMillions DECIMAL, PRIMARY KEY(Id));"

# Launch MySQL
mysql -DMovieIndustry