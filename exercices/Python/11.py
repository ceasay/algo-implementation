# Exercice 11 : Déterminer la Catégorie d'un Enfant en Fonction de son Âge

age = int(input("Entrez l'âge de l'enfant : "))
if 6 <= age <= 7:
    print("Enfant de 6 à 7 ans")
elif 8 <= age <= 9:
    print("Écolier de 8 à 9 ans")
elif 10 <= age <= 11:
    print("Enfant de 10 à 11 ans")
else:
    print("Cadet après 12 ans")