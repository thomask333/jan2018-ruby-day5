class Product
 attr_accessor :name, :quantity, :serial_number, :cost, :sell_price
 def initialize(name, quantity, serial_number, cost, sell_price)
 	@name = name
 	@quantity = quantity
 	@serial_number = serial_number
 	@cost = cost
 	@sell_price = sell_price
 end #initialize end
end # class end

def main_menu
	puts "Welcome to the Inventory System"
	puts "Please choose one of the following option"
	puts "**********************************"
puts "1. View Categories"
puts "2. View a Product"
puts "3. Change the Quantity of a Product"
puts "4. Add a Product to a Category"
puts "5. Exit Program"
puts "*************************"
option = gets.chomp.to_i

if option == 1
	view_cat
elsif option ==2
	view_prod
elsif option == 3
	change_quantity
elsif option ==4
	add_prod
elsif option == 5
		system("cls")
		exit	
else
	puts"Not a valid option.  Please choose again"
	main_menu
end #if statement end
end #Menu end

def add_prod
	puts "Please choose a Category."
	puts "1. Fruits"
	puts "2. Veggies"
	puts "3. Beverages"
	puts "4. Return to Main Menu"
	cat = gets.chomp.to_i

	if cat == 1
	serial_number = @fruits.length + 100
	puts "Please enter the name of the product"
	name = gets.chomp.capitalize
	puts "Please enter the quantity"
	quantity = gets.chomp.to_i
	puts "Please enter the cost"
	cost = gets.chomp.to_f
	"Please enter the cost"
	puts "Please enter the sell price"
	sell_price = gets.chomp.to_f
	new_prod = Product.new(name, quantity, serial_number, cost, sell_price )
	@fruits.push(new_prod)
	puts "Item #{name} has been added with the serial number #{serial_number}"
		add_prod
	elsif cat ==2 
		serial_number = @veggies.length + 400
	puts "Please enter the name of the product"
	name = gets.chomp.capitalize
	puts "Please enter the quantity"
	quantity = gets.chomp.to_i
	puts "Please enter the cost"
	cost = gets.chomp.to_f
	"Please enter the cost"
	puts "Please enter the sell price"
	sell_price = gets.chomp.to_f
	new_prod = Product.new(name, quantity, serial_number, cost, sell_price )
	@veggies.push(new_prod)
	puts "Item #{name} has been added with the serial number #{serial_number}"
		add_prod
	elsif cat == 3
			serial_number = @beverages.length + 700
	puts "Please enter the name of the product"
	name = gets.chomp.capitalize
	puts "Please enter the quantity"
	quantity = gets.chomp.to_i
	puts "Please enter the cost"
	cost = gets.chomp.to_f
	"Please enter the cost"
	puts "Please enter the sell price"
	sell_price = gets.chomp.to_f
	new_prod = Product.new(name, quantity, serial_number, cost, sell_price )
	@beverages.push(new_prod)
	puts "Item #{name} has been added with the serial number #{serial_number}"
		add_prod
	elsif cat == 4
		main_menu
	else
		puts"Please choose a valid option."
		add_prod
	end #if statement end
end #add_prod end

def view_prod
	puts "Please select of the following options."
	puts "1. To View a Product."
	puts "2. To Return To Main Menu."
	sel = gets.chomp.to_i
	if sel ==1
	puts "Please enter the product serial number."
	ser_num = gets.chomp.to_i
	@fruits.each do |fruit|
		if fruit.serial_number == ser_num
		puts "Product with serial number #{ser_num} is a #{fruit.name} with a cost of #{fruit.cost}, a sell price of #{fruit.sell_price} and a quantity of #{fruit.quantity}"
			view_prod
		else
		puts "No Fruits with that serial number"
			view_prod
		end #if statement end
	end # do statement end
	@veggies.each do |veggie|
		if veggie.serial_number == ser_num
		puts "Product with serial number #{ser_num} is a #{veggie.name}with a cost of #{veggies.cost}, a sell price of #{veggie.sell_price} and a quantity of #{veggie.quantity}"
			view_prod
		else
			puts "No Veggies with that serial number."
			view_prod
		end #if statement end
	end # do statement end
	@beverages.each do |beverage|
		if beverage.serial_number == ser_num
		puts "Product with serial number #{ser_num} is a #{beverage.name} with a cost of #{beverage.cost}, a sell price of #{beverage.sell_price} and a quantity of #{beverage.quantity}"
			view_prod
		else
			puts "No Beverages with that serial number"
				view_prod
		end #if statement end
	end # do statement end
elsif sel == 2
	main_menu
else
	"Please choose a valid option"
	view_prod
	end	#if statement end
end # view product end


def view_cat
	puts "Which Category would you like to view?"
	puts "1. Fruits"
	puts "2. Veggies"
	puts "3. Beverages"
	puts "4. Return to Main Menu"
	puts "*************************"
	choice = gets.chomp.to_i

	if choice == 1
		@fruits.each do |fruit|
				puts "Name: #{fruit.name}"
				puts "Cost: #{fruit.cost}"
				puts "Sell Price: #{fruit.sell_price}"
		end # do statement end
	elsif choice == 2
				@veggies.each do |veggie|
				puts "Name: #{veggie.name}"
				puts "Cost: #{veggie.cost}"
				puts "Sell Price: #{veggie.sell_price}"
		end # do statement end
	elsif choice == 3
				@beverage.each do |beverage|
				puts "Name: #{beverage.name}"
				puts "Cost: #{beverage.cost}"
				puts "Sell Price: #{fruit.beverage}"
		end # do statement end
	elsif choice ==4
		main_menu
	else
		puts "Not a valid choice"
		view_cat
	end #if statement end
end #view cat end

def change_quantity
	puts "Please choose an option"
	puts "1. Fruits"
	puts "2. Veggies"
	puts "3. Beverages"
	puts "4. Return to Main Menu"
	puts "*************************"

	new_choice = gets.chomp.to_i

	if new_choice ==1
		puts "Please enter the serial number"
		ser_num = gets.chomp.to_i

		@fruits.each do |fruit|
		if fruit.serial_number == ser_num
			puts "Please enter your new quantity"
			new_quantity = gets.chomp.to_i
			puts "Your current quantity is #{fruit.quantity}."
			fruit.quantity = new_quantity
			puts "You new quantity is #{fruit.quantity}"
			change_quantity
			end #if end 
		end# do statement end
	elsif new_choice ==2
		puts "Please enter the serial number"
		ser_num = gets.chomp.to_i

		@veggies.each do |veggie|
		if veggie.serial_number == ser_num
			puts "Please enter your new quantity"
			new_quantity = gets.chomp.to_i
			puts "Your current quantity is #{veggie.quantity}."
			veggie.quantity = new_quantity
			puts "You new quantity is #{veggie.quantity}"
			change_quantity
			end #if end 
		end# do statement end
	elsif new_choice ==3
		puts "Please enter the serial number"
		ser_num = gets.chomp.to_i

		@beverages.each do |beverage|
		if fruit.serial_number == ser_num
			puts "Please enter your new quantity"
			new_quantity = gets.chomp.to_i
			puts "Your current quantity is #{beverage.quantity}."
			beverage.quantity = new_quantity
			puts "You new quantity is #{beverage.quantity}"
			change_quantity
			end #if end 
		end# do statement end
	elsif new_choice == 4
		main_menu
	else
		puts "Not a Valid option."
	end #end if statement
end #change quantity end

@fruits = []
@veggies = []
@beverages = []
