# frozen_string_literal: true

require './main'

print 'Введите название файла: '
file = gets.chomp
result = max_word(open_file(file))
if result.nil?
  puts 'Файл пуст'
else
  puts "Самое длинное слово в файле: #{result}"
end
