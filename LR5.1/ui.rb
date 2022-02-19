# frozen_string_literal: true

require_relative 'main'

puts 'Please enter x'
print 'x = '
x = gets.to_f
print 'z = '
z = gets.to_f

puts "result: #{y(x, z)}"
