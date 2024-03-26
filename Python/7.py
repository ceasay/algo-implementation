# Exercice 7 : Demander Deux Nombres M et N et Informer sur le Signe de leur Produit
# Algorithme :
# 1. Demander à l'utilisateur deux nombres M et N
# 2. Calculer le produit (Produit) de M et N
# 3. Si le Produit est supérieur à 0 :
#     4. Afficher "Positif"
# 5. Sinon, si le Produit est inférieur à 0 :
#     6. Afficher "Négatif"
# 7. Sinon :
#     8. Afficher "Nul"

m = int(input("Entrez le premier nombre : "))
n = int(input("Entrez le deuxième nombre : "))
produit = m * n
if produit > 0:
    print("Positif")
elif produit < 0:
    print("Négatif")
else:
    print("Nul")