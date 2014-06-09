require 'assert'
require 'dassets-erb'

require 'dassets/engine'

class Dassets::Erb::Engine

  class UnitTests < Assert::Context
    desc "Dassets::Erb::Engine"
    setup do
      @engine = Dassets::Erb::Engine.new
    end
    subject{ @engine }

    should "be a Dassets engine" do
      assert_kind_of Dassets::Engine, subject
      assert_respond_to 'ext', subject
      assert_respond_to 'compile', subject
    end

    should "remove any input extension to `css`" do
      assert_equal '', subject.ext('erb')
      assert_equal '', subject.ext('erubis')
      assert_equal '', subject.ext('whatever')
    end

    should "compile any input content as Erb" do
      assert_equal @factory.erb_compiled, subject.compile(@factory.erb)
    end

  end

end
