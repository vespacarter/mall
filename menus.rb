class Menu

	def start_shop (shop)
		option = 0
		puts "\e[H\e[2J" #clears screen
		while option != "9" do
			puts ""
			puts "*** #{shop.shop_name} MAIN MENU ***"
			puts ""
			puts "1.- Shopping Cart options"
			puts "2.- Stock Management"
			puts "9.- Exit"
			option = gets.chomp
			if option == "1"
				puts "\e[H\e[2J" #clears screen
				show_cart_menu(shop)
			elsif option == "2"
				puts "\e[H\e[2J" #clears screen
				show_stock_menu(shop)
			end
		end
	end

	def show_stock_menu(shop)
		option = 0
		puts "\e[H\e[2J" #clears screen
		while option != "9" do
			puts ""
			puts "*** #{shop.shop_name} STOCK MENU ***"
			puts ""
			puts "1.- Show Shop Stock"
			puts "2.- Update Shop Stock"
			puts "9.- Back to Main Menu"
			option = gets.chomp
			if option == "1"
				puts "\e[H\e[2J" #clears screen
				shop.show_shop_stock()
				puts ""
				puts "**Press any key to continue**"
				anykey = gets.chomp
				puts "\e[H\e[2J" #clears screen
			elsif option == "2"
				puts "\e[H\e[2J" #clears screen
				shop.update_stock_menu()
				puts ""
				puts "**Press any key to continue**"
				anykey = gets.chomp
				puts "\e[H\e[2J" #clears screen
			end
		end
	puts "\e[H\e[2J" #clears screen
	end
	def show_cart_menu(shop)
		option = 0
		puts "\e[H\e[2J" #clears screen
		while option != "9" do
			puts ""
			puts "*** #{shop.shop_name} CART  MENU ***"
			puts ""
			puts "1.- Show products list"
			puts "2.- Add item to cart"
			puts "3.- Delete item from cart"
			puts "4.- Show current cart"
			puts "5.- Checkout"
			puts "9.- Back to Main Menu"
			option = gets.chomp
			if option == "1"
				puts "\e[H\e[2J" #clears screen
				shop.show_shop_stock()
				puts ""
			elsif option == "2"
				puts "\e[H\e[2J" #clears screen
				puts "Select item to be added to cart:"
				item = gets.chomp
				index = item.to_i
				shop.shopping_cart.add_item(shop.shop_items[index-1].item)
				puts "**Press any key to continue**"
				anykey = gets.chomp
				puts "\e[H\e[2J" #clears screen
			elsif option == "3"
				puts "**Press any key to continue**"
				anykey = gets.chomp
				puts "\e[H\e[2J" #clears screen
			elsif option == "4"
				shop.shopping_cart.show_cart
				puts "**Press any key to continue**"
				anykey = gets.chomp
				puts "\e[H\e[2J" #clears screen
			elsif option == "5"
				shop.shopping_cart.calculate_final_total
				puts "**Press any key to continue**"
				anykey = gets.chomp
				puts "\e[H\e[2J" #clears screen
			end
		end
	puts "\e[H\e[2J" #clears screen
	end
end