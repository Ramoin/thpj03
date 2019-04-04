def jet
  jet = rand(1..6)
  return jet
end


marche = 1


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

      if (marche == 10)
        puts "BRAVO ET C'EST GAGNEEEEEE"
      end


  end
