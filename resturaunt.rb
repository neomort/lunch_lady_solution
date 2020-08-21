class Resturaunt
  attr_accessor :main_dishes, :side_dishes, :customers

  def initialize(main_dishes, side_dishes)
    @main_dishes = main_dishes
    @side_dishes = side_dishes
    @customers = []
  end

  def display_main_menu
    puts "****Main Menu****"
    @main_dishes.each_with_index do |dish, index|
      puts "#{index + 1}) #{dish}"
    end
  end

  def display_side_menu
    puts "*****Side Menu*****"
    @side_dishes.each_with_index do |dish, index|
      puts "#{index + 1}) #{dish}"
    end
  end

def get_main_order

  puts "Hello #{@current_customer.name}, what would you like to order?"

display_main_menu

  #get input
  user_main_choice_index = gets.chomp.to_i - 1
  main_dish = @main_dishes[user_main_choice_index]
  #add dish to customer order
  puts "you ordered #{main_dish.name}"
  puts "it is #{main_dish.price}"

end

def get_side_order

  display_side_menu
puts "pick two sides:"
  user_side_choice_index = gets.chomp.to_i - 1
  side_dish = @side_dishes[user_side_choice_index]
#add dish to customer order
  puts "you ordered #{side_dish.name}"
  puts "it is #{side_dish.price}"
end


def take_order
  # grab customers from array
  @current_customer = @customers.shift
# p @current_customer

get_main_order

get_side_order

  # puts "price is #{main_dish.price + side_dish.price + side_dish2.price }"
  #display_side_menu
  #get input
  # repeat customer's order 
  #check if they have enough money
  # charge customer

end

end