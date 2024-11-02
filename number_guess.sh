#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GAME_PLAYED=0
BEST_GAME=0

SECRET_NUMBER=$(( RANDOM % 1001 ))

echo "Enter your username:"
read username

CHECK=$($PSQL "SELECT COUNT(*) FROM details WHERE username='$username'")

if [[ $CHECK -eq 0 ]]; then 
    echo "Welcome, $username! It looks like this is your first time here."
    $PSQL "INSERT INTO details(username, games_played, best_game) VALUES('$username', $GAME_PLAYED, $BEST_GAME)"
else 
    U_NAME=$($PSQL "SELECT username FROM details WHERE username='$username'")
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM details WHERE username='$username'")
    BEST_GAME=$($PSQL "SELECT best_game FROM details WHERE username='$username'")
    echo "Welcome back, $U_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi    

COUNTER=0
GUESS=0

while [ $GUESS -eq 0 ]; do 
   COUNTER=$((COUNTER + 1))
   echo "Guess the secret number between 1 and 1000:"
   read guess_num
   
   if [[ ! $guess_num =~ ^[0-9]+$ ]]; then
       echo "That is not an integer, guess again:"
   else    
       if [[ $guess_num -eq $SECRET_NUMBER ]]; then
           GUESS=1
           GAMES_PLAYED=$((GAMES_PLAYED + 1))
           $PSQL "UPDATE details SET games_played=$GAMES_PLAYED WHERE username='$username'"
           if [[ $BEST_GAME -gt 0 ]] && [[ $COUNTER -lt $BEST_GAME ]]; then 
                 $PSQL "UPDATE details SET best_game=$COUNTER WHERE username='$username'"
           elif [[ $BEST_GAME -eq 0 ]]; then 
                 $PSQL "UPDATE details SET best_game=$COUNTER WHERE username='$username'"
           else
                 $PSQL "UPDATE details SET best_game=$BEST_GAME WHERE username='$username'"
           fi
           echo "You guessed it in $COUNTER tries. The secret number was $SECRET_NUMBER. Nice job!"
           
       elif [[ $guess_num -gt $SECRET_NUMBER ]]; then 
           echo "It's lower than that, guess again:"
       else
           echo "It's higher than that, guess again:" 
       fi
   fi                 
done
