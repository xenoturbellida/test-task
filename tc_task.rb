require_relative "task"
require "test/unit"

class TestTask < Test::Unit::TestCase

  def setup
    @sequence = Sequence.new
  end

  def test_proverka
    assert_equal("1", @sequence.init_number)
  end

end
