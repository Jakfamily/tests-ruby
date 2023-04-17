def translate(phrase)
  # divise la phrase en mots individuels et les stocke dans un tableau
  words = phrase.split(" ")
  # stocke les voyelles dans un tableau pour une vérification ultérieure
  vowels = ["a", "e", "i", "o", "u"]
  # stocke les résultats de la traduction
  result = []

  # boucle à travers chaque mot dans le tableau des mots
  words.each do |word|
    # le mot commence par une voyelle
    if vowels.include?(word[0].downcase)
      # ajoute le mot suivi de "ay" au résultat
      result << "#{word}ay"
    # le mot commence par un groupe de consonnes
    else
      # initialise un compteur pour la position de la première voyelle
      i = 0
      # tant que nous n'avons pas atteint la fin du mot et que nous ne sommes pas tombés sur une voyelle
      while i < word.length && !vowels.include?(word[i])
        # traite "qu" comme un phonème unique
        if (word[i] == "q" && word[i+1] == "u")
          i += 2
        else
          i += 1
        end
      end
      # ajoute le mot, avec les consonnes initiales déplacées à la fin et suivi de "ay", au résultat
      result << "#{word[i..-1]}#{word[0...i]}ay"
    end
  end

  # gère la capitalisation et la ponctuation
  for i in 0...result.length
    # gère la capitalisation
    if words[i] == words[i].capitalize
      result[i] = result[i].capitalize
    end
    # gère la ponctuation
    if words[i][-1].match(/\p{P}/)
      result[i][-2], result[i][-1] = result[i][-1], result[i][-2]
    end
  end

  # renvoie le résultat sous forme de chaîne unique avec des espaces entre chaque mot
  return result.join(" ")
end
