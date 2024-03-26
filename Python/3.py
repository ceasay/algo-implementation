# Exercice 3 : Permuter le Contenu de Deux Entiers A et B et les Afficher
# Algorithme :
# 1. Entrer le premier entier (A)
# 2. Entrer le deuxième entier (B)
# 3. Permuter les valeurs de A et B
# 4. Afficher les entiers après permutation A et B

a = int(input("Entrez le premier entier : "))
b = int(input("Entrez le deuxième entier : "))
a, b = b, a
print("Après permutation, le premier entier est", a, "et le deuxième entier est", b)