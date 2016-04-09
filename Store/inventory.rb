require "./product.rb"
require "./category.rb"

class Inventory
  def initialize
    @categories = []
     fruit_products = [
      Product.new("Apple", "Red", 10, 1),
      Product.new("Grape", "Green", 20, 2),
      Product.new("Orange", "Orange", 30, 3)]

    @categories << Category.new( "Fruit",  fruit_products)
    # beer_products = [
    #   Product.new("Amstel", "a nice brew", 1.5, 1),
    #   Product.new("Heineken", "Green beer", 2, 2)
    #   ];
    # @categories << Category.new( "Beer",  beer_products)
  end
  def get_product product_name
    @categories.each do |category|
      category.products.each do |product|
        if product.name == product_name
          return product
        end
      end
    end
    "ow no its not here"
  end

  def list
    @categories.each do |category|
      puts category.name
      category.products.each do |product|
          puts "-- #{product.name}"
      end
    end
  end
end
