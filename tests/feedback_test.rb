require 'test/unit'
require_relative '../feedback.rb'

class FeedbackTest < Test::Unit::TestCase
  def test1_feedback
    message = feedback([1,2,3,4,5], 6)
    assert_equal("Perfect score!", message)
  end

  # def test2_feedback
  #   message = feedback([1,2,3,4,5,5], 5)
  #   assert_equal("You got these intervals in the first try: minor 2nd, major 2nd, minor 3rd, major 3rd
  #   You struggled most with: perfect 4th
  #   Final score: 83 %", message)
  # end
end


