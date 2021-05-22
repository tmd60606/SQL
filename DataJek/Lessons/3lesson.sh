#!/usr/bin/env bash

./DataJek/Lessons/maintenance/startup.sh


mysql -u root -Bse "CREATE DATABASE MovieIndustry;"

# Launch MySQL
mysql -DMovieIndustry