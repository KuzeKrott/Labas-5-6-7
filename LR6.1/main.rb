# frozen_string_literal: true

def numb_row(eps)
  return nil if eps.zero?

  sum = 0.0
  k = 1
  elem = 1.0
  while elem/k > eps
    sum += elem/k
    k *= 2
  end
  yield sum, elem/k
end
