# Mastermind Game

This project is a command-line implementation of the Mastermind game in Ruby.

## Overview

Mastermind is a classic code-breaking game where the player attempts to guess a secret code created by the computer. The code is made up of four unique colors, selected from a predefined set of six. The player has up to 12 attempts to guess the correct code. After each guess, feedback is provided to indicate how many colors are in the correct position (exact matches) and how many correct colors are in the wrong position (color matches).

## Rules

- The code consists of 4 unique colors.
- The player has 12 attempts to guess the correct code.
- Feedback is provided after each guess:
  - **Exact Matches**: The number of colors that are in the correct position.
  - **Color Matches**: The number of correct colors but in the wrong position.
- The available colors are: `R (Red)`, `G (Green)`, `B (Blue)`, `Y (Yellow)`, `O (Orange)`, and `P (Purple)`.

## Features

- Feedback system to guide the player with exact and color matches.
- Codebreaker validation ensures no repeated colors in the player's guess.
- Code is generated randomly by the computer, and no colors are repeated.
- The game provides a final result showing whether the player won or lost, and reveals the secret code if the player fails.

## Getting Started

### Prerequisites

To run this game, you need to have Ruby installed on your machine.

### Installation

1. Clone this repository to your local machine
2. Navigate into the project directory

### How to Play

1. Run the `main.rb` file to start the game:
   ```bash
   ruby main.rb
   ```
2. You will be prompted to guess a code consisting of 4 unique colors.
3. Enter your guess by typing four colors from the options provided (e.g., `R G B Y`), and press Enter.
4. After each guess, you will receive feedback about your guess:
   - **Exact Matches**: The number of colors in the correct position.
   - **Color Matches**: The number of correct colors, but in the wrong position.
5. Keep guessing until you either guess the code or use up all 12 tries.
6. If you guess the code correctly, you win! Otherwise, the correct code will be revealed.

### Example Game Flow

```
Welcome to the Mastermind game!
You need to guess a code of 4 unique colors in less than 12 tries.

Your 1 try
Please, enter 4 unique colors from these options:
R, G, B, Y, O, P
>> R G B Y

EXACT MATCHES: 2
COLOR MATCHES: 1

Your 2 try
Please, enter 4 unique colors from these options:
R, O B P

EXACT MATCHES: 3
COLOR MATCHES: 0
...
```

### Project Structure

```
mastermind-game/
│
├── lib/
│   ├── game.rb          # Main game logic
│   ├── code_maker.rb    # CodeMaker class that generates and evaluates the code
│   ├── code_breaker.rb  # CodeBreaker class for player input and guess validation
│
├── main.rb              # Entry point to run the game
├── README.md            # Project documentation (you are here)
```
