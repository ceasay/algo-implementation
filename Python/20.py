# Exercice 20 : Afficher la Table de Multiplication d'un Nombre Entré par l'Utilisateur en Utilisant la Boucle For

nombre = int(input("Entrez un nombre : "))

for i in range(1, 11):
    produit = nombre * i
    print(produit)