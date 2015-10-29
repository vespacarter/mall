class Item
	attr_reader :price, :name
	def initialize(name,price)
		@name = name
		@price = price
	end
end

class Fruit < Item
	def discount
	time = Time.new
	discount = 0
	# Weekdays: 5=friday, 6=saturday, 7=sunday
	if ((time.wday == 5) || (time.wday == 6) || (time.wday == 7))
			discount = @price * 0.1
		puts "#{@name} Fruit 10% off applied: -#{discount} euros"
	end
	discount
	end
end

class Houseware < Item
	def discount
	discount = 0
	if @price >= 100
		discount = @price * 0.05
		puts "#{@name} Houseware 5% off applied: -#{discount} euros"
	end
	discount
	end
end