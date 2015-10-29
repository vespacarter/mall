class ShoppingCart
	attr_reader
	def initialize (shop)
		@total_items = []
	end
	def add_item(item)
		@total_items.push(item)
	end

	def calculate_total
		total = 0
		@total_items.each do |item|
			total = total + item.price
		end
		puts "Your total day is #{total} euros"
		total
	end

	def calculate_item_discounts
		total = 0
		@total_items.each do |item|
			total = total + item.discount
		end
		total
	end

	def calculate_cart_discounts(total_price)
		if @total_items.size >= 5 
			total_price.to_f
			total_price = total_price *0.1
			puts "More than 5 items in cart, 10% discount applied: -#{(total_price / 100) * 10} euros"
		end
		total_price
	end

	def calculate_final_total
		final_total = calculate_total() 
		total_discounts = calculate_cart_discounts(final_total) + calculate_item_discounts()
		final_total = final_total - total_discounts
		puts "Your total discounts is #{total_discounts} euros"
		puts "Your final total is #{final_total} euros"
	end
end