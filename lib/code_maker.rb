# frozen_string_literal: true

class CodeMaker
  ALLOWED_COLORS = %w[R G B Y O P].freeze

  attr_reader :code

  def initialize
    @code = %w[R G B Y O P].sample(4)
  end

  def exact_match_feedback(guess)
    exact_match = []
    guess.each_with_index do |color, position|
      exact_match.push(color) if color == code[position]
    end
    exact_match_count = exact_match.length
    puts "EXACT MATCHES: #{exact_match_count}"
    exact_match_count
  end
end
