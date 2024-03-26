# Exercice 3 : Permuter le Contenu de Deux Entiers A et B et les Afficher

a = int(input("Entrez le premier entier : "))
b = int(input("Entrez le deuxième entier : "))
a, b = b, a
print("Après permutation, le premier entier est", a, "et le deuxième entier est", b)