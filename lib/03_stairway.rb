def pyramid
  puts "Donne le nombre d'étages"
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
  # donc si len ombre d'étages est 6, par exemple : 5 espace à gauche, # au centre, 5 espace à droite
  puts " " * space_left+ "#" + " " * space_right


  for i in 1..etage do

    space = space - 2
    space_left = space/2
    space_right = space/2

    puts " " * space_left + "#" * (i*2 +1)  + " " * space_right


    # si on reste sur 6 etages : 4 espace + 3 # + 4 espace à droite
    # la base reste de 4 + 4 + 3 = 11
    # deuxieme iteration : i = 2 et space = 4-1 = 3
    # on a 3 space + 2*2 + 1 = 5# + 3 space
  end
end

pyramid