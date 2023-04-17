def echo(str)
    return str
end
# echo methode prendre une str en entree et la renvoyer telle quelle 

def shout(str)
    return str.upcase
end
# methode shout prend str en entree et renvoie str en maj en sortie 

def repeat(str, n=2)
    # Initialise une variable qui va contenir la chaîne de caractères répétée
    repeated_str = ""
  
    # Répète la chaîne de caractères n fois, en les séparant par des espaces
    n.times do
      repeated_str += str + " "
    end
  
    # Supprime l'espace en trop à la fin de la chaîne de caractères répétée
    repeated_str.strip
  end
  
  
def start_of_word(str, n)
    return str[0,n]
end
# premier parametre str 
# deuxieme indice n (equivaut au nombre)
# return str [0,n] zero etant le parametre par defaut n renveras le numero de la lettre correspondant a lindex demander 

def first_word(str)
    words = str.split(" ")
    return words[0]
end
# .split permet de diviser une str en un tableau de sous_chaine puis on demande lindex pour afficher le premier mots 

def titleize(str)
    little_words = ["and", "the"]
    words = str.split(" ")
    words.each_with_index do |word , i|
        if i==0 || !little_words.include?(word)
            words[i] = word.capitalize
        end
    end
    return words.join(" ")

    return str.capitalize
end
#little words = liste de petit mots a exclure
#words = str.split separe la chaine de caractere en mots
#word.each if donne la condition que si ces le premier mot ou nest pas un petit mot mettre la premiere lettre en maj 
# word.join(" ") rejoin les mot pour former la str 

