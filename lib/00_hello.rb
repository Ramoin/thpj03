def ask_first_name
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

#yolo
