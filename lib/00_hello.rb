def ask_first_name
	puts "C'est quoi ton blaze ?"
	print ">"
	first_name = gets.chomp 
	return first_name
end

def say_hello(argument)
	puts "Bonjour, #{argument}!"
end

def perform
	variable = ask_first_name
	say_hello (variable)
end

perform

 