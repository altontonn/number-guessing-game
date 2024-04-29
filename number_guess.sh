#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

MAIN_MENU(){
  SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))
  echo "Enter your username:"
  read USERNAME
  SELECTED_USERNAME=$($PSQL "SELECT username FROM users WHERE username = '$USERNAME'")

  # check if user exists
  if [[ -z $SELECTED_USERNAME ]]
  then
  # insert to users table
    INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    GAMES_PLAYED=$($PSQL "SELECT count(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
    TRIMMED_GAMES_PLAYED=$(echo $GAMES_PLAYED | sed 's/ |/"/')
    TRIMMED_BEST_GAME=$(echo $BEST_GAME | sed 's/ |/"/')
    echo "Welcome back, $USERNAME! You have played $TRIMMED_GAMES_PLAYED games, and your best game took $TRIMMED_BEST_GAME guesses."
  fi
  
  # echo $SECRET_NUMBER
  echo "Guess the secret number between 1 and 1000:"
  read GUESS
  NUMBER_OF_GUESSES=1

  # add while loop to counter check until correct guess
  while [[ ! $GUESS -eq $SECRET_NUMBER ]]
  do
    NUMBER_OF_GUESSES=$(expr $NUMBER_OF_GUESSES + 1) #epression for adding two numbers
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      read GUESS
    else
      if [[ $GUESS -gt $SECRET_NUMBER ]]
      then
        echo "It's lower than that, guess again:"
        read GUESS
      elif [[ $GUESS -lt $SECRET_NUMBER ]]
      then
        echo "It's higher than that, guess again:"
        read GUESS
      fi
    fi
  done
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  echo $($PSQL "INSERT INTO games(user_id, guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")
  echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
}
MAIN_MENU