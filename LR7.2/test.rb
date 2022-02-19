# frozen_string_literal: true

require 'minitest/autorun'
require './main'

# Tests classes
class TestClasses < Minitest::Test
  def setup
    super
    @year = 1991 + rand(31)
    @odometer = rand(630000)
    @brand = 'Opel Astra'
    @sign = 'Н072КТ15'
    @owner = 'Ivanov'
    @car = Car.new @year, @odometer
    @opel = OwnedCar.new @year, @brand, @odometer, @sign, @owner
  end

  def test_car
    assert_instance_of Car, @car
    assert_equal @year, @car.year
    assert_equal @odometer, @car.odometer
    assert_equal @car.approx_mileage, @odometer / (2022 - @year)
  end

  def test_owned_car
    assert_instance_of OwnedCar, @opel
    assert_equal @year, @opel.year
    assert_equal @odometer, @opel.odometer
    assert_equal @brand, @opel.brand
    assert_equal @sign, @opel.sign
    assert_equal @owner, @opel.owner
    assert_equal @opel.approx_mileage, @odometer / (2022 - @year)
  end
end
