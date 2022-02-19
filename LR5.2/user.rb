# frozen_string_literal: true

require './main'
str_arr = []
puts 'Вводите строки. Для окончания ввода - stop.'
str = ''
while str != 'stop'
  str_arr.append(str)
  str = gets.chomp
end
puts '-----'
new_str_arr = []
str_arr.each do |cur_str|
  new_str_arr.append(corr(cur_str)) if corr(cur_str)
end
puts new_str_arr
