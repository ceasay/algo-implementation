# Exercice 12 : Afficher les Mois en Lettres Selon le Numéro Entré

mois = int(input("Entrez le numéro du mois : "))
mois_en_lettres = {
    1: "Janvier",
    2: "Février",
    3: "Mars",
    4: "Avril",
    5: "Mai",
    6: "Juin",
    7: "Juillet",
    8: "Août",
    9: "Septembre",
    10: "Octobre",
    11: "Novembre",
    12: "Décembre"
}

if mois in mois_en_lettres:
    print(mois_en_lettres[mois])
else:
    print("Mois invalide")