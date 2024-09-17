# frozen_string_literal: true

require_relative 'lib/game'
require_relative 'lib/code_breaker'
require_relative 'lib/code_maker'

code = CodeMaker.new

p code.code
code.exact_match_feedback(%w[R P G O])
code.color_match_feedback(%w[R P G O])
