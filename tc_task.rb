require_relative "task"
require "test/unit"

class TestTask < Test::Unit::TestCase

  def setup
    @sequence = Sequence.new
  end

  def test_next_number_is_proper
    assert_equal("11", @sequence.next_number("1"))
    assert_equal("21", @sequence.next_number("11"))
    assert_equal("1211", @sequence.next_number("21"))
    assert_equal("111221", @sequence.next_number("1211"))
    assert_equal("312211", @sequence.next_number("111221"))
    assert_equal("13112221", @sequence.next_number("312211"))
    assert_equal("1113213211", @sequence.next_number("13112221"))
  end

  def test_sequence_is_proper
    @sequence.generate_sequence(6)
    assert_equal("1", @sequence.sequence[0])
    assert_equal("11", @sequence.sequence[1])
    assert_equal("21", @sequence.sequence[2])
    assert_equal("1211", @sequence.sequence[3])
    assert_equal("111221", @sequence.sequence[4])
    assert_equal("312211", @sequence.sequence[5])
    assert_equal("13112221", @sequence.sequence[6])
  end

end
