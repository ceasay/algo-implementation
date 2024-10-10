# Exercice 15 : Calculer la Somme de 1 à N en Utilisant la Boucle While

N = int(input("Entrez un nombre : "))
somme = 0
i = 1
while i <= N:
    somme += i
    i += 1
print("La somme est :", somme)