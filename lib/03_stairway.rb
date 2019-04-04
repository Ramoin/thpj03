def jet
  jet = rand(1..6)
  return jet
end


marche = 1


##### boucle while
  while marche < 10 do

  puts " vous êtes à la marche numéro #{marche}"
  lancer = rand(1..6)
  puts "votre lancer de dés est #{lancer} !"

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

#### FIN DU PROGRAMME ###



  ###### AUTRE PROGRAMME AVEC DES IF SIMPLE (moins élégant)


  =begin


  ###### PROGRAMME ####

  def jet
    jet = rand(1..6)
    return jet
  end


  marche = 1

  #lancer = jet
  #puts lancer
  #if lancer == 3 then puts "yeah" else puts "nooo" end

  ##### boucle while
    while marche < 10 do

    puts " vous êtes à la marche numéro #{marche}"
    lancer = rand(1..6)
    puts "votre lancer de dés est #{lancer} !"

    if (lancer == 1)
      marche = marche - 1
      puts "vous reculez"
    end

    if lancer == 5 || lancer == 6
      marche = marche + 1
      puts "vous avancez"
    end

    if lancer == 2 || lancer == 3 || lancer == 4
      marche = marche
      puts "vous ne bougez pas"
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




  =end
