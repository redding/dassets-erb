require "assert"
require "dassets-erb"

require "dassets/engine"

class Dassets::Erb::Engine
  class UnitTests < Assert::Context
    desc "Dassets::Erb::Engine"
    subject { unit_class }

    let(:unit_class) { Dassets::Erb::Engine }
  end

  class InitTests < UnitTests
    desc "when init"
    subject { unit_class.new }

    should "be a Dassets engine" do
      assert_that(subject).is_kind_of(Dassets::Engine)
      assert_that(subject).responds_to("ext")
      assert_that(subject).responds_to("compile")
    end

    should "remove any input extension" do
      assert_that(subject.ext("erb")).equals("")
      assert_that(subject.ext("erubis")).equals("")
      assert_that(subject.ext("whatever")).equals("")
    end

    should "compile any input content as ERB" do
      assert_equal @factory.erb_compiled, subject.compile(@factory.erb)
    end
  end
end
