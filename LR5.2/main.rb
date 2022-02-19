# frozen_string_literal: true

def corr(str)
  return nil if str.empty?

  str_arr = str.split(' ')
  new_str_arr = []
  str_arr.each.with_index do |word, idx|
    if idx.even? & !word.start_with?('l')
      new_str_arr.append word
    elsif idx.odd?
      if word.start_with?('n')
        print("Введите слово на замену #{word}: ")
        word = gets.chomp
      end
      new_str_arr.append word
    end
  end
  new_str_arr.join(' ')
end
