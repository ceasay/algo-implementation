# Exercice 10 : Calculer le Prix TTC avec Remise d'un Magasin

prix_hors_tva = float(input("Entrez le prix total hors TVA : "))
if prix_hors_tva > 200:
    remise = 0.15
else:
    remise = 0
prix_ttc = prix_hors_tva * (1 - remise) * 1.2
print("Le prix total TTC est de", prix_ttc, "EUR")