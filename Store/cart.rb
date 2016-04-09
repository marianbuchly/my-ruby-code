#require "./shop.rb"

@cart = ""
@total_price = 0.0

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
