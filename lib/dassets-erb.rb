# frozen_string_literal: true

require "erb"
require "dassets/engine"
require "dassets-erb/version"

module Dassets::Erb; end
class Dassets::Erb::Engine < Dassets::Engine
  def self.ERB_EXTENSIONS
    ["erb", "erubis", "erubi"]
  end

  def ext(input_ext)
    return "" if self.class.ERB_EXTENSIONS.include?(input_ext)

    input_ext
  end

  def compile(input_content)
    ::ERB.new(input_content).result(binding)
  end
end
