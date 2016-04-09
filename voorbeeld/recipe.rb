#loop oefening

puts "Let's make some pasta!\n"


ingredients = {
	"a bit of of pastas" => 10,
	"tomatoes" => 4,
	"meat kind of your choice" => 1,
	"kind of veggies" => 3,
	"pieces of cheeses" => 6,
}

ingredients.each do | ingredient, amount |
	puts "Please buy #{amount} #{ingredient}\n"
end

	puts "let's start with slicing\n"
counter = 1
while counter < 5
	puts "slice tomatoes #{counter}"
	counter += 1
	end

for counter in 1...11
	puts "add pasta to boiling water #{counter}."
end

puts "Put the meat in a pan\n"

puts "Which veggies did you buy?\n"
bought = gets.chomp
veggies = []
puts "You bought: #{bought}"
veggies << bought
puts veggies = bought




for bought in 1...4
	puts "Which veggies did you buy? #{bought}"
end



$veg = []

def veg_array
	index = 0
	while index < 5
		$veg << "eggs"
		index += 1
		puts "egg #{index} added!"
	end
end


1.times do
	$veg << bought
end

puts $veg
puts veg_array

veggies = ['veggie1' , 'veggie2' , 'veggie3']
index = 0
