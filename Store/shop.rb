require "./inventory.rb"
#require "./cart.rb"

puts "Welcome to our Shop.\n"

class Shop
  def initialize
    @inventory = Inventory.new
  end
  def what_is_in_store
    puts "Please make your choice. We have:"
    @inventory.list
  end
  def shop_for_item
    what_is_in_store

    puts "Select item to buy by product name"
    name = gets.chomp
    puts "Product added to cart. Your total is:#{@total_price}. You cart
    contains:#{@cart}"


  result = @inventory.get_product name
  p result

  def buy_more
      puts "would you like to buy more {1 or 2}?

      1)yes
      2)no"

      more = gets.chomp.to_i

      if more == 1
      what_is_in_store
      shop_for_item
    else
      puts "Please check out. Your total is:#{@total_price}. You cart
      contains:#{@cart}"
    end
      # @cart << product
      # @total_price += 1.0
      #@inventory -= 1







      # if more == 1
      #   puts "What more would you like?\n"
      #   puts "We still have:"
      #   puts @inventory.list
      # elsif more == 2
      #   puts "The total is #{@total_price}\n"
      # else
      #   puts "Please pick again"
      # end
  end

  end
end


  #   def choose_product
  #     puts "What are you looking for. We have:"
  #     puts"
  #      1) Apples
  #      2) Oranges
  #      3) Grapes
  #
  #     Please make you choice {1-3}"
  #
  #     choice = gets.chomp.to_i
  #     puts "You chose: #{choice}"
  #
  #     if choice == 1
  #       #@cart << "Apples\n"
  #       #@total_price += 1.0
  #       #@products[choice] -= stock
  #       puts "Apples Added to cart\n"
  #     elsif choice == 2
  #       #@cart << "Oranges\n"
  #       #@total_price += 2.0

  #       puts "Oranges Added to cart\n"
  #     elsif choice == 3
  #       #@cart << "Grapes\n"
  #       #@total_price += 3.0
  #
  #       puts "Grapes Added to cart\n"
  #     else
  #       puts "Sorry we are out\n"
  #       #show_inventory
  #
  #     end
  # end
  # #show_inventory
  #
  # #puts "Your total is #{@total_price}\n"
  #
  # def buy_more
  #     puts "would you like to buy more {1 or 2}?
  #
  #     1)yes
  #     2)no"
  #
  #     more = gets.chomp.to_i
  #
  #     if more == 1
  #       puts "What more would you like?\n"
  #       puts "We still have: #{@inventory}"
  #     elsif more == 2
  #       puts "The total is #{@total_price}\n"
  #     else
  #       puts "Please pick again"
  #     end
  # end
