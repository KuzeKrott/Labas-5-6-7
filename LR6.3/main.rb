# frozen_string_literal: true

def trap(func, min = -1, max = 4, n = 100)
  stp = Float((max - min)) / (n - 1)
  ((min..max).step(stp).inject { |sum, x| ( sum + func.call(x)) } + (func.call(min) + func.call(max))/2).abs
end
