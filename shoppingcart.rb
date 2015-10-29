class ShoppingCart
	attr_reader
	def initialize
		@total_items = []
	end
	def add_item(item)
		@total_items.push(item)
		puts "#{item.name} added"
	end

	def show_cart
		puts "Item Class / Item name / Price"
		@total_items.each_with_index do |cart_item,index|
			puts "#{index +1}.- #{cart_item.class} - #{cart_item.name} / #{cart_item.price}"
		end
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
		discount = 0
		if @total_items.size >= 5 
			total_price.to_f
			discount = total_price *0.1
			puts "More than 5 items in cart, 10% discount applied: -#{(total_price / 100) * 10} euros"
		end
		discount
	end

	def calculate_final_total
		final_total = calculate_total() 
		total_discounts = calculate_cart_discounts(final_total) + calculate_item_discounts()
		final_total = final_total - total_discounts
		puts "Your total discounts is #{total_discounts} euros"
		puts "Your final total is #{final_total} euros"
	end
end