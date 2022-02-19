# frozen_string_literal: true

def numb_row(eps)
  return nil if eps.zero?

  row = Enumerator.new do |y|
    sum = 0.0
    elem = 1.0
    k = 1
    loop do
      y.yield sum, elem / k
      sum += elem / k
      k *= 2
    end
  end
  if block_given?
    yield(*row.find { |sum, elem| elem < eps })
  else
    row.find { |sum| sum[0] < eps }[0]
  end
end
