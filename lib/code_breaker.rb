# frozen_string_literal: true

class CodeBreaker
  ALLOWED_COLORS = %w[R G B Y O P].freeze

  def make_guess
    loop do
      puts 'Please, enter 4 unique colors from these options:'
      puts ALLOWED_COLORS.join(', ')
      guess = gets.chomp.upcase.gsub(/[^A-Z\s]/, ' ').split

      return guess if valid_guess?(guess)

      puts 'Invalid input! Make sure you enter 4 unique colors from the allowed list.'
    end
  end

  private

  def valid_guess?(guess)
    guess.length == 4 && guess.all? { |color| ALLOWED_COLORS.include?(color) } && guess.uniq.length == 4
  end
end
