#/ uitleg classes en OOP

#require './cat' -> verwijst naar een andere file

#let op spaces, anders werkt het niet

class Cat
  def initialize(name, fur_color)
    @name = name
    @fur_color = fur_color
  end
  def sound
    puts "#{@name} says prrrr"
  end
  def color
    puts "#{@fur_color} is mooi"
  end
end

cat1 = Cat.new("aaf","red")

puts cat1.color
puts cat1.sound #/ geeft aaf says prrrr
p cat1 #/ geeft <Cat:0x007ff81988bb48 @name="aaf", @fur_color="red">
