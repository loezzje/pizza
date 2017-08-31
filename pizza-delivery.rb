require_relative "menu.rb"
require_relative "order.rb"


done = false
menu = Menu.new
order = Order.new

puts "Hello, welcome to our pizza express delivery"

#this will run until done is set to true
while not done
  puts "What can I do for you?"
  puts "1: Order a pizza"
  puts "2: Nothing"
  puts "3: Check out (€ #{order.value})" if order.value > 0
  puts "------------------------------"

  #get some input from the customer
  choice = gets.chomp.to_i
  case choice
    when 1
      puts "Let me show you the menu"
      menu.print
      pizza = menu.make_choice
      order.add(pizza)
    when 2, 3
      done = true
    else
      puts "I dont understand"
  end

  #say goodbye if the customer is leaving
  if done
    puts "Thank you for your visit! hope to see you again soon."
    puts "   __"
    puts " // \"\"--.._"
    puts "||  (_)  _ \"-._"
    puts "||    _ (_)    '-."
    puts "||   (_)   __..-'"
    puts " \\__..--\"\""
  end
end
