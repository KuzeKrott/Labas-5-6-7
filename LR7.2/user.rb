# frozen_string_literal: true

require './main'

puts ''
puts 'Car:'
car = Car.new(2016, 108324)
car.show_params
puts "Approximate yearly mileage: #{car.approx_mileage}"

puts ''
puts 'Owned car:'
opel = OwnedCar.new(2008, 'Opel Astra', 182205, 'Н072КТ15', 'Ivanov')
opel.show_params
puts "Approximate yearly mileage: #{opel.approx_mileage}"
