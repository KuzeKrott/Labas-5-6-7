# frozen_string_literal: true

require 'minitest/autorun'
require './main'
# 'corr' func testing
class CorrTest < Minitest::Test
  def test_empty_str
    string = ''
    assert_nil corr(string), 'Must be nil'
  end

  def test_some_data
    modified = []
    strings =
      [
        'lll bbb mmm vvv nnn',
        'ooo ppp lll vvv ttt',
        'aaa lll lll lll nnn',
      ]
    expected =
      [
        'bbb mmm vvv nnn',
        'ooo ppp vvv ttt',
        'aaa lll lll nnn',
      ]
    strings.each do |elem|
      modified.append corr(elem) unless corr(elem).nil?
    end
    assert_equal expected, modified, 'Expected and modified arrays must be equal!'
  end
end
