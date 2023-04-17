def translate(phrase)
  # Divise la phrase en mots
  words = phrase.split(" ")

  # Initialise une liste vide pour stocker les mots traduits
  translated_words = []

  # Pour chaque mot dans la liste de mots
  words.each do |word|
    # Récupère la première lettre et le reste du mot
    first_letter = word[0]
    rest_of_word = word[1..-1]

    # Si le mot commence par une voyelle, ajoute "ay" à la fin
    if ["a", "e", "i", "o", "u"].include?(first_letter.downcase)
      translated_word = word + "ay"
    else
      # Sinon, recherche la première voyelle dans le mot
      vowel_index = word.index(/[aeiou]/)

      # Si le mot contient "qu", considère "qu" comme une consonne et trouve la prochaine voyelle après "qu"
      if word.include?("qu")
        vowel_index = word.index(/[aeiou]/, word.index("qu") + 2)
      end

      # Sépare le mot en consonnes avant la première voyelle et le reste du mot
      consonants = word.slice(0..vowel_index-1)
      rest_of_word = word.slice(vowel_index..-1)

      # Ajoute "ay" à la fin et combine les parties dans le nouveau mot traduit
      translated_word = rest_of_word + consonants + "ay"
    end

    # Si le mot original était en majuscules, met également en majuscules le premier caractère du mot traduit
    if word == word.capitalize
      translated_word = translated_word.capitalize
    end

    # Ajoute le mot traduit à la liste de mots traduits
    translated_words << translated_word
  end

  # Combine les mots traduits en une seule phrase et retourne la phrase traduite
  translated_phrase = translated_words.join(" ")

  # Ajoute la ponctuation à la fin de la phrase traduite si elle est présente dans la phrase d'origine
  if phrase.match?(/[.!?]$/)
    translated_phrase += phrase[-1]
  end

  return translated_phrase
end
