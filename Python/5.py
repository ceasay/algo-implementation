# Exercice 5 : Afficher le Plus Grand des Trois Entiers Entrés
# Algorithme :
# 1. Entrer le premier entier (Num1)
# 2. Entrer le deuxième entier (Num2)
# 3. Entrer le troisième entier (Num3)
# 4. Trouver le maximum parmi Num1, Num2 et Num3
# 5. Afficher la valeur maximale

num_1 = int(input("Entrez le premier entier : "))
num_2 = int(input("Entrez le deuxième entier : "))
num_3 = int(input("Entrez le troisième entier : "))
max_num = max(num_1, num_2, num_3)
print("Le plus grand des trois entiers est", max_num)