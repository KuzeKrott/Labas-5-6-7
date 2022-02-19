# frozen_string_literal: true

require './main'
require 'minitest/autorun'

# testing 'numb_row'
class NumbRowTest < Minitest::Test
  def test_zero_eps
    assert_nil numb_row(0), 'Must return nil'
  end

  def test_e3
    assert_in_epsilon numb_row(0.1) { |val| val }, 1.875, 0.01, 'Must be approximately 1.875'
  end

  def test_e4
    assert_in_epsilon numb_row(0.001) { |val| val }, 1.998, 0.001, 'Must be approximately 0.999'
  end

  def test_e5
    assert_in_epsilon numb_row(0.00001) { |val| val }, 1.99998, 0.00001, 'Must be approximately 0.999'
  end
end
