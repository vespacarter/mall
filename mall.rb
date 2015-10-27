require_relative "shoppingcart.rb"
require_relative "item.rb"



micarro = ShoppingCart.new
apple = Fruit.new("Apple",5)
banana = Fruit.new("Banana",10)
pear = Fruit.new("Pear",3)
strawberry = Fruit.new("Strawberry",5)
chair = Houseware.new("Chair",50)
bed = Houseware.new("Bed",200)
pillow = Houseware.new("Pillow",150)
micarro.add_item(apple)
micarro.add_item(banana)
micarro.add_item(pear)
micarro.add_item(strawberry)
micarro.add_item(chair)
micarro.add_item(bed)
micarro.add_item(pillow)

micarro.calculate_final_total
