# frozen_string_literal: true

require_relative 'code_maker'
require_relative 'code_breaker'

class Game
  def initialize
    puts "\nWelcome to the Mastermind game!"
    puts 'You need to guess a code of 4 unique colors in less than 12 tries.'

    # Initialize the code maker and code breaker objects
    @code_maker = CodeMaker.new
    @code_breaker = CodeBreaker.new
    @winner = false
  end

  def play
    # The player has 12 tries to guess the code
    12.times do |try|
      puts "\nYour #{try + 1} try\n"

      # Get the player's guess
      guess = @code_breaker.make_guess

      # Get the feedback for exact and color matches
      exact_matches = @code_maker.exact_match_feedback(guess)
      @code_maker.color_match_feedback(guess)

      # Check if the player has won
      if winner?(exact_matches)
        @winner = true
        break
      end
    end

    # Display the final result
    display_result
  end

  private

  # Check if the player has won by getting 4 exact matches
  def winner?(exact_matches)
    exact_matches == 4
  end

  # Display the final result after all tries or when the player wins
  def display_result
    puts "\n"
    if @winner
      puts 'Congratulations! You guessed the code!'
    else
      puts 'Game Over! You were not able to guess the code in 12 tries.'
      puts "The correct code was: #{@code_maker.code.join(', ')}"
    end
  end
end
