# frozen_string_literal: true

require "erb"
require "dassets/engine"
require "dassets-erb/version"

module Dassets::Erb; end
class Dassets::Erb::Engine < Dassets::Engine
  def ext(input_ext)
    ""
  end

  def compile(input_content)
    ::ERB.new(input_content).result(binding)
  end
end
