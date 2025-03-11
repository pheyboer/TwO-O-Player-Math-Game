# TwO-O-Player-Math-Game

## Description
Create a 2-Player math game where players take turns to answer simple math addition problems. A new math question is generated for each turn by picking two numbers between 1 and 20. The player whose turn it is is prompted the question and must answer correctly or lose a life.

## Details
Both players start with 3 lives. They lose a life if they mis-answer a question. At the end of every turn, the game should output the new scores for both players, so players know where they stand.

The game doesn’t end until one of the players loses all their lives. At this point, the game should announce who won and what the other player’s score is.


## Plan
-  Each class should be defined in its own rb file. You should not put any other code outside the class definition

- Nouns for classes:
  - Player Class
  - Question Class
  - Game Class

- Roles and Responsibilities
  1. Player Class
    - player in the game, tracks lives and manages state
    - state: 
      - name
      - lives (total 3)
    - behaviour (method):
      - lose_life: decrease lives by 1
      - alive? checks if there are lives left (/3)


  2. Question Class
    - random generated math question (by picking two numbers between 1 and 20)
    - state:
      - num1: random number 1
      - num2: random number 2
      - ans: sum of 1 and 2
    - behaviour:
      - generate: 2 random numbers and gets sum
      - ask_question(player): returns a string with the question
      - correct? check if ans is correct


  3. Game Class
    - manage game: players, turns, game loop
    - state:
      - player1
      - player2
      - current_player
    - behaviour:
      - switch_turn: switch players
      - play_round: generate question, send prompt, check answer, update lives
      - game_over? check if lives remaining for player
      - winner: declares winner and display final score
      - start: runs game loop until player is out of lives