class Account
	@@accounts = []
	def initialize (name, password, initialDeposit)
		@name = name
		@password = password
		@balance = initialDeposit
	end
	def login(name, password)
		puts "Please enter your username"
		input = gets
		if input != nil
			puts "Name is not found. Please try again"
		elsif input == name
			puts "Please enter your password."
			input = gets
			if input != @password
				puts "Sorry wrong password. Please try to login again"
			else
				puts "Welcome #{name}."
			end
		end
	end
end

puts "Welcome. \nWhat would you like to do?"
puts "A:Login \nB:Create Account\nC:Settings"
input = gets.chomp.downcase
 if input == 'a'
 	puts "Please enter a username"
 	createName = gets.chomp
 	puts "Please enter a password"
 	createPassword = gets.chomp
 	puts "Please confirm password"
 	passwordConfirm = gets.chomp
 	while createPassword != passwordConfirm
 		puts "Passwords do not match. PLease try again"
 		puts "Please enter a password"
 		createPassword = gets.chomp
 		puts "Please confirm password"
 		passwordConfirm = gets.chomp
 	end
 	puts "How much would you like to deposit?"
 	deposit = gets.chomp
 	while !(deposit.is_a? Integer)
 		puts "Please enter a number"
 		deposit = gets.chomp.to_i
 	end
 	Accounts@@accounts << Acount.new(createName, createPassword, deposit)
 	puts "Account created! You may now log in."
  else
	puts "Command not regonized"
end
