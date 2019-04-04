def jet
  jet = rand(1..6)
  return jet
end



def party

# numéro de la marche initiale (1ère marche, ou alors 0 mais peu important...)
marche = 1
#compteur pour le nombre de lancers de dés pour la moyenne à venir
compteur = 0


##### boucle while
  while marche < 10 do

  puts " vous êtes à la marche numéro #{marche}"
  lancer = jet
  puts "votre lancer de dés est #{lancer} !"

## condition pour savoir si on avance ou pas
  case lancer
  when 1
    puts "vous reculez d'une marche..."
    marche = marche - 1
  when 5, 6
    puts "vous avancez d'une marche super !"
    marche = marche + 1
  else
    puts "vous ne bougez pas ce tour-ci"
    marche = marche
  end

  # test pour que la marche ne soit pas en dessous de 0
      if (marche < 1)
        marche = 1
      end

  # test pour afficher si le jeu se termine



compteur = compteur + 1

  end

# sortie de la boucle while... et victoire

  puts "BRAVO ET C'EST GAGNEEEEEE"
  puts "Vous avez lancé le dé #{compteur} fois"
  compteur = compteur
# ajout du compteur de cette partie au registre



end


  def average_finish_time
    registre = []

    # jouer 100 parties et enregistrer les lancers de dés
    100.times do
      count = party
      registre << count
    end
    print registre
    sum = 0

    # sommer les lancers de dés
    registre.each do |i|
      sum += i
    end

    moyenne = sum/100

    puts " le nombre de lancers de dés est : #{sum}"
    puts " ce qui fait une moyenne sur les 100 parties de #{moyenne} lancers de dés"

  end

average_finish_time
