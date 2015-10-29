class Menu

	def start_shop (shop)

		option = 0
		puts "\e[H\e[2J" #clears screen
		while option != "9" do
			puts ""
			puts "*** #{@shop_name} MAIN MENU ***"
			puts ""
			puts "1.- Shopping Cart options"
			puts "2.- Stock Management"
			puts "9.- Exit"
			option = gets.chomp
			if option == "1"
				puts "\e[H\e[2J" #clears screen
				puts "aqui va shopping cart options"
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
			puts "*** #{@shop_name} STOCK MENU ***"
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






end