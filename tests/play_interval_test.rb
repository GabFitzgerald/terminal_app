require 'test/unit'
require_relative '../play_interval.rb'

class PlayIntervalTest < Test::Unit::TestCase
  def test_play_interval
    total = add(1,2)
    assert_equal(3, total)
  end
end