def signup
    puts "Définir votre mot de passe"
    print ">"
    mdp = gets.chomp.to_s
end

def welcome_screen
    puts "Bienvenue dans ta zone secrète"
    puts "Macron est un reptilien et Mickael Jackson n’est pas mort"
end

def login(mdp)
    puts "Entrez votre mot de passe"
    print ">"
    essai_mdp = gets.chomp.to_s

  while essai_mdp != mdp
        puts "C’est pas le bon mot de passe wesh"
        puts "Entrez votre mot de passe"
        print ">"
        essai_mdp = gets.chomp.to_s
  end

  welcome_screen
end


def perform
    mdp = signup
    login(mdp)
end

perform
