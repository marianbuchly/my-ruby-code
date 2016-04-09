#/store

@total_price = 0.0
@cart = ""
@inventory = {}
@products = [
{:refer_num =>1, :name =>"Apple", :price => 10 ,:stock =>10},
{:refer_num =>2, :name =>"Peer", :price => 20,:stock =>10},
{:refer_num =>3, :name =>"Grape", :price => 30,:stock =>10},
{:refer_num =>4, :name =>"Orange", :price => 40,:stock =>10},
{:refer_num =>5, :name =>"Kiwi", :price => 50,:stock =>10},
]

puts "Welcome to the store.\n
"

@products.each do | refnum, name, price, stock |
	puts "#{refnum} #{name} #{price} #{stock}\n"
end

def add_to_price(price, quantity)
  @total_price +- (price * quantity)
end

#def build_inventory
#  add_to_inventory("Apples", 100, 1.0)
#  add_to_inventory("Oranges", 200, 2.0)
#  add_to_inventory("Grapes", 300, 3.0)
#end

#def add_to_inventory(product, quantity, price)
#  @inventory[product] = {
#    "quantity" => quantity,
#    "price" => price
#  }
#end

#def show_inven
#  puts "The inventory holds:

  #{@inventory}
#  "
#end

#build_inventory
#show_inven

def show_inventory
    puts "What are you looking for. We have:"
    puts"
     1) Apples
     2) Oranges
     3) Grapes

    Please make you choice {1-3}"

    choice = gets.chomp.to_i
    puts "You chose: #{choice}"

    if choice == 1
      @cart << "Apples\n"
      @total_price += 1.0
      @products[choice] -= stock
      puts "Apples Added to cart\n"
    elsif choice == 2
      @cart << "Oranges\n"
      @total_price += 2.0
      #/inventory -= 1.0
      puts "Oranges Added to cart\n"
    elsif choice == 3
      @cart << "Grapes\n"
      @total_price += 3.0
      #/@inventory -= 1.0
      puts "Grapes Added to cart\n"
    else
      puts "Sorry we are out\n"
      show_inventory

    end
end
show_inventory

puts "Your total is #{@total_price}\n"

def buy_more
    puts "would you like to buy more {1 or 2}?

    1)yes
    2)no"

    more = gets.chomp.to_i

    if more == 1
      puts "What more would you like?\n"
      puts "We still have: #{@inventory}"
      show_inventory
    elsif more == 2
      puts "The total is #{@total_price}\n"
    else
      puts "Please pick again"
    end
end

puts "Your cart contains:\n #{@cart} and the total price is #{@total_price}\n"

def pay1
    puts "Do you want to pay? Or add more to your cart?

    1)I want to pay
    2)I want to add more to my cart

    Please make you choice {1-2}"

    pay = gets.chomp.to_i

    if pay == 1
      puts "Your total is:\n #{@total_price}\n Please pay"
    elsif pay == 2
      puts "What more would you like?\n"
      puts "We still have: #{@inventory}"
      show_inventory
    else
      puts "Please pick again"
    end
end
pay1

puts "Thanks for shopping. Your cart contains:\n #{@cart} and the total price is #{@total_price}\n"
