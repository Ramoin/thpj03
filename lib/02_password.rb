puts "Donne un chiffre"
chiffre = gets.to_i


chiffre.downto(0) do
  puts "* " * chiffre
  chiffre -= 1
end
