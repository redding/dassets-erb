require "assert"
require "dassets-erb"

require "dassets/engine"

module Dassets::Erb
  class UnitTests < Assert::Context
    desc "Dassets::Erb"
    subject { unit_class }

    let(:unit_class) { Dassets::Erb }
  end

  class EngineTests < UnitTests
    desc "Engine"
    subject { engine_class }

    let(:engine_class) { unit_class::Engine }

    should "know its ERB extensions" do
      assert_that(subject.ERB_EXTENSIONS).equals(["erb", "erubis", "erubi"])
    end
  end

  class EngineInitTests < EngineTests
    desc "when init"
    subject { engine_class.new }

    should "be a Dassets engine" do
      assert_that(subject).is_kind_of(Dassets::Engine)
      assert_that(subject).responds_to("ext")
      assert_that(subject).responds_to("compile")
    end

    should "only remove ERB-like input extensions" do
      assert_that(subject.ext("erb")).equals("")
      assert_that(subject.ext("erubis")).equals("")
      assert_that(subject.ext("erubi")).equals("")
      assert_that(subject.ext("css")).equals("css")
      assert_that(subject.ext("js")).equals("js")
    end

    should "compile any input content as ERB" do
      assert_equal Factory.erb_compiled, subject.compile(Factory.erb)
    end
  end
end
