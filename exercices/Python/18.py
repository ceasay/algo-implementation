# Exercice 18 : Calculer la Somme de 1 à N en Utilisant la Boucle For

N = int(input("Entrez un nombre : "))
somme = 0
for i in range(1, N + 1):
    somme += i

print("La somme est :", somme)