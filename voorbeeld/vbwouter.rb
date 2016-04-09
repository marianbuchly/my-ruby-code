#/voorbeeeld store WOuter
#MacBook-Pro-van-marian:~ marianbuchly$ cd Code/Ruby
#store.rb
#MacBook-Pro-van-marian:Ruby marianbuchly$ ruby store.rb

def turn
  puts "round end"
  sleep 2 #/wacht 2 sec en dan print het weer uit
end

turn


#/Voorbeeld CART
#/maakt een @ omdat op meer plaatsen kan worden gebruikt
@cart = "" #/laat leeg of string met tekstje
@total_cart = 0.0
@inventory = {} #/hash, zit iets in, keys and values, kan aan toevoegen

def build_inventory
  @cats = add_to_inventory("cats", 4) #/@cats wordt hier gemaakt in method, hoeft boven niet te worden gedefineerd
end

def add_to_inventory(product, quantity)
  @inventory << "#{product}\n"
  return quantity
end

def show_inventory
  puts "the inventory is
#{@inventory}"


def show_cart_contents
  puts " in cart zit het volgende: #{@cart}
  totale kosten: euro #{total_cart}"
end

build_inventory
show_inventory


def add_to_cart (product, amount, cost_per_item) #/methode met product en amount
  purchase = "#{amount} #{product}\n" #/variable \n =new line
  @cart << purchase #/toevoegen aan cart
  @total_cart = @total_cart + (cost_per_item * amount) #/of @total_cart +=(cost_per_item * amount)
end

add_to_cart("Cat",1, 80.0)

puts @cart
show_cart_contents #/doet beide zelfde (als puts)




#//zelfde code, met stock en stock vermindering

@inventory = {}
@cart = ""
@total_cart_value = 0.0

def build_inventory
  add_to_inventory("cats", 4, 80.0)
  add_to_inventory("dogs", 2, 280.0)
  add_to_inventory("hamsters", 1, 2.50)
  add_to_inventory("lizzards", 0, 14.0)
end

def add_to_inventory(product, quantity, price)
  @inventory[product] = {
    "quantity" => quantity,
    "price" => price
  }
end

def show_inventory
  puts "The inventory holds:

  #{@inventory}
  "
end

def in_stock?(product, quantity = 1)
  @inventory[product] && @inventory[product]["quantity"] >= quantity
end

def show_contents_of_the_cart
  puts "Your cart holds:

  #{@cart}

  Total cart value: €#{@total_cart_value}"
end

def add_to_cart(product, amount)
  purchase = "  • #{amount} #{product}\n"
  @cart << purchase

  cost_per_item = @inventory[product]["price"]
  @total_cart_value += (cost_per_item * amount)

  @inventory[product]["quantity"] -= amount
end

build_inventory
show_inventory

puts "What would you like to buy?"
purchase = gets.chomp

if in_stock?(purchase)
  puts "How many #{purchase} would you like to buy then?"
  amount = gets.chomp.to_i

  if in_stock?(purchase, amount)
    add_to_cart(purchase, amount)

    show_contents_of_the_cart
  end
else
  puts "We're fresh out of #{purchase}, sorry!"
end
end
show_inventory
