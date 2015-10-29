class Shop
	attr_reader :shop_items
	def initialize (shop_name)
		@shop_name = shop_name
		@shop_items = []
	end
	
	def add_item_to_stock (item,stock,minimum_stock)
		@shop_items.push(ShopItem.new(item,stock,minimum_stock))
	end

	def show_shop_stock()
		puts @shop_name
		puts "Item Class / Item name / Stock / Min.Stock"
		@shop_items.each_with_index do |shop_item,index|
			puts "#{index +1}.- #{shop_item.item.class} - #{shop_item.item.name} / #{shop_item.stock} / #{shop_item.minimum_stock}"
		end
	end
	
	def update_stock_item(index)
		puts " *** Updating #{@shop_items[index].item.name} stock ***"
		puts "Please enter new stock:"
		stock = gets.chomp
		puts "Please enter new minimum stock:"
		minimum_stock = gets.chomp
		@shop_items[index].stock = stock.to_i
		@shop_items[index].minimum_stock = minimum_stock.to_i
		puts "*** Stock succesfully updated"
		show_shop_stock()
	end	

	def update_stock_menu
		show_shop_stock()
		puts ""
		puts "Select item to be updated:"
		item_number = gets.chomp
		index = item_number.to_i
		update_stock_item(index-1)
	end

end

private
class ShopItem
	attr_accessor :item, :stock, :minimum_stock
	def initialize(item,stock,minimum_stock)
		@item = item
		@stock = stock
		@minimum_stock = minimum_stock
	end
end