

def pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  etage = gets.chomp.to_i
  base = (etage*2) - 1
  #on remarque que la base permet de travailler sur la répartition entre les espaces et les "#" de la pyramide
  # la base donne le nombre de conteneur contenant soit " " soit "#"
  # la pyramide est un ensemble de lignes avec une répartition de " " et "#" différente
  # space : nombre de " " sur la ligne
  # donc : base = space * le nombre de " " + (base - space) * "#"
  # A CHAQUE ETAGE : L'ESPACE DES " " SE REDUIT DE 2, ET LE NOMBRE DE "#" AUGMENTE DE 2 (et la base ne change pas)
  # donc avec 6 étages, la base fait : 11 conteneurs (avec des espaces ou des "#" dedans)
  # 1er etage : space initial = base - 1 = 10 (5 de chaque coté) et un seul #
  # 2eme etage : space = space - 2 (car +2 # se rajoute à chaque fois) donc 8 (4 de chaque coté) et 2+1 = 3 #
  #3eme etage : space = 8-2 = 6 (3 espace de chaque coté) et 3+2 = 5 #
  space = base - 1
  space_left = space/2
  space_right = space/2
  # donc si le nombre d'étages est 6, par exemple : 5 espace à gauche, # au centre, 5 espace à droite



  for i in 0..(etage-1) do

puts " " * space_left + "#" * (i*2 +1)  + " " * space_right

    space = space - 2
    space_left = space/2
    space_right = space/2




    # si on reste sur 6 etages : 4 espace + 3 # + 4 espace à droite
    # la base reste de 4 + 4 + 3 = 11
    # deuxieme iteration : i = 2 et space = 4-1 = 3
    # on a 3 space + 2*2 + 1 = 5# + 3 space
  end
end



#### WTF PYRAMID ###

def wtf_pyramid
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)"
  etage = gets.chomp.to_i
if etage%2 == 0
   puts "I SAID UN FUCKING NOMBRE IMPAIR BORDEL DE MERDE PUTAAAAAIN ok je me calme..."
else
  base = (etage*2) - 1
  space = base - 1


  space_left = space/2
  space_right = space/2

  0.upto(etage-1) do

puts " " * space_left + "#" * (base-space)  + " " * space_right

    space = space - 2
    space_left = space/2
    space_right = space/2
  end



space = space + 2
space_left = space/2
space_right = space/2

 (etage-1).downto(0) do

puts " " * space_left + "#" * (base-space)  + " " * space_right

  space = space + 2
  space_left = space/2
  space_right = space/2
end

end
end

pyramid
wtf_pyramid
