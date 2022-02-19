# frozen-string-literal: true

require './main'
require 'minitest/autorun'

# yeah
class MaximTest < Minitest::Test
  def test_default
    assert_in_epsilon trap(->(x) { Math.cos(x) + x}),
                      152.5224,
                      0.0001,
                      'Must be approximately 152.5224'
  end

  def test_zero_space
    assert_in_epsilon trap(func = ->(x) { Math.tan(x+1) / (x+1)}, min=1, max=2),
                      36.3603,
                      0.0001,
                      'Must be approximately 36.3603'
  end
end
