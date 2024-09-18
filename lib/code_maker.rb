# frozen_string_literal: true

class CodeMaker
  # Define the allowed colors for the code
  ALLOWED_COLORS = %w[R G B Y O P].freeze

  attr_reader :code

  def initialize
    # Generate a code of 4 unique random colors
    @code = ALLOWED_COLORS.sample(4).uniq
  end

  # Provide feedback for exact matches (correct color and position)
  def exact_match_feedback(guess)
    exact_match_count = guess.select.with_index do |color, position|
      color == code[position]
    end.length
    puts "\nEXACT MATCHES: #{exact_match_count}"
    exact_match_count
  end

  # Provide feedback for color matches (correct color but wrong position)
  def color_match_feedback(guess)
    color_match_count = 0
    guess.each_with_index do |color, position|
      next if color == code[position] # Skip exact matches

      color_match_count += 1 if code.include?(color)
    end
    puts "COLOR MATCHES: #{color_match_count}"
    color_match_count
  end
end
