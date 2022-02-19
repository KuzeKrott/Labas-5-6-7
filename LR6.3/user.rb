# frozen_string_literal: true

require './main'
puts "Интеграл методом трапеций cos(x) + х на промежутке от -1 до 4 (при n разбиений = 100):"
puts trap(->(x) { Math.cos(x) + x})
puts "Интеграл методом трапеций tg(x+1) / х+1 на промежутке от 1 до 2 (при n разбиений = 100):"
puts trap(func = ->(x) { Math.tan(x+1) / (x+1)}, min=1, max=2)