#poging tot opnieuw starten met store

@total_price = 0.0
@cart = ""
@inventory = {}

puts "Welcome to the store.\n
Our inventory holds:
\n"

@products = [
{:refer_num =>1, :name =>"Apple", :price => 10 ,:stock =>10},
{:refer_num =>2, :name =>"Peer", :price => 20,:stock =>10},
{:refer_num =>3, :name =>"Grape", :price => 30,:stock =>10},
{:refer_num =>4, :name =>"Orange", :price => 40,:stock =>10},
{:refer_num =>5, :name =>"Kiwi", :price => 50,:stock =>10},
]

@products.each do | refnum, name, price, stock |
	puts "#{refnum} #{name} #{price}\n"
end

puts "What are you looking for. We have:"

def choice1
  puts"
     1) Apples
     2) Oranges
     3) Grapes
     4) Peers
     5) Kiwis

Please make you choice {1-5}"

choice = gets.chomp.to_i
puts "You chose: #{choice}"

    if choice == 1
      @cart << "Apples\n"
      @total_price += 1.0
      #@inventory -=1
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
    end
    choice2
end
    choice1


def choice2
  puts "Do you need more?
  1)yes
  2)no
  "
  keuze = gets.chomp.to_i

if keuze == 1
  choice1
else puts " goodbye"

end
end
choice2
