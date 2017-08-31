

class Pizza
  attr_accessor :number, :name, :ingredients, :price

  def initialize(number, name, ingredients, price)
    @number = number
    @name = name
    @ingredients = ingredients
    @price = price
  end

end
