require 'test/unit'
require_relative '../find_intervals.rb'

class FindIntervalsTest < Test::Unit::TestCase
  def test_find_easiest_intervals()
    easiest_interval = test_find_easiest_intervals([1, 2, 2, 3, 3, 4, 4, 5, 5])
    assert_equal(["minor 2nd"], easiest_interval)
  end

  # def test2_feedback
  #   message = feedback([1,2,3,4,5,5], 5)
  #   assert_equal("You got these intervals in the first try: minor 2nd, major 2nd, minor 3rd, major 3rd
  #   You struggled most with: perfect 4th
  #   Final score: 83 %", message)
  # end
end