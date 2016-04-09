#/voorbeeld opbouw rogier

$cart = []
$inventory =
[
    {id: 1, name: "appel", quantity: 100},
    {id: 2, name: "peer", quantity: 100},
    {id: 3, name: "banaan", quantity: 100}
]

def step1
    puts "Welcome!"
    puts "Our inventory holds the following products:"
    puts $inventory
    step2
end

def step2
    puts "Would you like to buy some fruit?"
    answer = gets.chomp
    if answer.downcase == "yes"
        step3
    else
        puts "Okay, goodbye then!"
    end
end

def step3

    puts "what kind of fruits would you like to buy?"
    puts "Here is our inventory again #{$inventory}"
    answer = gets.chomp
    case answer
    when "1"
        $cart << $inventory[0]
    when "2"
        $cart << $inventory[1]
    when "3"
        $cart << $inventory[2]
    else
        step3
    end
end

puts step1

puts $cart
