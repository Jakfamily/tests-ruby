def add (a, b)
    return a + b
end


def subtract(a, b)
    return a - b
end


def sum(array) 
    return array.sum
end
#sum prend un tableau en entree 
# utilise la methode sum de array pour calculer la somme de tous les element puis ajoute en reduissant a un seul nombre si vide renvoi 0


def multiply(a, b)
    return a * b
end


def power(a, b)
    return a ** b
end


def factorial(n)
   return (1..n).reduce(1,:*)
end

# 1..n objet range represente une sequence de nombre de 1 a n
# reduce reduction de chaque element avec largument 1
#:* symbole ruby  qui represente l'operateur * 
#signifie que la fonction reduce sera un multiplication des element 
# ainsi 1..n.reduce(1,:*) multiplie tous les nombre de 1 a n 