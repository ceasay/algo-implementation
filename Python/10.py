# Exercice 10 : Calculer le Prix TTC avec Remise d'un Magasin
# Algorithme :
# 1. Entrer le prix total hors TVA (PrixHorsTVA)
# 2. Si le prix total est supérieur à 200 EUR :
#     3. Appliquer une remise de 15%
# 4. Calculer le prix total avec TVA (PrixTTC) en tenant compte de la remise et de la TVA à 20%
# 5. Afficher le prix total avec TVA (PrixTTC)

prix_hors_tva = float(input("Entrez le prix total hors TVA : "))
if prix_hors_tva > 200:
    remise = 0.15
else:
    remise = 0
prix_ttc = prix_hors_tva * (1 - remise) * 1.2
print("Le prix total TTC est de", prix_ttc, "EUR")