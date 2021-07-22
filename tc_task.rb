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
    assert_equal("1\n11\n21\n1211\n111221\n312211\n13112221\n1113213211", @sequence.print_sequence(8))
  end

end
