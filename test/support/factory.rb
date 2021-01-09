# frozen_string_literal: true

require "assert/factory"

module Factory
  extend Assert::Factory
  extend self

  def name
    "Joe"
  end

  def erb
    "hello, <%= Factory.name %>!"
  end

  def erb_compiled
    "hello, Joe!"
  end
end
