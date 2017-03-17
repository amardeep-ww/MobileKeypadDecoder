require_relative "assignment.rb"
require "test/unit"

#run these test cases by using this command ruby TestMobileKeypadDecoder.rb
class TestMobileKeypadDecoder < Test::Unit::TestCase
  def test_simple
    assert_equal(Moblile_keypad_decoder.new.init('6686787825'),[["noun", "struck"], ["onto", "struck"], ["motor", "truck"], ["motor", "usual"], ["nouns", "truck"], ["nouns", "usual"], ["motortruck"]])
    assert_equal(Moblile_keypad_decoder.new.init('2282668687'),[["act", "amounts"], ["act", "contour"], ["bat", "amounts"], ["bat", "contour"], ["cat", "amounts"], ["cat", "contour"], ["acta", "mounts"], ["catamounts"]])
    assert_equal(Moblile_keypad_decoder.new.init('2222738275'),[["cabaret", "ark"], ["cabaret", "ask"]])
    assert_equal(Moblile_keypad_decoder.new.init('2282668625'),[["acta", "nounal"]])
  end
end

