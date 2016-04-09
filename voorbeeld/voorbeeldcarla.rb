#/voorbeeld van Carla

@cart = 0.0
@inventory = {}
@chekbox = {}
​
def manage_inventory
  puts "Do you want to add something to your inventory (y/n)?"
  answer = gets.chomp.downcase
  if answer == "y"
    puts "What is the name of the product?"
    name = gets.chomp.downcase
    puts "What is the quantity of the product?"
    quantity = gets.chomp.to_i
    puts "What is the price of the product?"
    price = gets.chomp.to_f
​
    add_to_inventory(name, quantity, price)
  end
  puts "Do you want to add more? (y/n)"
  more = gets.chomp.downcase
  if more == "y"
    manage_inventory
  else
    return
  end
end
​
def build_inventory
  add_to_inventory("banana", 4, 2.50)
  add_to_inventory("avocado", 6, 1.80)
  add_to_inventory("melon", 1, 4.00)
  add_to_inventory("coconut", 2, 3.50)
end
​
def add_to_inventory(product, quantity, price)
  @inventory[product] = {
    "quantity" => quantity,
    "price" => price
  }
end
​
def add_to_cart(product, quantity)
  @chekbox[product] = {
    "quantity" => quantity
  }
​
  cost_per_item = @inventory[product]["price"]
  @cart += (cost_per_item * quantity)
​
  @inventory[product]["quantity"] -= quantity
end
​
def remove_from_cart
  puts "Do you want to remove something (y/n)?"
  answer = gets.chomp.downcase
  if answer == "y"
    puts "What do you want to remove?"
    remove = gets.chomp.downcase
    quantity = 1
    quantity = @chekbox[remove]["quantity"]
    @cart -= (@inventory[remove]["price"] * quantity)
    @chekbox.delete(remove)
  end
end
​
def show_contents_of_the_cart
  puts "Your cart holds:"
  @chekbox.each do |name, quantity|
    puts "• #{@chekbox[name]["quantity"]} #{name}"
  end
  #{@chekbox}
​
  puts "Total cart value: €#{@cart.round(2)}"
end
​
def customer_discount
  puts "Do you have our membership card (y/n)?"
  answer = gets.chomp.downcase
  if answer == "y"
    @cart *= 0.95
    puts "You 5% discount! This is the final amount to pay:
​
    #{@cart.round(2)} euros."
​
  else
    puts "Sorry, no discount for you!
    Please pay #{@cart} euros.
    "
  end
end
​
def pay
  puts "Fill the amount do you want to pay:"
  value = gets.chomp.to_f
​
  if value != @cart
    if value <= @cart
      @cart -= value
      puts "You need to pay more #{@cart.round(2)} euros."
      pay
    elsif value >= @cart
      value -= @cart
      puts "This is your change, #{value.round(2)}. Thank you!"
    else
    puts "You paid everything! Thank you!"
  end
  else
    puts "You paid everything! Thank you!"
  end
end
​
def show_inventory
  puts "This is what I have to offer:"
  @inventory.each do |name, number|
    puts "• #{@inventory[name]["quantity"]} #{name}"
  end
end
​
def in_stock?(product, quantity = 1)
  @inventory[product] && @inventory[product]["quantity"] >= quantity
end
​
def in_stock!
  if in_stock?(@product)
    puts "The #{@product} costs #{@inventory[@product]["price"]}!"
    how_many(@product)
  else
    puts "We're fresh out of #{@product}, sorry!"
  end
end
​
def how_many(product)
  puts "How many #{product} do you want?"
  quantity = gets.chomp.to_i
  if in_stock?(product, quantity)
    add_to_cart(product, quantity)
  else
    puts "We're fresh out of #{product}, sorry!"
  end
end
​
puts "Choose one option below:
1 Customer
2 Manager
"
choice = gets.chomp.to_i
if choice == 2
  manage_inventory
end
​
puts "Welcome to my fruit store!"
build_inventory
show_inventory
​
​
def questions
  puts "What do you want to buy?"
  @product = gets.chomp.downcase
​
  if @product == "banana"
    in_stock!
​
  elsif @product == "avocado"
    in_stock!
​
  elsif @product == "melon"
    in_stock!
​
  elsif @product == "coconut"
    in_stock!
​
  else
    puts "Sorry, I don't have this product!"
  end
​
  puts "You have #{@cart} euros to pay."
  puts "Do you want to buy more [y/n]"
  buy = gets.chomp.downcase
​
  if buy == "y"
    show_inventory
    questions
  else
    show_contents_of_the_cart
    remove_from_cart
    show_contents_of_the_cart
    customer_discount
    pay
  end
end
​
questions
