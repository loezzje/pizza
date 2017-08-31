require_relative "pizza.rb"

class Menu
  attr_accessor :pizzas
  def initialize
    @pizzas = []
    @pizzas << Pizza.new(101, "Verdure", "Homemade grilled vegetables and fresh mushrooms on tomato sauce and mozzarella.", 9)
    @pizzas << Pizza.new(102, "Margherita", "Homemade tomato sauce and mozzarella.", 8)
    @pizzas << Pizza.new(103, "Tonno", "Tuna and red onions on homemade tomato sauce and mozzarella.", 11)
    @pizzas << Pizza.new(104, "Diavolo", "Spicy salsicca sausage, fresh bell pepper and red onions on homemade tomato sauce and mozzarella.", 8)
    @pizzas << Pizza.new(105, "Calzone", "Spicy salsicca sausage, Italian ham and fresh mushrooms on homemade tomato sauce and mozzarella.", 9)
    @pizzas << Pizza.new(106, "Americana", "Spicy pepperoni salami and tangy salsiccia sausage on homemade tomato sauce with mozzarella.", 9)
  end

  def print
    puts "We have on our menu:"
    @pizzas.each do |pizza|
      puts "#{pizza.number}: #{pizza.name} - #{pizza.ingredients}"
    end
  end
end
