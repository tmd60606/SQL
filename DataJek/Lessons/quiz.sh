#!/usr/bin/env bash

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
(\"priyanka\", \"Chopra\",\"1982-07-18\",\"Female\",\"Married\",28),
(\"Khloe\", \"Kardashian\",\"1984-06-27\",\"Female\",\"Divorced\",40),
(\"Kourtney\", \"Kardashian\",\"1979-04-18\",\"Female\",\"Single\",35),
(\"Abhishek\", \"Bachchan\", \"1976-02-05\",\"Male\",\"Married\",35),
(\"Frank\", \"Sinatra\", \"1915-12-12\",\"Male\",\"Married\",600),
(\"Fahim\", \"Haq   \", \"1981-01-01\",\"Male\",\"Married\",1);"

mysql -u root -Bse "USE MovieIndustry; CREATE TABLE DigitalAssets (URL VARCHAR(200), AssetType ENUM('Facebook', 'Twitter', 'Instagram', 'Pinterest', 'Website'), LastUpdatedOn TIMESTAMP, ActorId INT, PRIMARY KEY(URL));"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO DigitalAssets VALUES
(\"https://www.instagram.com/bradpittoficial\", \"Instagram\", \"2019-05-15 16:25:02\", 1),
(\"https://www.bradpittweb.com\", \"Website\", \"2020-01-01 23:12:13\", 1),
(\"https://www.facebook.com/JenniferAniston\", \"Facebook\", \"2019-11-11 15:00:00\", 2),
(\"https://twitter.com/jenniferannistn\", \"Twitter\", \"2019-02-13 03:04:25\", 2),
(\"http://jennifer-aniston.org\", \"Website\", \"2019-10-11 23:14:05\", 2),
(\"https://twitter.com/joliestweet\", \"Twitter\", \"2019-02-03 00:04:25\", 3),
(\"https://www.pinterest.com/angelinajolie5601\", \"Pinterest\", \"2019-06-04 03:44:36\", 3),
(\"http://www.angelina-jolie.com\", \"Website\", \"2019-05-01 12:54:02\", 3),
(\"https://www.facebook.com/JohnChristopherOfficial\", \"Website\", \"2018-07-11 17:17:18\", 4),
(\"https://www.facebook.com/natalieportmandotcom\", \"Facebook\", \"2019-06-09 09:14:20\", 5),
(\"https://twitter.com/natpdotcom\", \"Twitter\", \"2019-06-09 10:12:21\", 5),
(\"https://www.pinterest.com/natalieportmandotcom\", \"Pinterest\", \"2019-06-09 09:14:20\", 5),
(\"https://www.natalieportman.com\", \"Website\", \"2018-11-24 15:6:59\", 5),
(\"https://www.facebook.com/officialtomcruise\", \"Facebook\", \"2019-10-28 19:39:40\", 6),
(\"https://twitter.com/TomCruise\", \"Twitter\", \"2018-07-05 06:16:12\", 6),
(\"http://www.tomcruise.com\", \"Website\", \"2019-10-23 09:56:33\", 6),
(\"https://www.facebook.com/KimKardashian\", \"Facebook\", \"2019-09-04 18:07:38\", 8),
(\"https://twitter.com/KimKardashian\", \"Twitter\", \"2019-08-28 22:19:33\", 8),
(\"https://www.kkwbeauty.com\", \"Website\", \"2018-03-15 13:25:00\", 8),
(\"https://www.facebook.com/IamSRK\", \"Facebook\", \"2000-10-30 01:00:54\", 10),
(\"https://twitter.com/iamsrk\", \"Twitter\", \"2019-08-18 18:39:08\", 10),
(\"https://www.instagram.com/amitabhbachchan\", \"Instagram\", \"2000-10-24 18:39:08\", 9);"


# Create the Movies table
mysql -u root -Bse "USE MovieIndustry; CREATE TABLE Movies (Name VARCHAR(100), ReleaseDate DATE, Producer VARCHAR(100), Id INT AUTO_INCREMENT PRIMARY KEY, BudgetInMillions DECIMAL, CollectionInMillions DECIMAL(10,5), UNIQUE INDEX (Name, ReleaseDate, Producer));"
mysql -u root -Bse "USE MovieIndustry; INSERT INTO Movies (Name, Producer, ReleaseDate, BudgetInMillions, CollectionInMillions)  VALUES
(\"Ocean's Twelve\", \"Jerry Weintraub\", \"2004-12-10\", 110, 435),
(\"Mr & Mrs. Smith\", \"Arnon Milchan\", \"2005-06-07\", 110, 478.2),
(\"Mission: Impossible - Fallout\", \"J. J. Abrams\", \"2018-07-12\", 178, 791.1),
(\"London Fields\", \"Chris Hanley\", \"2018-09-20\", 8, 0.487),
(\"Ocean's 11\", \"Jerry Weintraub\", \"2001-12-07\", 85, 450.7),
(\"Ocean's 11\", \"Lewis Milestone\", \"1960-08-03\", 2.8, 5),
(\"Regarding Henry\", \"J. J. Abrams\", \"1991-07-12\", 25, 43),
(\"Mohabbatein\", \"Yash Chopra\", \"2000-10-27\", 2.5, 12.55),
(\"Keeping Up with the Kardashians\", \"Ryan Seacrest\", \"2007-10-14\", 100, 300),
(\"Avengers: Endgame\", \"Kevin Feige\", \"2019-04-22\", 356, 2798);"

# Create the Cast table
mysql -u root -Bse "USE MovieIndustry; CREATE TABLE Cast (ActorId INT NOT NULL, MovieId INT NOT NULL, PRIMARY KEY (ActorId, MovieId));"
mysql -u root -Bse "USE MovieIndustry; INSERT INTO Cast (ActorId, MovieId) VALUES
(1, 1), -- Ocean's twelve, Bradd Pitt
(1, 2), -- Mr & Mrs. Smith, Bradd
(3, 2), -- Mr & Mrs. Smith, Angelina
(6, 3), -- Mission Impossible, Tom
(4, 4), -- London Fields, Jhonny Depp
(1, 5), -- Ocean's 11, Brad Pitt
(15, 6), -- Ocean's 11, Frank Sinatra
(10, 8), -- Mohabbatein, Shahrukj
(14, 8), -- Mohabbatein, Amitabh
(8, 9), -- KUWK, Kim
(12, 9), -- KUWK, Khloé
(13, 9), -- KUWK, Kourtney
(5, 10); -- Avengers, Natalie"

# Launch MySQL
mysql -DMovieIndustry