module Dassets::Erb

  module Factory
    module_function

    def name
      "Joe"
    end

    def erb
      "hello, <%= Dassets::Erb::Factory.name %>!"
    end

    def erb_compiled
      "hello, Joe!"
    end

  end

end
