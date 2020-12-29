require "assert/factory"

module Factory
  extend Assert::Factory

  module_function

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
