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
mysql -u root -Bse "USE MovieIndustry; INSERT INTO Cast (ActorId, MovieId) VALUES (
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

mysql -u root -Bse "USE MovieIndustry; ALTER TABLE Movies ADD Distributor varchar(100);";
mysql -u root -Bse "USE MovieIndustry; ALTER TABLE Movies ADD Genre varchar(100);"
mysql -u root -Bse "USE MovieIndustry; ALTER TABLE Movies ADD RunningTime int;"

mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"Warner Bros\" , Genre = \"Action\" , RunningTime = 116 Where Id = 1;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor =\"20th Century Studios\", Genre =\"Action\" , RunningTime = 120  Where Id = 2;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor =\"Paramount Pictures\" , Genre =\"Action\" , RunningTime = 147 Where Id = 3;"

mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"GVN Releasing\", Genre =\"Thriller\" , RunningTime =120  Where Id = 4;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"Warner Bros\" , Genre = \"Thriller\"  , RunningTime =116  Where Id = 5;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"Warner Bros\" , Genre =\"Classics\" , RunningTime = 130 Where Id =6;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"Paramount Pictures\", Genre = \"Drama\", RunningTime = 107 Where Id = 7;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"YashRaj Films\" , Genre =\"Romance\" , RunningTime = 216 Where Id = 8;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"NBC Universal\", Genre =\"Reality Television\" , RunningTime =42 Where Id = 9;"
mysql -u root -Bse "USE MovieIndustry; UPDATE Movies SET Distributor = \"Walt Disney\", Genre =\"Action\" , RunningTime=181 Where Id = 10;"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO Movies (Name, ReleaseDate, BudgetInMillions, CollectionInMillions, Genre, Distributor, RunningTime) VALUES
('Transformers: The Last Knight', '2017-06-21', 217, 602.893, 'Action', 'Paramount Pictures', 148);"

mysql -u root -Bse "USE MovieIndustry; CREATE TABLE MovieScreening (
MovieId INT NOT NULL,
Weekend DATE NOT NULL,
TheaterCount INT DEFAULT 0,
RevenueInMillions DECIMAL (10,5) NOT NULL,
PRIMARY KEY (MovieId,Weekend));"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO MovieScreening (MovieId, Weekend, TheaterCount, RevenueInMillions)
VALUES (10, '2019-04-26', 4662, 357.115), (10, '2019-05-03', 4662, 147.383), (10, '2019-05-10', 4662, 63.299), (10, '2019-05-17', 4220, 29.973), (10, '2019-05-24', 3810, 17.200), (10, '2019-05-31', 3105, 8.037), (10, '2019-06-07', 2121, 4.870), (10, '2019-06-14', 1450, 3.725), (10, '2019-06-21', 985, 1.987), (10, '2019-06-28', 2025, 6.108), (10, '2019-07-05', 1985, 3.118), (10, '2019-07-12', 1443, 2.104), (10, '2019-07-19', 985, 1.514), (10, '2019-07-26', 580, 0.952), (10, '2019-08-02', 420, 0.383);"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO MovieScreening (MovieId, Weekend, TheaterCount, RevenueInMillions)  VALUES (5, '2001-12-07', 3075, 38.107), (5, '2001-12-14', 3075, 22.076), (5, '2001,12-21', 3075, 14.716), (5, '2001-12-28', 3075, 16.907), (5, '2002-01-04', 2770, 11.052), (5, '2002-01-11', 2670, 7.738), (5, '2002-01-18', 2670, 10.713), (5, '2002-01-25', 2010, 5.176), (5, '2002-02-01', 1541, 2.056), (5, '2002-02-08', 812, 0.992), (5, '2002-02-15', 407, 3.384), (5, '2002-02-22', 176, 0.193), (5, '2002-03-01', 123, 2.145), (5, '2002-03-08', 102, 0.114), (5, '2002-03-15', 311, 0.267);"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO MovieScreening (MovieId, Weekend, TheaterCount, RevenueInMillions)
VALUES (1, '2004-12-10', 3290, 39.153), (1, '2004-12-17', 3290, 18.124), (1, '2004-12-24', 3290, 8.401), (1, '2004-12-31', 3290, 9.433), (1, '2005-01-07', 3010, 5.310), (1, '2005-01-14', 2105, 2.984), (1, '2005-01-21', 1275, 1.379), (1, '2005-01-28', 702, 0.688), (1, '2005-02-04', 407, 0.338), (1, '2005-02-11', 201, 0.188), (1, '2005-02-18', 463, 0.384), (1, '2005-02-25', 202, 0.152), (1, '2005-03-04', 140, 0.091), (1, '2005-03-11', 115, 0.048), (1, '2005-03-18', 73, 0.024);"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO MovieScreening (MovieId, Weekend, TheaterCount, RevenueInMillions)
VALUES (2, '2005-06-10', 3424, 50.342), (2, '2005-06-17', 3451, 26.037), (2, '2005-06-24', 3265, 16.852), (2, '2005-07-01', 2985, 10.572), (2, '2005-07-08', 2781, 7.872), (2, '2005-07-15', 2370, 5.234), (2, '2005-07-22', 1916, 3.701), (2, '2005-07-29', 1142, 1.833), (2, '2005-08-05', 833, 1.304), (2, '2005-08-12', 576, 0.817), (2, '2005-08-19', 416, 0.458), (2, '2005-08-26', 355, 0.373), (2, '2005-09-02', 351, 0.401), (2, '2005-09-09', 383, 0.308), (2, '2005-09-16', 268, 0.205);"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO MovieScreening (MovieId, Weekend, TheaterCount, RevenueInMillions)
VALUES (3, '2018-07-27', 4368, 61.236), (3, '2018-08-03', 4395, 35.323), (3, '2018-08-10', 3888, 19.352), (3, '2018-08-17', 3482, 10.773), (3, '2018-08-24', 3052, 8.087), (3, '2018-08-31', 2639, 7.032), (3, '2018-09-07', 2334, 3.885), (3, '2018-09-14', 1761, 2.285), (3, '2018-09-21', 871, 1.162), (3, '2018-09-28', 538, 0.624), (3, '2018-10-05', 361, 0.321), (3, '2018-10-12', 221, 0.157);"

mysql -u root -Bse "USE MovieIndustry; INSERT INTO MovieScreening (MovieId, Weekend, TheaterCount, RevenueInMillions)
VALUES (11, '2017-06-23', 4069, 44.680), (11, '2017-06-30', 4132, 16.880), (11, '2017-07-07', 3241, 6.376), (11, '2017-07-14', 2323, 2.843), (11, '2017-07-21', 1025, 1.169), (11, '2017-07-28', 538, 0.557), (11,  '2017-08-04', 322, 0.302), (11,  '2017-08-11', 255, 0.264), (11,  '2017-08-18', 224, 0.175);"

# Launch MySQL
mysql -DMovieIndustry
