# Exercice 6 : Ajouter un Commentaire sur une Note Entrée
# Algorithme :
# 1. Entrer une note (Note)
# 2. Si la note est supérieure à 10 :
#     3. Afficher "Validé"
# 4. Sinon :
#     5. Afficher "Non validé"

note = int(input("Entrez une note : "))
if note > 10:
    print("Validé")
else:
    print("Non validé")