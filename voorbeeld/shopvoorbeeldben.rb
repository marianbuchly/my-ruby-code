#/voorbeeldben met classes voor shop
class product
attr_accessor :name, :description, :price, :id

  def initialize(name, description, price, id)
      @name = name
      @description = description
      @price = price
      @id = id

  end
end

require "./product"

class inventory
  def initialize
    #/3.times do |i| kan ook, zelfde als hieronder
      @products = []
      for i in 0..3
          Product.new("#{i}Name", "#{i}desciption", i.to_f)
      end
  end
  def get_product product_name
      @products.each do |product|
        if product.name == product_name
          return product
          
        end
  end
  "Not found"
end

require "./inventory"
class Shop
  def initialize
    @inventory = Inventory.new
  end
  def what_is_in_store
    p @inventory.inspect
  end
  # def shop_for_item
  #   shop.what_is_in_store
  #   puts "select item to buy"
  #   name = gets.chomp
  #   shop.select_product name

  end
end

#/script to run store
#/dus 4 losse files
require "./shop"

shop = Shop.new
shop_for_item
