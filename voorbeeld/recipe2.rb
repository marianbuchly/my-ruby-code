#voorbeeld rogier opbouw 

def step1
  ingredients = {
  	"a bit of of pastas" => 10,
  	"tomatoes" => 4,
  	"meat kind of your choice" => 1,
  	"kind of veggies" => 3,
  	"pieces of cheeses" => 6,
  }
  puts "Lets make some pasta"
  step2(ingredients)
end

def step2(ingredients)
  ingredients.each do | ingredient, amount |
  	puts "Please buy #{amount} #{ingredient}"
  end
  step3(ingredients)
end

def step3(ingredients)
  puts "let's start with slicing"
counter = 1
while counter < 5
  puts "slice tomatoes #{counter}"
  counter += 1
  end
  step4(ingredients)
end

def step4(ingredients)
  for counter in 1...11
  	puts "add pasta to boiling water #{counter}."
  end
  puts "Put the meat in a pan"
step5(ingredients)
end

def step5(ingredients)
  puts "Which veggies did you buy?\n"
  bought = gets.chomp
  veggies = []
  puts "You bought: #{bought}"
  veggies << bought
  puts veggies = bought
  puts "What else?"
  what_more = gets.chomp
  if what_more.downcase == "yes"
    puts veggies
  end
end

step1

puts "Slice all your veggies"
while index < veggies.length
	puts "#{index}: #{veggies[index]}"
	index += 1
end

pan = ['tomatoes' , 'all veggies', 'cheese' ]
	pan.each do | inpan |
		puts "Put #{inpan} in the pan."
end

puts "Put it all on your plate and enjoy your meal!"
