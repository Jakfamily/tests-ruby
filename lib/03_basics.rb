def who_is_bigger(a, b, c)
    return "nil detected" if [a,b,c].include?(nil)
    return "a is bigger" if a > b && a > c
    return "b is bigger" if b > a && b > c
    return "c is bigger" if c > a && c > b
  end
  # include? detecte nil et renvoi phrase
  #compare a > b .... renvoi phrase * 3



def reverse_upcase_noLTA(str)
    return str.reverse.upcase.delete("LTA")
end
#reverse! inverse la str
#upcase! mets en majuscule
#delete! suprime les lettres {ou gsub (/[LTA]/, "")}

def array_42(arr)
    arr.include?(42)
end
# include? permet de verifier si un element et la et renvoir true ou false grace a ?

def magic_array(array)
    array.flatten.uniq.sort.reject { |n| n % 3 == 0 }.map { |n| n * 2 }.sort
end
# n = nombre
# .flatten : tramsforme un tableau multi en simple tableau
# .uniq : supprime chaque duplication de nombre
# .sort : trie le tableau
# .reject { |n| n % 3 == 0 } : supprime chaque multiple de 3
# .map { |n| n * 2 } : multiplie chaque nombre par 2
# .sort : trie le tableau à nouveau

