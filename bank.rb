class Account
	attr_accessor :name, :account_num, :balance
	def initialize(name, balance, account_num)
		@name = name
		@account_num = account_num
		@balance = balance
	end # initialize end

	def deposit(amount)
		@balance += amount
	end #deposit end

	def withdraw(amount)
		if @balance < amount
			return false
		else
			@balance-=1
		end # If statement end
	end #withdraw end

end #class end

def main_menu
	puts "Welcome to the King Bank!"
	puts "Please choose an option:"
	puts "*************************"
	puts "1. Create an Account."
	puts "2. View an Account."
	puts "3. Exit Program"

	option = gets.chomp.to_i

	if option ==1
		create_account
		main_menu
	elsif option == 2
		if @accounts.length == 0
		puts "There are no accounts yet."
		main_menu
	else
		account_login
	end #If statement end
	elsif option == 3
		puts "Thank You for Visiting!"
		exit
	else
		puts "Please choose a valid option"
		system("cls")
		main_menu
	end #if statement end
end #Menu end



def create_account
	puts "Please enter your name"
	name = gets.chomp.upcase
	puts "Please enter the starting balance"
	balance = gets.chomp.to_f
	account_number = @accounts.length + 1
	new_account = Account.new(name, balance, account_number)
	@accounts.push(new_account)
	puts " Account: #{account_number} for #{name} has been created with a starting balance of $#{balance}"
end #account end

def account_login
	found = false
	tries = 0
	while tries < 3
	puts "Please enter the name on the account"
	name = gets.chomp.upcase
	puts "Please enter the account number"
	acct_num = gets.chomp.to_i

	@accounts.each do |account|
		if account.name == name && account.account_num ==acct_num
			account_menu(name, acct_num)
			found = true
			tries = 3
		else
			puts "Account not found. Please try again"
			tries +=1
			puts "Number of tries: #{tries}"
		end #If statement end
	end # Do statement end

	end#while end
if found == false
		puts "Sorry you are having issues.  Please contact Customer Service"
		main_menu
	else
		account_menu(name, acct_num)
	end #if statement end

end #login account end


def account_menu(name, account_number)
	puts "Welcome #{name} to your account menu"
	puts"Please make a selection"
	puts "*************************"
	puts "1. View Balance"
	puts "2. Make a deposit"
	puts "3. Make a withdrawl"
	puts "4. Return to Main Menu"

	choice = gets.chomp.to_i

	if choice ==1
		view_balance(name, account_number)
	elsif choice ==2
		make_deposit(name, account_number)
	elsif choice == 3
		make_withdrawl(name, account_number)
	elsif choice ==4
		main_menu
	else
		puts "Please make a valid choice"
	account_menu(name, account_number)
	end #if statement end
end #account_menu end

def view_balance(name, account_number)
	@accounts.each do |account|
		if account.name == name && account.account_num == account_number
			puts"You account balance is $#{account.balance}"
		end #If Statement end
	end #Do Statment end
	account_menu(name, account_number)
end #view balance end

def make_deposit(name, account_number)
	puts"How much would you like to deposit?"
	dep_amount = gets.chomp.to_f

	@accounts.each do |account|
		if account.name == name && account.account_num == account_number
			puts"You account balance is $#{account.balance}"
			account.deposit(dep_amount)
			puts "Your deposit of $#{dep_amount} has been made"
			puts "Your new balance is #{account.balance}"
		end #If Statement end
	end #Do Statment end
	account_menu(name, account_number)
end #Deposit end

def make_withdrawl(name, account_number)
	puts"How much would you like to withdrawl?"
	withdrawl_amount = gets.chomp.to_f
	@accounts.each do |account|
		if account.name == name && account.account_num == account_number
			puts "Your current balance is #{account.balance}"
			if account.withdraw(withdrawl_amount
				) == false 
				puts "Insufficient balance.  Please try another amount."
					account_menu(name, account_number)
			else
				puts "Your withdrawl amount is #{ withdrawl_amount} has been made"
				puts "Your new account balance is #{account.balance}"
			end #if statement
		end #if statement end
	end #do statement end

end # withdrawl end
@accounts = []
system("cls")
main_menu