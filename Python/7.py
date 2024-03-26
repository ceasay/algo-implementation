# Exercice 7 : Demander Deux Nombres M et N et Informer sur le Signe de leur Produit

m = int(input("Entrez le premier nombre : "))
n = int(input("Entrez le deuxième nombre : "))
produit = m * n
if produit > 0:
    print("Positif")
elif produit < 0:
    print("Négatif")
else:
    print("Nul")