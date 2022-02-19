# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'main'

# foo function testing
class TestY < Minitest::Test
  def test_zero_division
    assert y(5, 6).nan?, 'Must be NaN'
  end

  def test_random1
    res = y(6,5)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 7262.718282869118, 0.001, 'Must be approximately right'
  end

  def test_random2
    res = y(10, 11)
    assert res.finite?, 'Must be finite'
    assert_in_epsilon res, 1101323.7155136268, 0.001, 'Must be approximately right'
  end
end
