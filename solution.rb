# app file-- use all classes to do application

require_relative "customer"
require_relative "dish"
require_relative "resturaunt"

# puts test_customer.name
# puts test_customer.wallet_balance

def make_test_resturaunt
  dish = Dish.new("Pizza", 20.99)
  dish1 = Dish.new("Hambuger", 10.99)

  main_dishes = [dish, dish1]
  side_dishes = [Dish.new("fries", 2.99), Dish.new("salad", 1.99)]

  test_customer = Customer.new(100, "Bob")
  test_customer1 = Customer.new(10, "Sally")

  resturaunt = Resturaunt.new(main_dishes, side_dishes)

  resturaunt.customers << test_customer
  resturaunt.customers << test_customer1

  #insating a class Resturaunt and am returing
  resturaunt
end

test_resturaunt = make_test_resturaunt
test_resturaunt.display_main_menu
test_resturaunt.display_side_menu
test_resturaunt.take_order

# p test_resturaunt.customers