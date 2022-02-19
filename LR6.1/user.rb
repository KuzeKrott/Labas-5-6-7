# frozen_string_literal: true

require './main'
print 'Введите значение EPS: '
e = gets.to_f
numb_row(e) { |sum, elem| puts "Сумма: #{sum}\nОчередной член прогрессии: #{elem}" }
