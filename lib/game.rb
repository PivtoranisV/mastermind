# frozen_string_literal: true

require_relative 'code_maker'
require_relative 'code_breaker'
class Game
  def initialize
    puts "\n"
    puts 'Welcome to the Mastermind game!'
    puts 'You need to guess a code of 4 unique colors in less than 12 tries.'
    @code_maker = CodeMaker.new
    @code_breaker = CodeBreaker.new
    @winner = false
  end

  def play
    12.times do |try|
      puts "\n"
      puts "Your #{try + 1} try"
      puts "\n"
      guess = @code_breaker.make_guess

      exact_matches = @code_maker.exact_match_feedback(guess)
      @code_maker.color_match_feedback(guess)

      if winner?(exact_matches)
        @winner = true
        break
      end
    end

    display_result
  end

  private

  def winner?(exact_matches)
    exact_matches == 4
  end

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
