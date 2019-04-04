def ask_first_name
<<<<<<< HEAD
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp

end


def sayhello(nom)
  puts "Bonjour, #{nom} chez nous on te trouve super sympa!"
end

def perform
  first_name = ask_first_name
  sayhello(first_name)
end

perform
=======
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

 
>>>>>>> 0ec4f7bf7d5fc588134a05d541b3722ce393e4c3
