require_relative "shoppingcart.rb"
require_relative "item.rb"
require_relative "shop.rb"
require_relative "menus.rb"


apple = Fruit.new("Apple",5)
banana = Fruit.new("Banana",10)
pear = Fruit.new("Pear",3)
strawberry = Fruit.new("Strawberry",5)
chair = Houseware.new("Chair",50)
bed = Houseware.new("Bed",200)
pillow = Houseware.new("Pillow",150)

#initialize shop and first item loading
myshop = Shop.new("Main Shop",ShoppingCart.new)
myshop.add_item_to_stock(apple,10,2)
myshop.add_item_to_stock(banana,10,2)
myshop.add_item_to_stock(pear,10,2)
myshop.add_item_to_stock(strawberry,10,2)
myshop.add_item_to_stock(chair,10,2)
myshop.add_item_to_stock(bed,10,2)
myshop.add_item_to_stock(pillow,10,2)
micarro = ShoppingCart.new
#myshop.start_shop
Menu.new.start_shop(myshop)



# micarro.add_item(apple)
# micarro.add_item(banana)
# micarro.add_item(pear)
# micarro.add_item(strawberry)
# micarro.add_item(chair)
# micarro.add_item(bed)
# micarro.add_item(pillow)

# micarro.calculate_final_total
