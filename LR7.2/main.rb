# frozen_string_literal: true

# rectangle class
class Car
  attr_accessor :year, :odometer

  def initialize(year, odometer)
    @year = Integer(year)
    @odometer = Integer(odometer)
  end

  def show_params
    puts "Year: #{@year}"
    puts "Mileage: #{@odometer}"
  end

  def approx_mileage
    odometer / (2022 - year)
  end
end

# rectangle parallelepiped class
class OwnedCar < Car
  attr_accessor :sign, :brand, :owner

  def initialize(year, brand, odometer, sign, owner)
    super year, odometer
    @brand = brand
    @sign = sign
    @owner = owner
  end

  def show_params
    super
    puts "Btand: #{@brand}"
    puts "Sign: #{@sign}"
    puts "Owner: #{@owner}"
  end
end
