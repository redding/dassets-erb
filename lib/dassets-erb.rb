require 'erb'
require 'dassets/engine'
require "dassets-erb/version"

module Dassets::Erb

  class Engine < Dassets::Engine

    def ext(input_ext)
      ''
    end

    def compile(input_content)
      ::ERB.new(input_content).result(binding)
    end

  end

end
