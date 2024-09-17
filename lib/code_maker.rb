# frozen_string_literal: true

class CodeMaker
  ALLOWED_COLORS = %w[R G B Y O P].freeze

  attr_reader :code

  def initialize
    @code = %w[R G B Y O P].sample(4)
  end
end
